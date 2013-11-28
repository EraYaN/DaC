library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture behaviour of draw_pixel is
signal busy : std_logic; -- used as a "state"
signal ram_addr_tmp: std_logic_vector(SizeRAMAddr-1 downto 0);
signal ramdata_tmp: std_logic_vector(SizeRAMData-1 downto 0);
begin
dp1:	process (clk)
	begin
		if rising_edge(clk) then
			
				if busy = '0' then --we are not busy							
					ram_addr_tmp <= std_logic_vector(NOT asb & y & x); --combineer signalen
					ramdata_tmp <= color; -- zet data op de bus
					draw_write <= '1'; -- vertel de controller dat je wil schrijven
					done <= '0'; -- not done yet
					busy <= '1'; -- we are now busy
				else --we are busy							
					done <= '1'; -- we are done now
					busy <= '0'; -- we are not busy anymore
					draw_write <= '0';
				end if;
							
				
				draw_write <= '0';			
				done <= '0';
				busy <= '0';
			
		end if;
	end process;

dp2:	process(ram_addr_tmp)
	begin
		if reset = '0' and enable = '1' and draw_can_access = '1' then -- RAM is free to access
			ramaddr <= ram_addr_tmp ;
			ramdata <= ramdata_tmp;
		else
			ramaddr <= (others => 'Z');
			ramdata <= (others => 'Z');
		end if;
	end process;
end behaviour;




