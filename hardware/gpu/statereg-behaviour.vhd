library IEEE;
use IEEE.std_logic_1164.all;
use work.parameter_def.all;

architecture behaviour of statereg is
begin 
	process(clk,rst)
	begin
		if rst = '1' then 
			q <= '0';
		elsif rising_edge(clk) then 
			if s = '1' then 
				q <= d;
			end if;
		end if;
	end process;
end behaviour;