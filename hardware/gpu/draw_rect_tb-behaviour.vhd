library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture behaviour of draw_rect_tb is
component draw_rect is
	port(
	          clk                  : in    std_logic;
		       reset                : in    std_logic;
		       enable               : in    std_logic;
		       enablef              : in    std_logic;
		       x                    : in    std_logic_vector(SizeX-1 downto 0);
		       y                    : in    std_logic_vector(SizeY-1 downto 0);
		       w                    : in    std_logic_vector(SizeX-1 downto 0);
		       h                    : in    std_logic_vector(SizeY-1 downto 0);
		       color                : in    std_logic_vector(SizeColor-1 downto 0);
		       asb                  : in    std_logic;
		       done                 : out   std_logic;
		       ramaddr              : out   std_logic_vector(SizeRAMAddr-1 downto 0);
		       ramdata              : out    std_logic_vector(SizeRAMData-1 downto 0);
		       draw_write           : out    std_logic;
		       draw_can_access      : in    std_logic
		  );
	end component;
	
	--input signalen
	signal clk, reset, enable, enablef, asb, draw_can_acces: std_logic;
	signal x, w 		   : std_logic_vector(SizeX-1 downto 0);
	signal y, h      : std_logic_vector(SizeY-1 downto 0);
	signal color			       : std_logic_vector(SizeColor-1 downto 0);
	
	--output signalen
	signal done, draw_write : std_logic;
	signal ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	signal ramdata : std_logic_vector(SizeRAMData-1 downto 0);
	

begin
	
	clk <=            '1' after 0 ns,
	                  '0' after 10 ns when clk /= '0' else '1' after 10 ns;
	
	reset <=          '1' after 0 ns,
		                '0' after 10 ns,
		                '1' after 400 ns, --testen of er geen undefined ontstaat als reset 1 is
	                  '0' after 500 ns; --enablef testen
	
	enable <=         '1' after 0 ns, '0' after 500 ns;
	
	enablef <=        '0' after 0 ns, '1' after 500 ns;
		
	draw_can_acces <= '1' after 0 ns;
				            
	
	color <=          "1010" after 0 ns;
	
	asb <=            '0' after 0 ns;
	
	x <=             "10101010" after 0 ns,
		               "10001111" after 100 ns,
		               "00000000" after 200 ns,
		               "11111111" after 300 ns,
		               "10000001" after 400 ns, --test of het goed gaat als reset 1 wordt
		               "11111111" after 500 ns; 
	
	y	<=             "1010111" after 0 ns,
		               "1111111" after 100 ns,
		               "1100110" after 200 ns,
		               "0000000" after 300 ns,
		               "0001000" after 400 ns,
		               "1010101" after 500 ns;
	
	w	<=             "01010101" after 0 ns,
		               "11110001" after 100 ns,
		               "00011000" after 200 ns,
		               "11100111" after 300 ns,
		               "10011001" after 400 ns, --test of het goed gaat als reset 1 wordt
	                 "11000111" after 500 ns; -- test of het goed gaat als draw_can_acces 0 wordt
	
	h	<=             "1011111" after 0 ns,
		               "1000011" after 100 ns,
		               "1101110" after 200 ns,
		               "0000110" after 300 ns,
		               "0001110" after 400 ns,
		               "1011101" after 500 ns;
				
lbl: draw_rect port map(	       
           clk              => clk,                
		       reset            => reset,             
		       enable           => enable,     
		       enablef          => enablef,     
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

end behaviour;