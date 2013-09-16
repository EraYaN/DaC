library IEEE;
use IEEE.std_logic_1164.ALL;

entity ram is
   port(clk  :in    std_logic;
        reset:in    std_logic;
        a    :in    std_logic_vector(3 downto 0);
        d    :out   std_logic_vector(7 downto 0);
        ready:out   std_logic);
end ram;


