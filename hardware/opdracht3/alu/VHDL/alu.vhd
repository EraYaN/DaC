library IEEE;
use IEEE.std_logic_1164.ALL;
use work.Bitsize.all;

entity alu is
   port(clk	  	    :in	   std_logic;
	input_A     :in    std_logic_vector (S-1 downto 0);
        input_B     :in    std_logic_vector (S-1 downto 0);
        Reset       :in    std_logic;
        Op          :in    std_logic_vector (3 downto 0);
        output_R    :out   std_logic_vector (S-1 downto 0);
	status_D	   :out   std_logic_vector (3 downto 0));
 end alu;














