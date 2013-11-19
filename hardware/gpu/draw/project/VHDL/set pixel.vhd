library IEEE;
use IEEE.std_logic_1164.ALL;

entity set pixel is
   port(clk    :in    std_logic;
        reset  :in    std_logic;
        ASB    :in    std_logic;
        x      :in    std_logic_vector(7 downto 0);
        y      :in    std_logic_vector(6 downto 0);
        color  :in    std_logic_vector(3 downto 0);
        address:out   std_logic_vector(15 downto 0);
        data   :out   std_logic_vector(3 downto 0);
        write  :out   std_logic);
end set pixel;


