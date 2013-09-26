library IEEE;
use IEEE.std_logic_1164.ALL;
use work.Bitsize.all;

entity alu is
   port(
	input_a     :in    std_logic_vector (S-1 downto 0);
        input_b     :in    std_logic_vector (S-1 downto 0);
       
        op          :in    std_logic_vector (3 downto 0);
        output_r    :out   std_logic_vector (S-1 downto 0);
	status_d	   :out   std_logic_vector (3 downto 0));
 end alu;




















