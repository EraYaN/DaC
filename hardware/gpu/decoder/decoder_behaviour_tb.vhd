library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture behaviour of decoder_tb is

	component decoder is
		port (
			--Clock/reset
			clk		: in	std_logic;						--Clock
			rst		: in	std_logic;						--Reset
			--SPI-interface interaction
			di		: in	std_logic_vector(7 downto 0);	--Data In
			do		: out	std_logic_vector(7 downto 0);	--Data Out
			dr		: in	std_logic;						--Data Ready
			dav		: in	std_logic;						--Data Available
			rts		: out	std_logic;						--Request To Send
			--draw data
			x0		: out	std_logic_vector(7 downto 0);	--Entity x0 coord
			x1		: out	std_logic_vector(7 downto 0);	--Entity x1 coord
			y0		: out	std_logic_vector(7 downto 0);	--Entity y0 coord
			y1		: out	std_logic_vector(7 downto 0);	--Entity y1 coord
			col		: out	std_logic_vector(3 downto 0);	--Entity Color
			dwr		: in	std_logic;							--draw Ready
			en		: out	std_logic_vector((NumdrawModules - 1) downto 0); --draw Module Enabled
			--Internal registers
			id		: out	std_logic;						--Register id/address
			val		: out	std_logic;						--Value
			set		: out	std_logic						--Set
		);
	end component;

signal clk : std_logic;
signal rst : std_logic;
signal dr : std_logic;
signal dav : std_logic;
signal dwr : std_logic;
signal di : std_logic_vector(7 downto 0);

begin

	lbl1: decoder port map (clk=>clk, rst=>rst, di=>di, dr=>dr, dav=>dav, dwr=>dwr);
	clk		<= '1' after 0 ns,
			'0' after 50 ns when clk /= '0' else '1' after 50 ns;
	rst 	<= '1' after 0 ns,
			'0' after 200 ns;
	di		<= "00000000" after 0 ns;
	dr		<= '0' after 0 ns;
	dav		<= '0' after 0 ns;
	dwr		<= '0' after 0 ns;

end behaviour;















































