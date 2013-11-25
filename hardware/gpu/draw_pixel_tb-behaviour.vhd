library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture behaviour of draw_pixel_tb is
component draw_pixel is
	port(
		clk   : in    std_logic;
		reset : in    std_logic;
		enable: in    std_logic;
		x  : 	in    std_logic_vector(SizeX-1 downto 0);
		y  : 	in    std_logic_vector(SizeY-1 downto 0);
		color : in 	  std_logic_vector(SizeColor-1 downto 0);
		asb : 	in    std_logic;
		done  : out   std_logic;
		ramaddr : out std_logic_vector(SizeRAMAddr-1 downto 0);
		ramdata : out std_logic_vector(SizeRAMData-1 downto 0);
		draw_write: out std_logic;
		draw_can_access : in std_logic
	);
end component;
	--signalen
	signal clk, reset, enable, asb, draw_can_acces: std_logic;
	signal x, y			   : std_logic_vector(SizeX-1 downto 0);
	signal color			   : std_logic_vector(SizeColor-1 downto 0);
	
	
begin
	clk <='1' after 0 ns,
	'0' after 10 ns when clk /= '0' else '1' after 10 ns;
	reset <= '1' after 0 ns,
		  <= '0' after 10 ns,
		  <= '1' after 400 ns; --testen of er geen undefined ontstaat als reset 1 is
	'0' after 50 ns;
	enable <= '1';
	draw_can_acces <= '1' after 0 ns;
	color <= "1010" after 0 ns;
	asb <= '0' after 0 ns;
	x   <= "10101010" after 0 ns,
		<= "10001111" after 100 ns,
		<= "00000000" after 200 ns,
		<= "11111111" after 300 ns;
		<= "10000001" after 400 ns; --test of het goed gaat als reset 1 word
	y	<= "1010111" after 0 ns,
		<= "1111111" after 100 ns,
		<= "1100110" after 200 ns,
		<= "0000000" after 300 ns;
		
	
	
	
	
	

	
	



end behaviour;


