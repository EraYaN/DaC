library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.parameter_def.all;

architecture behaviour of decoder is
	type instruction is (i_none, i_switch, i_reset, i_pixel, i_rect, i_frect, i_line, i_sprite, i_lsprite);
	attribute enum_encoding : string;
	attribute enum_encoding of instruction : type is "sequential";

	--state signals and regs
	signal packet_num, next_packet_num : unsigned(SizeNumPackets-1 downto 0); --current packet number
	signal current_instruction, next_instruction : instruction; --current instruction
	signal timeout_count, next_timeout_count : unsigned(SizeTimeoutCounter-1 downto 0);
	signal prev_spi_data_available, next_prev_spi_data_available : std_logic;

	--output registers
	signal next_x, next_w : std_logic_vector(SizeX-1 downto 0);
	signal next_y, next_h : std_logic_vector(SizeY-1 downto 0);
	signal next_id : std_logic_vector(SizeSpriteID-1 downto 0);
	signal next_color : std_logic_vector(SizeColor-1 downto 0);
	signal next_en : std_logic_vector(NumDrawModules-1 downto 0);
	signal next_int_ready, next_is_init, next_asb : std_logic;
	signal next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);

begin
	--"asynchronous" RAM interaction
	decoder_claim <= is_init;
	ramaddr <= id & h(SizeSpriteCounter-1 downto 0) when decoder_write = '1' else (others => 'Z');
	ramdata <= next_ramdata when decoder_write = '1' else (others => 'Z');
	--debug shit
	decoder_debug_pn <= '0' & std_logic_vector(packet_num);
	decoder_debug_i <= std_logic_vector(to_unsigned(instruction'pos(current_instruction ), decoder_debug_i'length));
	decoder_debug_c <= std_logic_vector(timeout_count(24 downto 17));

	--synchronizer + input buffer + output buffer + state change
	decode_seq: process (clk)	
	begin
		if rising_edge(clk) then
			if reset = '1' then
				--reset all registers
				packet_num <= (others => '0');
				timeout_count <= (others => '0');
				current_instruction <= i_none;
				prev_spi_data_available <= '0';
				x <= (others => '0');
				y <= (others => '0');
				w <= (others => '0');
				h <= (others => '0');
				id <= (others => '0');
				color <= (others => '0');
				en <= (others => '0');
				asb <= '0';
				is_init <= '1';
				int_ready <= '0';
			else
				--update all registers
				packet_num <= next_packet_num;
				timeout_count <= next_timeout_count;
				current_instruction <= next_instruction;
				prev_spi_data_available <= next_prev_spi_data_available;
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

	decode_comb: process (x, y, w, h, id, color, en, asb, is_init, int_ready, draw_ready, spi_data_available, spi_data_rx, current_instruction, packet_num, decoder_can_access, timeout_count)
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
		next_timeout_count <= timeout_count;
	
		--defaults for non-buffered signals
		decoder_write <= '0';
		next_ramdata <= (others => '0');
		soft_reset <= '0';

		--init variables
		done := '0';

		--buffer spi_data_available flag
		next_prev_spi_data_available <= spi_data_available;

		--action depending on state
		if (spi_data_available = '1' and prev_spi_data_available = '0') or current_instruction = i_switch or current_instruction = i_reset then
			next_int_ready <= '0';
			next_timeout_count <= (others => '0');
			
			if current_instruction = i_none then
				if packet_num = 0 then
					--determine next instruction
					if spi_data_rx(SizeSPIData-1 downto InstrSize) = (SizeSPIData-InstrSize-1 downto 0 => '0') then
						if spi_data_rx(InstrSize-1 downto 0) = "000" then
							 next_instruction <= i_switch;
						elsif spi_data_rx(InstrSize-1 downto 0) = "001" then
							next_instruction <= i_reset;
						elsif spi_data_rx(InstrSize-1 downto 0) = "010" then 
							next_instruction <= i_pixel;
						elsif spi_data_rx(InstrSize-1 downto 0) = "011" then 
							next_instruction <= i_rect;
						elsif spi_data_rx(InstrSize-1 downto 0) = "100" then 
							next_instruction <= i_frect;
						elsif spi_data_rx(InstrSize-1 downto 0) = "101" then 
							next_instruction <= i_line;
						--elsif spi_data_rx(InstrSize-1 downto 0) = "110" then 
						--	next_instruction <= sprite;
						--elsif spi_data_rx(InstrSize-1 downto 0) = "111" then 
						--	next_instruction <= lsprite;
						else
							done := '1';
							next_int_ready <= '1';
						end if;
					else
						done := '1';
						next_int_ready <= '1';
					end if;
					
				else
					done := '1';
					next_int_ready <= '1';
				end if;

				if spi_data_rx(InstrSize-1 downto 0) /= "111" then
					next_is_init <= '0';
				end if;

			elsif current_instruction = i_switch then
				next_asb <= not asb;
				done := '1';
				next_int_ready <= '1';
			elsif current_instruction = i_reset then
				soft_reset <= '1';
				done := '1';
				next_timeout_count <= (others => '0');
				next_x <= (others => '0');
				next_y <= (others => '0');
				next_w <= (others => '0');
				next_h <= (others => '0');
				next_id <= (others => '0');
				next_color <= (others => '0');
				next_en <= (others => '0');
				next_int_ready <= '1';
			elsif current_instruction = i_pixel then
				if packet_num = 1 then
					next_color <= spi_data_rx(SizeColor-1 downto 0);
				elsif packet_num = 2 then
					next_x <= spi_data_rx(SizeX-1 downto 0);
				elsif packet_num = 3 then
					next_y <= spi_data_rx(SizeY-1 downto 0);
					--done
					done := '1';
					next_en(0) <= '1';
				else
					--shit broke
					done := '1';
					next_int_ready <= '1';
				end if;

			elsif current_instruction = i_rect or current_instruction = i_frect or current_instruction = i_line then
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
					if current_instruction = i_rect then
						next_en(1) <= '1';
					elsif current_instruction = i_frect then
						next_en(2) <= '1';
					elsif current_instruction = i_line then
						next_en(3) <= '1';
					end if;
				else
					--shit broke
					done := '1';
					next_int_ready <= '1';
				end if;
			elsif current_instruction = i_none then
				--shit broke
				done := '1';
				next_int_ready <= '1';
			end if;

			if done = '0' then
				next_packet_num <= packet_num + 1;
			else
				next_packet_num <= to_unsigned(0,SizeNumPackets);
				next_instruction <= i_none;
			end if;

		elsif draw_ready = '1' then
			next_timeout_count <= (others => '0');
			next_en <= (others => '0');
			next_int_ready <= '1';
			next_packet_num <= to_unsigned(0,SizeNumPackets);
			next_instruction <= i_none;
		elsif packet_num /= 0 then
			if timeout_count < TimeoutCount then
				next_timeout_count <= timeout_count + 1;
			else
				next_timeout_count <= (others => '0');
				-- shit broke
				next_en <= (others => '0');
				next_packet_num <= (others => '0');
				next_instruction <= i_none;
				next_int_ready <= '1';
			end if;
		end if;
	end process;

end behaviour;