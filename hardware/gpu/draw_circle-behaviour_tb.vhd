library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use work.parameter_def.ALL;

architecture behavioural of draw_circle_tb is

component draw_circle is
   port(clk           :in    std_logic;
        reset         :in    std_logic;
        enable        :in    std_logic;
        --enablef       :in    std_logic;
        x             :in    std_logic_vector(SizeX-1 downto 0);
        y             :in    std_logic_vector(SizeY-1 downto 0);
        w             :in    std_logic_vector(SizeX-1 downto 0);
        colour        :in    std_logic_vector(SizeColor-1 downto 0);
        asb           :in    std_logic;
        done          :out   std_logic;
        ramaddr       :out   std_logic_vector(SizeRAMAddr-1 downto 0);
        ramdata       :out   std_logic_vector(SizeRAMData-1 downto 0);
        draw_write    :out   std_logic;
        draw_can_access:in    std_logic);
end component draw_circle;

signal clk,reset,enable,asb,done,draw_write,draw_can_access :std_logic;
signal x,w:std_logic_vector(SizeX-1 downto 0);
signal y:std_logic_vector(SizeY-1 downto 0);
signal colour:std_logic_vector(SizeColor-1 downto 0);
signal ramaddr:std_logic_vector(SizeRAMAddr-1 downto 0);
signal ramdata:std_logic_vector(SizeRAMData-1 downto 0);


begin 
	lbl1: draw_circle port map (clk, reset, enable, x, y ,w, colour, asb, done, ramaddr,ramdata,draw_write,draw_can_access);

	clk <=	'1' after 0 ns,
		'0' after 10 ns when clk/= '0' else '1' after 10 ns;
	reset <= '1' after 0 ns,
		 '0' after 10 ns;
	enable <= '0' after 0 ns,
		  '1' after 10 ns;
	x <= "00000100" after 0 ns;
	y <= "0000100" after 0 ns;
	w <= "00000010" after 10 ns;
	colour <= "0100" after 0 ns;
	asb <= '0' after 0 ns;
	draw_can_access <= '0' after 0 ns,
			   '1' after 10 ns;

end behavioural;

