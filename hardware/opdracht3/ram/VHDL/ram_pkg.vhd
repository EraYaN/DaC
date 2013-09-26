library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

library work;
PACKAGE ramlib IS
constant WORDS : INTEGER:=8; -- number of words
constant ADRESSLINES: INTEGER:=4; -- numer of adresslines
constant WORDSIZE : INTEGER:=8; -- word size
type ram_type is array (0 to WORDS-1) of std_logic_vector (WORDSIZE-1 downto 0);
END ramlib;

PACKAGE BODY ramlib IS


END ramlib;



























