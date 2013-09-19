library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

library work;
PACKAGE ramlib IS
constant WORDS : INTEGER:=4; -- number of words
constant ADRESSLINES: INTEGER:=2; -- numer of adresslines
constant WORDSIZE : INTEGER:=4; -- word size
subtype word is std_logic_vector (WORDSIZE-1 downto 0);
type ram_type is array (0 to WORDS-1) of word;
END ramlib;

PACKAGE BODY ramlib IS


END ramlib;


















