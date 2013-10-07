library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

entity rammux is
   port(clk        :in    std_logic;
       sel     :in    std_logic_vector(ADRESSLINES-1 downto 0);
  write     :in    std_logic;
  write_out  :out   std_logic_vector(WORDS-1 downto 0);
  drive_out  :out   std_logic_vector(WORDS-1 downto 0));
end rammux; 













