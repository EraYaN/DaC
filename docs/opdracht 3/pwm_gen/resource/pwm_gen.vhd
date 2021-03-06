library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.parameter_def.ALL;

entity pwm_gen is
   port(clk    :in    std_logic;
        reset  :in    std_logic;
        enabled:in    std_logic;
        width  :in    unsigned((BITSIZE-1) downto 0);
        pulse  :out   std_logic);
end pwm_gen;








