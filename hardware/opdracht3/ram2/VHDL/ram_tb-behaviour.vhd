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
signal reset : std_logic;
signal enabled : std_logic;
signal write : std_logic;
signal read : std_logic;
signal d_in : std_logic_vector (WORDSIZE-1 downto 0);
signal d_out: std_logic_vector (WORDSIZE-1 downto 0);
signal a : std_logic_vector(ADRESSLINES-1 downto 0);
begin


clk	<=	'1' after 0 ns,'0' after 10 ns when clk /= '0' else '1' after 10 ns;
reset	<=	'0','1' after 10 ns,'0' after 90 ns;

process 
begin
write<='0';
read<='0';
d_in<="0000";
a<="00";
wait for 100 ns;
--writing
d_in <= "1111";
a<="00";
write<='1';
wait for 20 ns;
write<='0';
wait for 20 ns;
d_in <= "1100";
a<="01";
write<='1';
wait for 20 ns;
write<='0';
wait for 20 ns;
d_in <= "0101";
a<="10";
write<='1';
wait for 20 ns;
write<='0';
wait for 20 ns;
d_in <= "1010";
a<="11";
write<='1';
wait for 20 ns;
write<='0';
wait for 20 ns;
--reading
a<="00";
read<='1';
wait for 20 ns;
read<='0';
wait for 20 ns;
a<="01";
read<='1';
wait for 20 ns;
read<='0';
wait for 20 ns;
a<="10";
read<='1';
wait for 20 ns;
read<='0';
wait for 20 ns;
a<="11";
read<='1';
wait for 20 ns;
read<='0';
wait for 20 ns;
end process;

ram1: ram port map(clk,a,d_in,write,d_out);
end behaviour;














