library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of pwm_gen is

signal count: unsigned((BITSIZE-1) downto 0);
signal new_pulse: std_logic;

begin

counter: process (clk)
begin

	if(rising_edge(clk)) then 
		if(reset = '1') then 
			count <= (others => '0');
			pulse <= '0';
		elsif(reset = '0') then 
			if (count < D) then
				count <= count + 1;
			else
				count <= (others => '0');
			end if;
			pulse <= new_pulse;
		else 
			count <= count;
			pulse <= new_pulse;
		end if;
		
	end if;

end process;

pulse_gen: process (clk)
begin
	if (enabled = '1') then 
		if (width >= D) then
			new_pulse <= '1';
		else
			if (count < width) then 
				new_pulse <= '1';
			else
				new_pulse <= '0';
			end if;
		end if;
	else 
		new_pulse <= '0';
	end if;
end process;


    

end behaviour;




















