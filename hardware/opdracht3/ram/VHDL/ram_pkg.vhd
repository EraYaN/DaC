library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

PACKAGE ramlib IS
type word is std_logic_vector(M-1 downto 0);
type ram_type is array (0 to N-1) of byte;
type state_type is (rest, ready, writing, reading);
attribute enum_encoding : string;
attribute enum_encoding of state_type : type is "00 01 10 11"
constant WORDS : INTEGER; -- number of words
constant ADRESSLINES: INTEGER; -- numer of adresslines
constant WORDSIZE : INTEGER; -- word size
END ramlib;

PACKAGE BODY ramlib IS
constant WORDS : INTEGER:=16;
constant ADRESSLINES: INTEGER:=5;
constant WORDSIZE : INTEGER:=8;
END ramlib;


