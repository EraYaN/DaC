library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of ram is
type ram_type is array (0 to 16) of byte;
type state_type is (rest, ready);
signal ram : ram_type; -- in multiplies of 8

begin
if(read='1') then
d_out<=ram(a);
else
d_out<=(others => '-');
end if;
end behaviour;


