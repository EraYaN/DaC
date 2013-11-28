library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture behaviour of draw_pixel is
signal busy : std_logic; -- used as a "state"
signal ramaddr_tmp: std_logic_vector(SizeRAMAddr-1 downto 0);
signal ramdata_tmp: std_logic_vector(SizeRAMData-1 downto 0);
signal busy_tmp : std_logic;
begin
draw_pixel_seq:	process (clk)
	begin
		if rising_edge(clk) then			
			ramaddr <= ramaddr_tmp ;
			ramdata <= ramdata_tmp;
			busy <= busy_tmp;
		end if;
	end process;

draw_pixel_combi:	process(reset, enable, draw_can_access, busy)
	begin
		if reset = '0' and enable = '1' and draw_can_access = '1' then -- RAM is free to access
			
			if busy = '0' then --we are not busy							
				ramaddr_tmp <= std_logic_vector(NOT asb & y & x); --combineer signalen
				ramdata_tmp <= color; -- zet data op de bus
				draw_write <= '1'; -- vertel de controller dat je wil schrijven
				done <= '0'; -- not done yet
				busy_tmp <= '1'; -- we are now busy
			else --we are busy		
				ramaddr_tmp <= (others => 'Z');
				ramdata_tmp <= (others => 'Z');					
				done <= '1'; -- we are done now
				busy_tmp <= '0'; -- we are not busy anymore
				draw_write <= '0';
			end if;
		else
			done <= '0';
			draw_write <= '0';
			busy_tmp <= '0';
			ramaddr_tmp <= (others => 'Z');
			ramdata_tmp <= (others => 'Z');
		end if;
	end process;
end behaviour;

































