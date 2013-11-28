library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture behaviour of draw_pixel is
signal busy : std_logic; -- used as a "state"
begin
	process (clk)
	begin
		if rising_edge(clk) then
			
			if reset = '0' and enable = '1' and draw_can_access = '1' then -- RAM is free to access
				if busy = '0' then --we are not busy							
					ramaddr <= std_logic_vector(NOT asb & y & x); --combineer signalen
					ramdata <= color; -- zet data op de bus
					draw_write <= '1'; -- vertel de controller dat je wil schrijven
					done <= '0'; -- not done yet
					busy <= '1'; -- we are now busy
				else --we are busy							
					done <= '1'; -- we are done now
					busy <= '0'; -- we are not busy anymore
					ramaddr <= (others => 'Z');
					ramdata <= (others => 'Z');
					draw_write <= '0';
				end if;
			else	
				ramaddr <= (others => 'Z');
				ramdata <= (others => 'Z');
				draw_write <= '0';			
				done <= '0';
				busy <= '0';
			end if;
		end if;
	end process;
end behaviour;





