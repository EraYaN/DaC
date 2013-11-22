library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;
use work.draw_lib.ALL;

architecture behaviour of pixel is
component pixel is
   port(clk   : in    std_logic;
        reset : in    std_logic;
        enable: in    std_logic;
        x0  : in    std_logic_vector(SizeX-1 downto 0);
		y0  : in    std_logic_vector(SizeY-1 downto 0);
		asb : in std_logic;
        done  : out   std_logic;
        ramaddr     :out   std_logic_vector(SizeRAMAddr-1 downto 0);
        ramdata     :out   std_logic_vector(SizeRAMData-1 downto 0);
        draw_write :out std_logic;
		draw_can_access : in std_logic);
end component;
signal is_busy : std_logic;
begin
	process (clk, reset)
	begin
		if rising_edge(clk) then
			if(reset = '1') then
				ramaddr <= (others => 'Z');
				ramdata <= (others => 'Z');
				draw_write <= (others => 'Z');
				draw_claim <= 'Z';
				done <= 'Z';
				is_busy = '0';
			elsif(rising_egde(clk)) then
				if enable = '1' then
				if draw_can_access = '1' then
					draw_claim <= '1'; -- claim het ram
					address <= std_logic_vector(asb & y0 & x0); --combineer signalen
					data <= color; -- zet data op de bus
					write_enable <= '1'; -- vertel de controller dat je wil schrijven
					is_busy <= '1';
					
				else 
					ramaddr <= (others => 'Z');
					ramdata <= (others => 'Z');
					draw_write <= (others => 'Z');
					draw_claim <= 'Z';
					done <= 'Z';
					is_busy = '0';
				end if;
			end if;
		end if;
	end process;
end behaviour;