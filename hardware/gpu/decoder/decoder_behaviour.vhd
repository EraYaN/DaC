library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.parameter_def.ALL;

architecture behaviour of decoder is
	signal packet_num : unsigned(MaxNumInstrPackets-1 downto 0);
	signal instruction : std_logic_vector(InstrSize-1 downto 0);

	signal sendready, reg_value, reg_id, reg_set : std_logic;
	signal data_out : std_logic_vector(InstrPacketSize-1 downto 0);
	signal draw_x0, draw_x1 : std_logic_vector(SizeX-1 downto 0);
	signal draw_y0, draw_y1 : std_logic_vector(SizeY-1 downto 0);
	signal draw_color : std_logic_vector(SizeColor-1 downto 0);
	signal draw_enabled : std_logic_vector(NumDrawModules-1 downto 0);
	
begin
	--Receiving/processing data from SPI-interface
	process (dav, di, clk, rst)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				packet_num <= (others => '0');
				instruction <= (others => '0');
				col <= (others => '0');
				x0 <= (others => '0');
				y0 <= (others => '0');
				x1 <= (others => '0');
				y1 <= (others => '0');
			elsif (dav = '1' and dav'event) then
				case to_integer(packet_num) is
					when 0 =>
						--deduce instruction
						instruction <= di(InstrPacketSize-1 downto SizeColor);
						--enable loading new instruction if required
						if (instruction = "0000" or instruction = "0001") then
							packet_num <= to_unsigned(0, packet_num'length);
						end if;
						--pass through color
						col <= di(SizeColor-1 downto 0);
					when 1 => 
						--pass through x0 coord
						x0 <= di;
					when 2 => 
						--pass through y0 coord
						y0 <= di(SizeY-1 downto 0);
						--enable loading new instruction if required
						if instruction = "0010" then
							packet_num <= to_unsigned(0, packet_num'length);
						end if;
					when 3 =>
						--pass through x1 coord
						x1 <= di;
						--enable loading new instruction if required
						if (instruction = "0110" or instruction = "0111") then
							packet_num <= to_unsigned(0, packet_num'length);
						end if;
					when 4 =>
						--pass through y1 coord
						y1 <= di(SizeY-1 downto 0);
						--enable loading new instruction if required
						if (instruction = "0011" or instruction = "0100" or instruction = "0101" or instruction = "1011") then
							packet_num <= to_unsigned(0, packet_num'length);
						end if;
					when others =>
				end case;

				packet_num <= packet_num + 1;
			end if;
		end if;
	end process;
end behaviour;




















