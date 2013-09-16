library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
use work.ramlib.all;

architecture behaviour of ram is
signal ram : ram_type;
signal state,new_state : state_type;

begin
statereg: process(clk) 
begin
if(rising_edge(clk))then	
	if(reset='1')then
		state<=rest;
	else
		state<=new_state;
	end if;
end if;
end process;

combinatorial: process(state) 

begin
if state=rest then
	d_out<=; --TODO
elsif state=ready then

elsif state=reading then

elsif state=writing then

end if;
end process;
end behaviour;


