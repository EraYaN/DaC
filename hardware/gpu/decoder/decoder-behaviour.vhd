library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.parameter_def.ALL;

architecture behaviour of decoder is
	--SPI sync signals
	signal dav_latched, dav_old : std_logic;

	--persistent signals
	signal packet_num : unsigned(MaxNumPackets-1 downto 0);
	signal instruction : std_logic_vector(InstrSize-1 downto 0);
	
begin
	--synchronizer + input buffer + output buffer + state change
	process (clk)
		variable done : std_logic;
		variable instr : std_logic_vector(InstrSize-1 downto 0);
		variable packet : unsigned(MaxNumPackets-1 downto 0);
	begin
		if rising_edge(clk) then
			--defaults
			reg_id <= '0';
			reg_value <= '0';
			reg_set <= '0';
			
			if reset = '1' then
				--reset all registers
				dav_latched <= '0';
				dav_old <= '0';
				packet_num <= (others => '0');
				instruction <= (others => '0');
				color <= (others => '0');
				x <= (others => '0');
				y <= (others => '0');
				w <= (others => '0');
				h <= (others => '0');
				en <= (others => '0');
				reg_id <= '0';
				reg_value <= '0';
				reg_set <= '0';
			else
				--synchronize data available flag
				dav_latched <= spi_data_available;
				dav_old <= dav_latched;

				if draw_ready = '1' then
					--disable all draw modules
					en <= (others => '0');
				elsif dav_latched = '1' and dav_old = '0' then
					--perform action upon data available change
					--init variables
					done := '0';
					instr := instruction;
					packet := packet_num;
					
					--logic depending on current packet in stream
					case to_integer(packet) is
						when 0 =>
							--deduce instruction
							instr := spi_data_rx(SizeSPIData-1 downto SizeColor);
							--start loading next instruction next cycle if instruction is "fill", "switch" or unknown
							if (instr = "0000" or instr = "0001" or instr > "0110") then
								done := '1';
								if instr = "0000" then
									--activate "fill" draw-module
									en(0) <= '1';
									en <= (others => '0');
									en(0) <= '1';
								elsif instr = "0001" then
									reg_value <= not asb;
									reg_set <= '1';
								end if;
							end if;
							--pass through color
							color <= spi_data_rx(SizeColor-1 downto 0);
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