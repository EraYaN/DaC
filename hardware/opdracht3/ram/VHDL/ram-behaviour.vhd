library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

architecture behaviour of ram is
signal ram : ram_type;
begin
statereg: process(clk) 
begin
if(rising_edge(clk))then	
	if(write='1')then
		ram(to_integer(unsigned(a)))<=d_in;
	end if;	
end if;
end process;

d_out<=ram(to_integer(unsigned(a)));
end behaviour;

















