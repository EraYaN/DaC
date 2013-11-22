library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture structural of draw is
component pixel
port(
	clk   : in    std_logic;
	reset : in    std_logic;
	enable: in    std_logic;
	x  : in    std_logic_vector(SizeX-1 downto 0);
	y  : in    std_logic_vector(SizeY-1 downto 0);
	color : in std_logic_vector(SizeColor-1 downto 0);
	asb : in std_logic;
	done  : out   std_logic;
	ramaddr     :out   std_logic_vector(SizeRAMAddr-1 downto 0);
	ramdata     :out   std_logic_vector(SizeRAMData-1 downto 0);
	draw_write :out std_logic;
	draw_can_access : in std_logic
);
end component;
component fill
port(
	clk   : in    std_logic;
	reset : in    std_logic;
	enable: in    std_logic;
	color : in std_logic_vector(SizeColor-1 downto 0);		
	asb : in std_logic;
	done  : out   std_logic;
	ramaddr     :out   std_logic_vector(SizeRAMAddr-1 downto 0);
	ramdata     :out   std_logic_vector(SizeRAMData-1 downto 0);
	draw_write :out std_logic;
	draw_can_access : in std_logic
);
end component;
component rect
port(
	clk   : in    std_logic;
	reset : in    std_logic;
	enable: in    std_logic;
	enablef: in    std_logic;
	x  : in    std_logic_vector(SizeX-1 downto 0);
	y  : in    std_logic_vector(SizeY-1 downto 0);
	w  : in    std_logic_vector(SizeX-1 downto 0);
	h  : in    std_logic_vector(SizeY-1 downto 0);
	color : in std_logic_vector(SizeColor-1 downto 0);
	asb : in std_logic;
	done  : out   std_logic;
	ramaddr     :out   std_logic_vector(SizeRAMAddr-1 downto 0);
	ramdata     :out   std_logic_vector(SizeRAMData-1 downto 0);
	draw_write :out std_logic;
	draw_can_access : in std_logic
);
end component;
signal pixel_done,fill_done,rect_done : std_logic;
begin
	draw_ready <= pixel_done or fill_done or rect_done;
	pixel1: pixel port map (
		clk=>clk,
		reset=>reset
	);
	fill1: fill port map (
		clk=>clk,
		reset=>reset
	);
	rect1: rect port map (
		clk=>clk,
		reset=>reset
	);
end structural;