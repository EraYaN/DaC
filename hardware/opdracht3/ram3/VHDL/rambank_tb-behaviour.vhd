library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

architecture behaviour of rambank_tb is
component rambank is
   port(clk      :in    std_logic;
        write    :in    std_logic;
        in_lines :in    std_logic_vector(WORDS*WORDSIZE-1 downto 0);
        out_lines:out   std_logic_vector(WORDS*WORDSIZE-1 downto 0));

end component;
signal clk : std_logic;
signal write : std_logic;
signal d_in : std_logic_vector(WORDS*WORDSIZE-1 downto 0);
signal d_out: std_logic_vector(WORDS*WORDSIZE-1 downto 0);
signal data : std_logic_vector(WORDSIZE-1 downto 0);
signal a : std_logic_vector (ADRESSLINES-1 downto 0);
begin


clk	<=	'1' after 0 ns,'0' after 10 ns when clk /= '0' else '1' after 10 ns;

process 
begin
a<="00";
wait for 20 ns;
d_in((to_integer(unsigned(a))+1)*WORDSIZE-1 downto  (to_integer(unsigned(a)))*WORDSIZE)<="00000000";
write<='0';
wait for 100 ns;
write<='1';
wait for 20 ns;
write<='0';
a<="01";
wait for 20 ns;
d_in((to_integer(unsigned(a))+1)*WORDSIZE-1 downto  (to_integer(unsigned(a)))*WORDSIZE)<="11110000";
wait for 100 ns;
write<='1';
wait for 20 ns;
write<='0';
a<="10";
wait for 20 ns;
d_in((to_integer(unsigned(a))+1)*WORDSIZE-1 downto  (to_integer(unsigned(a)))*WORDSIZE)<="01110000";
wait for 100 ns;
write<='1';
wait for 20 ns;
write<='0';
a<="11";
wait for 20 ns;
d_in((to_integer(unsigned(a))+1)*WORDSIZE-1 downto  (to_integer(unsigned(a)))*WORDSIZE)<="10110000";
wait for 100 ns;
write<='1';
wait for 20 ns;
write<='0';
a<="00";
wait for 20 ns;
data<=d_out((to_integer(unsigned(a))+1)*WORDSIZE-1 downto  (to_integer(unsigned(a)))*WORDSIZE);
wait for 100 ns;
a<="01";
wait for 20 ns;
data<=d_out((to_integer(unsigned(a))+1)*WORDSIZE-1 downto  (to_integer(unsigned(a)))*WORDSIZE);
wait for 100 ns;
a<="10";
wait for 20 ns;
data<=d_out((to_integer(unsigned(a))+1)*WORDSIZE-1 downto  (to_integer(unsigned(a)))*WORDSIZE);
wait for 100 ns;
a<="11";
wait for 20 ns;
data<=d_out((to_integer(unsigned(a))+1)*WORDSIZE-1 downto  (to_integer(unsigned(a)))*WORDSIZE);
wait for 100 ns;
end process;

ram1: rambank port map(clk,write,d_in,d_out);
end behaviour;





