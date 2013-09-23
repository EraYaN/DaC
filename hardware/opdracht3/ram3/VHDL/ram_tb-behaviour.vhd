library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

architecture behaviour of ram_tb is
component ram is
   port(clk  :in    std_logic;        
	a    :in   	std_logic_vector (ADRESSLINES-1 downto 0);
        d_in :in    std_logic_vector (WORDSIZE-1 downto 0);
	write:in    std_logic;
	d_out:out   std_logic_vector (WORDSIZE-1 downto 0)
	);
end component;
signal clk : std_logic;
signal write : std_logic;
signal d_in : std_logic_vector (WORDSIZE-1 downto 0);
signal d_out: std_logic_vector (WORDSIZE-1 downto 0);
signal a : std_logic_vector(ADRESSLINES-1 downto 0);
begin


clk	<=	'1' after 0 ns,'0' after 10 ns when clk /= '0' else '1' after 10 ns;

process 
begin
write<='1';
a<="00";
d_in<="00110000";
wait for 20 ns;
a<="01";
d_in<="11000000";
wait for 20 ns;
a<="10";
d_in<="11110000";
wait for 20 ns;
a<="11";
d_in<="00000000";
wait for 20 ns;
write<='0';
--reading
wait for 80 ns;
a<="00";
wait for 40 ns;
a<="01";
wait for 40 ns;
a<="10";
wait for 40 ns;
a<="11";
wait for 40 ns;
end process;

ram1: ram port map(clk,a,d_in,write,d_out);
end behaviour;

















