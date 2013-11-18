library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.parameter_def.ALL;

architecture behaviour of decoder is

	type decoder_state is (initial);
	signal state, new_state : decoder_state;

	signal packet_num : unsigned((MaxInstLen - 1) downto 0);
begin

	--State changing
	process (clk)
	begin
		if rising_edge(clk) then
			if (RST = '1') then
				state <= initial;
			else
				state <= new_state;
			end if;
		end if;
	end process;

	--Receiving data from SPI-interface
	process (dav, di)
	begin
		if dav = '1' then
			packet_num <= packet_num + 1;
			case to_integer(packet_num) is
				when 0 =>
					case di(7 downto 4)
		end if;
	end process;
end behaviour;




















