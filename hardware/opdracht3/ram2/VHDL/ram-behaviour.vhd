library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

architecture behaviour of ram is
   component rambank
       port(clk      :in    std_logic;
        write    :in    std_logic;
        in_lines :in    std_logic_vector(WORDS*WORDSIZE downto 0);
        out_lines:out   std_logic_vector(WORDS*WORDSIZE downto 0));
   end component;

--TODO signals
begin

--TODO portmap
d_out<=(others=>'0');
end behaviour;























