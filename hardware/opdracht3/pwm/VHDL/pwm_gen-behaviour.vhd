library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of pwm_gen is

signal count: unsigned((BITSIZE-1) downto 0);

begin

counter: process (clk)
begin

	if(rising_edge(clk)) then 
		if(reset = '1') then 
			count <= (others => '0');
		elsif(reset = '0' and enabled ='1') then 
			if (count < D) then
				count <= count +1;
			else
				count <= (others => '0');
			end if;
		else 
			count <= count;

		end if;
	end if;

end process;

pulse_gen: process (clk)
begin
	if (enabled = '1') then 
		if (width > D) then
			pulse <= '1';
		else
			if (count < width) then 
				pulse <= '1';
			else
				pulse <= '0';
			end if;
		end if;
	else 
		pulse <= '0';
	end if;
end process;


    

end behaviour;





