library IEEE;
use IEEE.std_logic_1164.ALL;

PACKAGE parameter_def IS
constant D : INTEGER;
constant BITSIZE : INTEGER;
END parameter_def;

PACKAGE BODY parameter_def IS
constant D : INTEGER := 1000;
constant BITSIZE : INTEGER := 10;
END parameter_def;





