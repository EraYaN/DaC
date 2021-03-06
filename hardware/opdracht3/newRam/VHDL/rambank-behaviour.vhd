library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

architecture behaviour of rambank is
component ramword
       port(clk:in    std_logic;
        d_in :in    std_logic_vector(WORDSIZE-1 downto 0);
        d_out:out   std_logic_vector(WORDSIZE-1 downto 0);
        set:in    std_logic;
	drive:in	std_logic);
   end component;
begin
GEN_REG: 
   for I in WORDS-1 downto 0 generate
      REGX : ramword port map
        (clk, in_lines((I+1)*WORDSIZE-1 downto I*WORDSIZE), out_lines((I+1)*WORDSIZE-1 downto I*WORDSIZE), write(I),drive(I));
   end generate GEN_REG;
end behaviour;

















