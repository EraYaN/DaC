library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.parameter_def.ALL;

architecture behaviour of pwm_gen_tb is

component pwm_gen is
   port(clk    :in    std_logic;
        reset  :in    std_logic;
        enabled:in    std_logic;
        width  :in    unsigned((BITSIZE-1) downto 0);
        pulse  :out   std_logic);
end component;

signal clk 		:std_logic;
signal reset 		:std_logic;
signal enabled 	:std_logic;
signal width  		:unsigned ((BITSIZE-1) downto 0);
signal pulse		:std_logic;

begin

	lbl1: pwm_gen port map (clk, reset, enabled, width, pulse);
	clk 	<= 	'1' after 0 ns,
			'0' after 100 ns when clk /= '0' else '1' after 100 ns;
	reset 	<=	'1' after 0 ns,
			'0' after 200 ns;
	enabled <=		'0' after 0 ns,
			'1' after 400 ns;
	width 	<=	to_unsigned(0,width'length) after 0 ms,
			to_unsigned(512, width'length) after 2 ms,
			to_unsigned(1023, width'length) after 4 ms,
			to_unsigned(256 ,width'length) after 6 ms;
end behaviour;

















