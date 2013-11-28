library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture behaviour of draw_line_tb is
component draw_line is
	port(
		clk   : in    std_logic;
		reset : in    std_logic;
		enable: in    std_logic;
		x  : 	in    std_logic_vector(SizeX-1 downto 0);
		y  : 	in    std_logic_vector(SizeY-1 downto 0);
		w  : 	in    std_logic_vector(SizeX-1 downto 0);
		h  : 	in    std_logic_vector(SizeY-1 downto 0);
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
	signal x, y, w, h		   : std_logic_vector(SizeX-1 downto 0);
	signal color			   : std_logic_vector(SizeColor-1 downto 0);
	signal ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	signal ramdata: std_logic_vector(SizeRAMData-1 downto 0);
	signal draw_write, done : std_logic;
	
	
begin
	clk <='1' after 0 ns,
	      '0' after 10 ns when clk /= '0' else '1' after 10 ns;
	reset <= '1' after 0 ns,
		   '0' after 10 ns,
		   '1' after 400 ns, --testen of er geen undefined ontstaat als reset 1 is
	     '0' after 50 ns;
	enable <= '1' after 10 ns;
	draw_can_acces <= '1' after 0 ns;
	color <= "1010" after 0 ns;
	asb <= '0' after 0 ns;
	x   <= "10101010" after 0 ns;
	y	<= "1010111" after 0 ns;
	w	<= "00001010" after 0 ns;
<<<<<<< HEAD
	h	<= "0001111" after 0 ns;
=======
	h	<= "0000111" after 0 ns;
	
	connect: draw_line port map(
	  clk              => clk,   
		reset            => reset, 
		enable           => enable,
		x                => x,
		y                => y,
		w                => w,
		h                => h,
		color            => color,
		asb              => asb,  
		done             => done,
		ramaddr          => ramaddr,
		ramdata          => ramdata,
		draw_write       => draw_write,
		draw_can_access  => draw_can_acces
		);
	  
>>>>>>> 81698a78362a407ea7034915a694cb0eaea9fe5e
end behaviour;


