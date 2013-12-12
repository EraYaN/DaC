library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.parameter_def.all;

architecture behaviour of decoder is
	type instruction is (none, switch, sreset, pixel, rect, frect, line, sprite, lsprite);

	--persistent signals
	signal packet_num, next_packet_num : unsigned(SizeNumPackets-1 downto 0); --current packet number
	signal current_instruction, next_instruction : instruction; --current instruction
	--signal timeout_count, next_timeout_count : unsigned(SizeTimeoutCounter-1 downto 0);
	signal next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);

	signal next_x, next_w : std_logic_vector(SizeX-1 downto 0);
	signal next_y, next_h : std_logic_vector(SizeY-1 downto 0);
	signal next_id : std_logic_vector(SizeSpriteID-1 downto 0);
	signal next_color : std_logic_vector(SizeColor-1 downto 0);
	signal next_en : std_logic_vector(NumDrawModules-1 downto 0);
	signal next_int_ready, next_is_init, next_asb : std_logic;

begin
	--"asynchronous" RAM interaction
	decoder_claim <= '0';
	ramaddr <= id & h(SizeSpriteCounter-1 downto 0) when decoder_write = '1' else (others => 'Z');
	ramdata <= next_ramdata when decoder_write = '1' else (others => 'Z');
	--debug shit
	decoder_debug_pn <= (others => '0');
	decoder_debug_i <= (others => '0');
	decoder_debug_c <= (others => '0');

	--synchronizer + input buffer + output buffer + state change
	decode_seq: process (clk)	
	begin
		if rising_edge(clk) then
			if reset = '1' then
				--reset all registers
				packet_num <= (others => '0');
				--timeout_count <= (others => '1');
				current_instruction <= none;
				x <= (others => '0');
				y <= (others => '0');
				w <= (others => '0');
				h <= (others => '0');
				id <= (others => '0');
				color <= (others => '0');
				en <= (others => '0');
				asb <= '0';
				is_init <= '1';
				int_ready <= '1';
			else
				--update all registers
				packet_num <= next_packet_num;
				--timeout_count <= next_timeout_count;
				current_instruction <= next_instruction;
				x <= next_x;
				y <= next_y;
				w <= next_w;
				h <= next_h;
				id <= next_id;
				color <= next_color;
				en <= next_en;
				asb <= next_asb;
				is_init <= next_is_init;
				int_ready <= next_int_ready;
			end if;		
		end if;
	end process;

	decode_comb: process (x, y, w, h, id, color, en, asb, is_init, int_ready, draw_ready, spi_data_available, spi_data_rx, current_instruction, packet_num, decoder_can_access)
		variable done : std_logic;		
	begin
		--defaults for buffered signals
		next_x <= x;
		next_y <= y;
		next_w <= w;
		next_h <= h;
		next_id <= id;
		next_color <= color;
		next_en <= en;
		next_asb <= asb;
		next_is_init <= is_init;
		next_int_ready <= int_ready;
		next_instruction <= current_instruction;
		next_packet_num <= packet_num;
		--next_timeout_count <= timeout_count;
	
		--defaults for non-buffered signals
		decoder_write <= '0';
		next_ramdata <= (others => '0');
		soft_reset <= '0';

		--init variables
		done := '0';

		--action depending on state
		if spi_data_available = '1' then
			next_int_ready <= '0';
			--next_timeout_count <= (others => '1');
			if current_instruction = none then
				if packet_num = 0 then
					--determine next instruction
					if spi_data_rx(InstrSize-1 downto 0) = "000" then
						next_asb <= not asb;
						done := '1';
						next_int_ready <= '1'; --inform CPU we're ready
						next_instruction <= none; 
					elsif spi_data_rx(InstrSize-1 downto 0) = "001" then
						soft_reset <= '1';
						done := '1';
						next_int_ready <= '1';
						next_instruction <= none;
					elsif spi_data_rx(InstrSize-1 downto 0) = "010" then 
						next_instruction <= pixel;
					elsif spi_data_rx(InstrSize-1 downto 0) = "011" then 
						next_instruction <= rect;
					elsif spi_data_rx(InstrSize-1 downto 0) = "100" then 
						next_instruction <= frect;
					elsif spi_data_rx(InstrSize-1 downto 0) = "101" then 
						next_instruction <= line;
					--elsif spi_data_rx(InstrSize-1 downto 0) = "110" then 
					--	next_instruction <= sprite;
					--elsif spi_data_rx(InstrSize-1 downto 0) = "111" then 
					--	next_instruction <= lsprite;
					else
						next_instruction <= none;
					end if;
				else
					done := '1';
					next_instruction <= none;
					next_int_ready <= '1';
				end if;

				if spi_data_rx(InstrSize-1 downto 0) /= "111" then
					next_is_init <= '0';
				end if;
			elsif current_instruction = pixel then
				if packet_num = 1 then
					next_color <= spi_data_rx(SizeColor-1 downto 0);
				elsif packet_num = 2 then
					next_x <= spi_data_rx(SizeX-1 downto 0);
				elsif packet_num = 3 then
					next_y <= spi_data_rx(SizeY-1 downto 0);
					--done
					done := '1';
					next_instruction <= none;
					next_en(0) <= '1';
				else
					--shit broke
					done := '1';
					next_instruction <= none;
					next_int_ready <= '1';
				end if;

			elsif current_instruction = rect or current_instruction = frect or current_instruction = line then
				if packet_num = 1 then
					next_color <= spi_data_rx(SizeColor-1 downto 0);
				elsif packet_num = 2 then
					next_x <= spi_data_rx(SizeX-1 downto 0);
				elsif packet_num = 3 then
					next_y <= spi_data_rx(SizeY-1 downto 0);
				elsif packet_num = 4 then
					next_w <= spi_data_rx(SizeX-1 downto 0);
				elsif packet_num = 5 then
					next_h <= spi_data_rx(SizeY-1 downto 0);
					--done
					done := '1';
					next_instruction <= none;
					if current_instruction = rect then
						next_en(1) <= '1';
					elsif current_instruction = frect then
						next_en(2) <= '1';
					elsif current_instruction = line then
						next_en(3) <= '1';
					end if;
				else
					--shit broke
					done := '1';
					next_instruction <= none;
					next_int_ready <= '1';
				end if;
			elsif current_instruction = none then
				--shit broke
				done := '1';
				next_int_ready <= '1';
			end if;

			if done = '0' then
				next_packet_num <= packet_num + 1;
			else
				next_packet_num <= (others => '0');
			end if;

		elsif draw_ready = '1' then
			next_en <= (others => '0');
			next_int_ready <= '1';
		elsif int_ready = '1' then
			-- if timeout_count /= 0 then
			-- 	next_timeout_count <= timeout_count - 1;
			-- else
			-- 	next_timeout_count <= (others => '1');
			-- 	shit broke
			-- 	next_packet_num <= (others => '0');
			-- 	next_instruction <= none;
			-- 	next_int_ready <= '1';
			-- end if;
		end if;
	end process;

end behaviour;