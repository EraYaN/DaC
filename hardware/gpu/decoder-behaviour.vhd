library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.parameter_def.all;

architecture behaviour of decoder is
	--persistent signals
	signal packet_num, next_packet_num : unsigned(MaxNumPackets-1 downto 0); --current packet number
	signal instruction, next_instruction : std_logic_vector(InstrSize-1 downto 0); --current instruction
	signal timeout_count, next_timeout_count : unsigned(SizeTimeoutCounter-1 downto 0);
	signal next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);

	signal next_x, next_w : std_logic_vector(SizeX-1 downto 0);
	signal next_y, next_h : std_logic_vector(SizeY-1 downto 0);
	signal next_id : std_logic_vector(SizeSpriteID-1 downto 0);
	signal next_color : std_logic_vector(SizeColor-1 downto 0);
	signal next_en : std_logic_vector(NumDrawModules-1 downto 0);
	signal next_is_init, next_asb : std_logic;
begin
	--"asynchronous" RAM interaction
	decoder_claim <= '1' when is_init = '1' else '0';
	ramaddr <= id & h(SizeSpriteCounter-1 downto 0) when decoder_write = '1' else (others => 'Z');
	ramdata <= next_ramdata when decoder_write = '1' else (others => 'Z');

	--synchronizer + input buffer + output buffer + state change
	decode_seq: process (clk)
		
	begin
		if rising_edge(clk) then
			if reset = '1' then
				--reset all registers
				packet_num <= (others => '0');
				timeout_count <= (others => '1');
				instruction <= (others => '0');
				x <= (others => '0');
				y <= (others => '0');
				w <= (others => '0');
				h <= (others => '0');
				id <= (others => '0');
				color <= (others => '0');
				en <= (others => '0');
				asb <= '0';
				is_init <= '1';
			else
				--update all registers
				packet_num <= next_packet_num;
				timeout_count <= next_timeout_count;
				instruction <= next_instruction;
				x <= next_x;
				y <= next_y;
				w <= next_w;
				h <= next_h;
				id <= next_id;
				color <= next_color;
				en <= next_en;
				asb <= next_asb;
				is_init <= next_is_init;
			end if;		
		end if;
	end process;

	decode_comb: process (x, y, w, h, id, color, en, asb, is_init, draw_ready, spi_data_available, spi_data_rx, instruction, packet_num, timeout_count)
		variable done : std_logic;
		variable instr : std_logic_vector(InstrSize-1 downto 0);
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
		next_instruction <= instruction;
		next_packet_num <= packet_num;
		next_timeout_count <= timeout_count;
	
		--defaults for non-buffered signals
		int_ready <= '0';
		decoder_write <= '0';
		next_ramdata <= (others => '0');

		--init variables
		done := '0';
		instr := instruction;

		if draw_ready = '1' then
			--disable all draw modules
			next_en <= (others => '0');
			--inform CPU
			int_ready <= '1';		
		else
			int_ready <= '0';
		end if;

		if spi_data_available = '1' or (instruction = "111" and h(0) = '1') then
			--perform action upon data available change
			--logic depending on current packet in stream
			case to_integer(packet_num) is
				when 0 =>
					--deduce instruction
					instr := spi_data_rx(SizeSPIData-2 downto SizeSPIData/2);
					--start loading next instruction next cycle if instruction is "switch", "fill" or unknown
					if (instr = "000" or instr = "001" or instr > "111") then
						done := '1';
						if instr = "001" then
							--activate "fill" draw-module
							next_en <= (others => '0');
							next_en(0) <= '1';
							next_is_init <= '0'; --finished all other activity like sprite loading, gpu is ready
						elsif instr = "000" then
							--switch screen buffer
							next_asb <= not asb;
						end if;
					end if;
					--pass through color
					next_color <= spi_data_rx(SizeColor-1 downto 0);
				when 1 =>
					if instr = "111" then
						--sprite loading - save data length and push first two address bits
						next_y <= '0' & spi_data_rx(SizeSPIData-1 downto SizeSPIData-SizeSpriteCounter);
						next_id(SizeSpriteID-1 downto SizeSpriteID-(SizeSPIData-SizeSpriteCounter)) <= spi_data_rx(SizeSPIData-SizeSpriteCounter-1 downto 0);
					else
						--pass through x coord
						next_x <= spi_data_rx;
					end if;
				when 2 => 
					if instr = "111" then
						--sprite loading - push other eight address bits
						next_id(SizeSpriteID-(SizeSPIData-SizeSpriteCounter)-1 downto 0) <= spi_data_rx;
					else
						--pass through y coord
						next_y <= spi_data_rx(SizeY-1 downto 0);
						---start loading next instruction next cycle if instruction is "pixel"
						if instr = "010" then
							done := '1';
							next_en <= (others => '0');
							next_en(1) <= '1';
						end if;
					end if;
				when 3 =>
					if instr = "111" then
						--sprite loading - load it!
						--assemble last piece of address in existing reg
						next_w(SizeSpriteCounter-1 downto 0) <= h(SizeSpriteCounter-1 downto 0);
						if h(0) = '0' then
							--new SPI data is available, put half of it on RAM, cache the other half in color reg
							next_ramdata <= spi_data_rx(SizeSPIData-2 downto SizeSPIData/2);
							next_color <= spi_data_rx(SizeRAMData-1 downto 0);
						else
							--put the last half of SPI data on RAM
							next_ramdata <= color;
						end if;

						if decoder_can_access = '1' then
							--if RAM can be accessed at this time, enable data writing, if not, try again next tick (although things are probably broken if this happens)
							decoder_write <= '1';

							if (unsigned(h) + 1) = unsigned(y) then
								done := '1';
							else
								next_h <= std_logic_vector(unsigned(h) + 1);
							end if;
						end if;
					else
						--pass through width
						next_w <= spi_data_rx;
					end if;
				when 4 =>
					if instr /= "110" then
						--pass through height
						next_h <= spi_data_rx(SizeY-1 downto 0);
					else
						--pass through sprite packet stream length and 2 msb of sprite id 
						next_h <= spi_data_rx(SizeSPIData-1 downto SizeSPIData-SizeSpriteCounter) & '0';
						next_id(SizeSpriteID-1 downto SizeSpriteID-(SizeSPIData-SizeSpriteCounter)) <= spi_data_rx(SizeSPIData-SizeSpriteCounter-1 downto 0);
					end if;
					--start loading next instruction next cycle if instruction is "square", "fsquare" or "line"
					if instr = "011" or instr = "100" or instr = "101" then
						if instr = "011" then
							next_en <= (others => '0');
							next_en(2) <= '1';
						elsif instr = "100" then
							next_en <= (others => '0');
							next_en(3) <= '1';
						elsif instr = "101" then
							next_en <= (others => '0');
							next_en(4) <= '1';
						end if;
						done := '1';
					end if;
				when 5 =>
					--pass through 8 lsb of sprite id and enable sprite drawing
					next_id(SizeSpriteID-(SizeSPIData-SizeSpriteCounter)-1 downto 0) <= spi_data_rx;
					done := '1';
					next_en <= (others => '0');
					next_en(5) <= '1';
				when others =>

			end case;

			--reset packet count when instruction is processed, or retain current packet count to keep loading sprites
			if done = '1' then
				next_packet_num <= (others => '0');
				if instr = "111" or instr = "000" then
					int_ready <= '1'; --notify CPU
				end if;
			elsif to_integer(packet_num) = 3 and instr = "111" then
				next_packet_num <= packet_num;
			else
				next_packet_num <= packet_num + 1;
			end if;

			--reset timeout
			next_timeout_count <= (others => '1');
		elsif is_init = '0' then
			if timeout_count = 0 then
				--fire int_ready to force new instruction
				next_timeout_count <= (others => '1');
				next_packet_num <= (others => '0');
				int_ready <= '1';
			elsif packet_num /= 0 then
				--update timeout
				next_timeout_count <= timeout_count - 1;
				next_packet_num <= packet_num;
			else
				next_timeout_count <= timeout_count;
				next_packet_num <= packet_num;
			end if;
		end if;

		--update instruction
		next_instruction <= instr;
	end process;

end behaviour;