library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

architecture behaviour of ramword_tb is
component ramword is
   port(clk:in    std_logic;
        d_in :in    std_logic_vector(WORDSIZE-1 downto 0);
        d_out:out   std_logic_vector(WORDSIZE-1 downto 0);
        set:in    std_logic);
end component;
signal clk : std_logic;
signal set : std_logic;
signal d_in : std_logic_vector (WORDSIZE-1 downto 0);
signal d_out: std_logic_vector (WORDSIZE-1 downto 0);
begin


clk	<=	'1' after 0 ns,'0' after 10 ns when clk /= '0' else '1' after 10 ns;

process 
begin
d_in<="00000000";
set<='0';
wait for 100 ns;
d_in<="00000000";
set<='1';
wait for 20 ns;
set<='0';
wait for 100 ns;
d_in<="10100000";
set<='1';
wait for 20 ns;
set<='0';
wait for 100 ns;
d_in<="11110000";
set<='1';
wait for 20 ns;
set<='0';
wait for 100 ns;
d_in<="00110000";
set<='1';
wait for 20 ns;
set<='0';
end process;

ram1: ramword port map(clk,d_in,d_out,set);
end behaviour;




