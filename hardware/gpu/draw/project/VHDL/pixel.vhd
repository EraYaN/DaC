library IEEE;
use IEEE.std_logic_1164.ALL;

entity pixel is
   port(clk   :in    std_logic;
        reset :in    std_logic;
        enable:in    std_logic;
        data  :in    std_logic_vector(18 downto 0);
        done  :out   std_logic;
        x     :out   std_logic_vector(7 downto 0);
        y     :out   std_logic_vector(6 downto 0);
        color :out   std_logic_vector(3 downto 0);
        write :out   std_logic);
end pixel;

