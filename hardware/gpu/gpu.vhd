LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.parameter_def.all;

ENTITY gpu IS
   PORT(
    clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	spiclk : IN STD_LOGIC;
	spimiso : OUT STD_LOGIC;
	spimosi : IN STD_LOGIC;
	ramdata : INOUT STD_LOGIC_VECTOR(SizeRAMData-1 downto 0);
	ramaddr : INOUT STD_LOGIC_VECTOR(SizeRAMAddr-1 downto 0);
	ramwe : OUT STD_lOGIC;
	vgahsync : OUT STD_LOGIC;
	vgavsync : OUT STD_LOGIC;
	vgacolor : OUT STD_LOGIC_VECTOR(SizeColor-1 downto 0)
	);
END gpu;
