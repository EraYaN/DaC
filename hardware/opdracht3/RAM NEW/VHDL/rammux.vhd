library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

entity rammux is
   port(clk        :in    std_logic;
       d_out_muxed:out   std_logic_vector(WORDSIZE-1 downto 0);
        d_out      :in    std_logic_vector(WORDS*WORDSIZE-1 downto 0);
        d_in_muxed :in    std_logic_vector(WORDSIZE-1 downto 0);
        d_in       :out   std_logic_vector(WORDS*WORDSIZE-1 downto 0);
  sel     :in    std_logic_vector(ADRESSLINES-1 downto 0);
  write     :in    std_logic;
  write_out  :out   std_logic_vector(WORDS-1 downto 0));
end rammux; 




