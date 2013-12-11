library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.parameter_def.all;

architecture behaviour of decoder is
	--persistent signals
	signal packet_num, next_packet_num : unsigned(SizeNumPackets-1 downto 0); --current packet number
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
	decoder_debug_pn <= "0" & std_logic_vector(packet_num);
	decoder_debug_i <= "0" & instruction;
	decoder_debug_c <= "0" & h when instruction = "111" else (others => '0');
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

	decode_comb: process (x, y, w, h, id, color, en, asb, is_init, draw_ready, spi_data_available, spi_data_rx, instruction, packet_num, timeout_count, decoder_can_access)
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
		next_instruction <= instruction;
		next_packet_num <= packet_num;
		next_timeout_count <= timeout_count;
	
		--defaults for non-buffered signals
		int_ready <= '0';
		decoder_write <= '0';
		next_ramdata <= (others => '0');

		--init variables
		done := '0';
		--instruction := instruction;
		
		

		if spi_data_available = '1' then
			--perform action upon data available change
			--logic depending on current packet in stream
			case to_integer(packet_num) is
				when 0 =>
					--deduce instruction
					next_instruction <= spi_data_rx(InstrSize-1 downto 0);
					--start loading next instruction next cycle if instruction is "switch", "fill" or unknown
					if spi_data_rx(InstrSize-1 downto 0) = "000" then
						done := '1';			
						next_asb <= not asb;
					end if;					
				when 1 =>
					if instruction = "111" then
						--sprite loading - save data length and push first two address bits
						next_y <= '0' & spi_data_rx(SizeSPIData-1 downto SizeSPIData-SizeSpriteCounter);
						next_id(SizeSpriteID-1 downto SizeSpriteID-(SizeSPIData-SizeSpriteCounter)) <= spi_data_rx(SizeSPIData-SizeSpriteCounter-1 downto 0);
					else
						--pass through color
						next_color <= spi_data_rx(SizeColor-1 downto 0);
					end if;

					if instruction = "001" then
						--activate "fill" draw-module
						done := '1';
						next_en <= (others => '0');
						next_en(0) <= '1';
						next_is_init <= '0'; --finished all other activity like sprite loading, gpu is ready
					end if;

				when 2 => 
					if instruction = "111" then
						--sprite loading - push other eight address bits
						next_id(SizeSpriteID-(SizeSPIData-SizeSpriteCounter)-1 downto 0) <= spi_data_rx;
					else
						--pass through x coord
						next_x <= spi_data_rx;
					end if;
				when 3 =>
					if instruction = "111" then
						--sprite loading - load it!
						next_ramdata <= spi_data_rx(SizeRAMData-1 downto 0);

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
						--pass through y coord
						next_y <= spi_data_rx(SizeY-1 downto 0);
					end if;

					--start loading next instruction next cycle if instruction is "pixel"
					if instruction = "010" then
						done := '1';
						next_en <= (others => '0');
						next_en(1) <= '1';
					end if;
				when 4 =>
					--pass through width
					next_w <= spi_data_rx;			
				when 5 =>
					if instruction = "110" then
						--pass through sprite packet stream length and 2 msb of sprite id 
						next_h <= '0' & spi_data_rx(SizeSPIData-1 downto SizeSPIData-SizeSpriteCounter);
						next_id(SizeSpriteID-1 downto SizeSpriteID-(SizeSPIData-SizeSpriteCounter)) <= spi_data_rx(SizeSPIData-SizeSpriteCounter-1 downto 0);
					else
						--pass through height
						next_h <= spi_data_rx(SizeY-1 downto 0);
					end if;
					
					--start loading next instruction next cycle if instruction is "square", "fsquare" or "line"
					if instruction = "011" or instruction = "100" or instruction = "101" then
						if instruction = "011" then
							next_en <= (others => '0');
							next_en(2) <= '1';
						elsif instruction = "100" then
							next_en <= (others => '0');
							next_en(3) <= '1';
						elsif instruction = "101" then
							next_en <= (others => '0');
							next_en(4) <= '1';
						end if;
						done := '1';
					end if;
				when 6 =>
					if instruction = "110" then
						--pass through 8 lsb of sprite id and enable sprite drawing
						next_id(SizeSpriteID-(SizeSPIData-SizeSpriteCounter)-1 downto 0) <= spi_data_rx;
						done := '1';
						next_en <= (others => '0');
						next_en(5) <= '1';
					end if;
				when others =>

			end case;

			--reset packet count when instruction is processed, or retain current packet count to keep loading sprites
			if done = '1' then
				next_packet_num <= (others => '0');				
			elsif to_integer(packet_num) = 3 and instruction = "111" then
				next_packet_num <= packet_num;
			else
				next_packet_num <= packet_num + 1;
			end if;

			--reset timeout
			next_timeout_count <= (others => '1');
		else
			--if timeout_count = 0 then
				--fire int_ready to force new instruction
			--	next_timeout_count <= (others => '1');
			--	next_packet_num <= (others => '0');
			--	int_ready <= '1';
			--elsif packet_num /= 0 then
				--update timeout
			--	next_timeout_count <= timeout_count - 1;
			--	next_packet_num <= packet_num;
			--else
			--	next_timeout_count <= timeout_count;
			--	next_packet_num <= packet_num;
			--end if;
		end if;
		
		if draw_ready = '1' or (done = '1' and (instruction = "111" or spi_data_rx(InstrSize-1 downto 0) = "000")) then
			--disable all draw modules
			next_en <= (others => '0');
			--inform CPU
			int_ready <= '1';		
		else
			int_ready <= '0';
		end if;
		--update instruction		
	end process;

end behaviour;