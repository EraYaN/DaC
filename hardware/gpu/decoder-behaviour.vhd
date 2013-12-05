library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.parameter_def.all;

architecture behaviour of decoder is
	--persistent signals
	signal packet_num : unsigned(MaxNumPackets-1 downto 0); --current packet number
	signal instruction : std_logic_vector(InstrSize-1 downto 0);

	signal next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);
begin
	--"asynchronous" RAM interaction
	ramaddr <= x & w when decoder_write = '1' else (others => 'Z');
	ramdata <= next_ramdata when decoder_write = '1' else (others => 'Z');

	--synchronizer + input buffer + output buffer + state change
	decode: process (clk)
		variable done : std_logic;
		variable instr : std_logic_vector(InstrSize-1 downto 0);
	begin
		if rising_edge(clk) then
			if reset = '1' then
				--reset all registers
				packet_num <= (others => '0');
				instruction <= (others => '0');
				color <= (others => '0');
				x <= (others => '0');
				y <= (others => '0');
				w <= (others => '0');
				h <= (others => '0');
				en <= (others => '0');
				asb <= '0';
				int_ready <= '0';
				decoder_write <= '0';
				is_init <= '1';
				next_ramdata <= (others => '0');
			else
				--defaults
				next_ramdata <= (others => '0');
				decoder_write <= '0';
				is_init <= '0';

				if draw_ready = '1' then
					--disable all draw modules
					en <= (others => '0');
					--inform CPU
					int_ready <= '1';		
				else
					int_ready <= '0';		
				end if;

				if spi_data_available = '1' or h(0) = '1' then
					--perform action upon data available change
					--init variables
					done := '0';
					instr := instruction;

					--logic depending on current packet in stream
					case to_integer(packet_num) is
						when 0 =>
							--deduce instruction
							instr := spi_data_rx(SizeSPIData-1 downto SizeColor);
							--start loading next instruction next cycle if instruction is "switch", "fill" or unknown
							if (instr = "0000" or instr = "0001" or instr > "0111") then
								done := '1';
								if instr = "0001" then
									--activate "fill" draw-module
									en <= (others => '0');
									en(0) <= '1';
									is_init <= '0'; --finished all other activity like sprite loading, gpu is ready
								elsif instr = "0000" then
									--switch screen buffer
									asb <= not asb;
								end if;
							end if;
							--pass through color
							color <= spi_data_rx(SizeColor-1 downto 0);
						when 1 =>
							if instr = "0111" then
								--sprite loading - save data length and push first two address bits
								y <= '0' & spi_data_rx(SizeSPIData-1 downto SizeSPIData-SizeSpriteCounter);
								--misuse currently unused registers to buffer data
								x(SizeX-1 downto SizeX-(SizeSPIData-SizeSpriteCounter)) <= spi_data_rx(SizeSPIData-SizeSpriteCounter-1 downto 0);
							else
								--pass through x coord
								x <= spi_data_rx;
							end if;
						when 2 => 
							if instr = "0111" then
								--sprite loading - push other eight address bits, again in other unused registers
								x(SizeX-(SizeSPIData-SizeSpriteCounter)-1 downto 0) <= spi_data_rx(SizeSPIData-1 downto SizeSPIData-SizeSpriteCounter);
								w(SizeX-1 downto SizeX-(SizeSPIData-SizeSpriteCounter)) <= spi_data_rx(SizeSPIData-SizeSpriteCounter-1 downto 0);
							else
								--pass through y coord
								y <= spi_data_rx(SizeY-1 downto 0);
								---start loading next instruction next cycle if instruction is "pixel"
								if instr = "0010" then
									done := '1';
									en <= (others => '0');
									en(1) <= '1';
								end if;
							end if;
						when 3 =>
							if instr = "0111" then
								--sprite loading - load it!
								--assemble last piece of address in existing reg
								w(SizeSpriteCounter-1 downto 0) <= h(SizeSpriteCounter-1 downto 0);
								if h(0) = '0' then
									--new SPI data is available, put half of it on RAM, cache the other half in color reg
									next_ramdata <= spi_data_rx(SizeSPIData-1 downto SizeRAMData);
									color <= spi_data_rx(SizeRAMData-1 downto 0);
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
										h <= std_logic_vector(unsigned(h) + 1);
									end if;
								end if;
							else
								--pass through w coord
								w <= spi_data_rx;
								--start loading next instruction next cycle if instruction is "circle"
								if instr = "0110" then
									done := '1';
									en <= (others => '0');
									en(5) <= '1';
								end if;
							end if;
						when 4 =>
							--pass through h coord
							h <= spi_data_rx(SizeY-1 downto 0);
							--start loading next instruction next cycle if instruction is "square", "fsquare" or "line"
							if (instr = "0011" or instr = "0100" or instr = "0101") then
								if instr = "0011" then
									en <= (others => '0');
									en(2) <= '1';
								elsif instr = "0100" then
									en <= (others => '0');
									en(3) <= '1';
								elsif instr = "0101" then
									en <= (others => '0');
									en(4) <= '1';
								end if;
								done := '1';
							end if;
						when others =>

					end case;

					--reset packet count when instruction is processed, or retain current packet count to keep loading sprites
					if done = '1' then
						packet_num <= (others => '0');
						h <= (others => '0');
						if instr = "0111" or instr = "0000" then
							int_ready <= '1'; --notify CPU
						end if;
					elsif to_integer(packet_num) = 3 and instr = "0111" then
						packet_num <= packet_num;
					else
						packet_num <= packet_num + 1;
					end if;

					--update instruction and packet count signals
					instruction <= instr;
				end if;
			end if;
		end if;
	end process;
end behaviour;