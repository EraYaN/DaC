library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

architecture behaviour of ram is
   component rambank
       port(clk      :in    std_logic;
        write    :in    std_logic;
        in_lines :in    std_logic_vector(WORDS*WORDSIZE-1 downto 0);
        out_lines:out   std_logic_vector(WORDS*WORDSIZE-1 downto 0)
	);
   end component;

--TODO signals
signal out_lines, in_lines :std_logic_vector(WORDS*WORDSIZE-1 downto 0);
begin

rb: rambank port map (clk, write, in_lines,out_lines);

d_out<=out_lines(to_integer(unsigned(a)) downto to_integer(unsigned(a))-WORDSIZE );
in_lines(to_integer(unsigned(a)) downto to_integer(unsigned(a))-WORDSIZE )<=d_in;
end behaviour;


























