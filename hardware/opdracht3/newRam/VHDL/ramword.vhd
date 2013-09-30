library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

entity ramword is
   port(clk:in    std_logic;
        d_in :in    std_logic_vector(WORDSIZE-1 downto 0);
        d_out:out   std_logic_vector(WORDSIZE-1 downto 0);
        set:in    std_logic);
end ramword;


