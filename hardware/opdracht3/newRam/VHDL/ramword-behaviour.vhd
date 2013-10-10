library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of ramword is
signal word : std_logic_vector(WORDSIZE-1 downto 0);
begin
statereg: process(clk) 
begin
if(rising_edge(clk))then	
	if(set='1')then
		word<=d_in;
	end if;	
end if;
if drive = '1' then
d_out<=word;
else 
d_out<=(others=>'Z');
end if;
end process;

end behaviour;








