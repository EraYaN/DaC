library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.parameter_def.all;

architecture behaviour of decoder is
	--persistent signals
	signal packet_num : unsigned(MaxNumPackets-1 downto 0);
	signal instruction : std_logic_vector(InstrSize-1 downto 0);
begin
	--synchronizer + input buffer + output buffer + state change
	decoder1: process (clk)
		variable done : std_logic;
		variable instr : std_logic_vector(InstrSize-1 downto 0);
		variable packet : unsigned(MaxNumPackets-1 downto 0);
	begin
		if rising_edge(clk) then
			--defaults
			int_ready <= '0';
			if reset = '1' then
				--reset all registers
				--dav_latched <= '0';
				--dav_old <= '0';
				packet_num <= (others => '0');
				instruction <= (others => '0');
				color <= (others => '0');
				x <= (others => '0');
				y <= (others => '0');
				w <= (others => '0');
				h <= (others => '0');
				en <= (others => '0');
				asb <= '0';
				decoder_claim <= '0';
				decoder_write <= '0';
				is_init <= '1';

			else
				if draw_ready = '1' then
					--disable all draw modules
					en <= (others => '0');
					--inform CPU
					int_ready <= '1';					
				end if;
				if spi_data_available = '1' then
					--perform action upon data available change
					--init variables
					done := '0';
					instr := instruction;
					packet := packet_num;

					--logic depending on current packet in stream
					case to_integer(packet) is
						when 0 =>
							if instr = "1010" then
								--multicolor sprite loading subroutine
								
							else
								--deduce instruction
								instr := spi_data_rx(SizeSPIData-1 downto SizeColor);
								--start loading next instruction next cycle if instruction is "switch", "fill" or unknown
								if (instr = "0000" or instr = "0001" or instr > "0110") then
									done := '1';
									if instr = "0001" then
										--activate "fill" draw-module
										en <= (others => '0');
										en(0) <= '1';
										is_init <= '0';
									elsif instr = "0000" then
										--switch screen buffer
										asb <= not asb;
										int_ready <= '1';
									end if;
								end if;
								--pass through color
								color <= spi_data_rx(SizeColor-1 downto 0);
							end if;
						when 1 => 
							--pass through x coord
							x <= spi_data_rx;
						when 2 => 
							--pass through y coord
							y <= spi_data_rx(SizeY-1 downto 0);
							---start loading next instruction next cycle if instruction is "pixel"
							if instr = "0010" then
								done := '1';
								en <= (others => '0');
								en(1) <= '1';
							end if;
						when 3 =>
							--pass through w coord
							w <= spi_data_rx;
							--start loading next instruction next cycle if instruction is "circle"
							if instr = "0110" then
								done := '1';
								en <= (others => '0');
								en(5) <= '1';
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

					--reset packet count when instruction is processed
					if done = '1' then
						packet := (others => '0');
					else
						packet := packet_num + 1;
					end if;

					--update instruction and packet count signals
					packet_num <= packet;
					instruction <= instr;
				end if;
			end if;
		end if;
	end process;
end behaviour;