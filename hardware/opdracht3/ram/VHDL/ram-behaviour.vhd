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
	if(reset='1')then
		
		ram <= (others=>(others=>'0'));		
	else		
		if(write='1')then
			ram(to_integer(a))<=d_in;
		end if;
	end if;	
end if;
end process;

combinatorial: process(read) 

begin
if read='1' then
	d_out<=ram(to_integer(a));	
else
	d_out<=(others=>'0');	
end if;
end process;

end behaviour;








