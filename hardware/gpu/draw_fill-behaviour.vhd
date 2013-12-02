library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.All;
use work.parameter_def.ALL;

architecture behaviour of draw_fill is
signal x : unsigned(SizeX-1 downto 0);
signal y : unsigned(SizeY-1 downto 0);
signal ramaddr_tmp: std_logic_vector(SizeRAMAddr-1 downto 0);
signal x_tmp: unsigned(SizeX-1 downto 0);
signal y_tmp: unsigned(SizeY-1 downto 0);
signal almost_done,almost_done_tmp : std_logic;
signal oe : std_logic;
begin
draw_fill_seq: process (clk)	
	begin
		if rising_edge(clk) then
			x<=x_tmp;
			y<=y_tmp;
			almost_done<=almost_done_tmp;
		end if;
	end process;
	ramaddr <= ramaddr_tmp WHEN oe = '1' ELSE (others => 'Z');
	ramdata <= color WHEN oe = '1' ELSE (others => 'Z');
	ramaddr_tmp <= std_logic_vector((NOT asb) & y & x);	
draw_fill_combi: process (reset, enable, draw_can_access, x, y, almost_done)	
	begin
			if reset = '0' and enable = '1' then 
				if draw_can_access = '1' then -- RAM is free to access
					if almost_done = '1' then
						done <= '1';
						draw_write <= '0';
						x_tmp <= to_unsigned(ResolutionX-1,SizeX);
						y_tmp <= to_unsigned(ResolutionY-1,SizeY);
						--ramaddr_tmp <= (others => 'Z');
						--ramdata_tmp <= (others => 'Z');
						oe <= '0';
						almost_done_tmp <= '0';
					else 
						if x = 0 and y = 0 then		
							almost_done_tmp <= '1';
							else
							almost_done_tmp <= '0';
						end if;
						done <= '0';
						if x = 0 then
							y_tmp <= y-1;	
							x_tmp <= to_unsigned(ResolutionX-1,SizeX);
						else
							x_tmp <= x-1;
							y_tmp <= y;
						end if;
						--ramaddr_tmp <= std_logic_vector((NOT asb) & y & x); --combineer signalen
						--ramdata_tmp <= color; -- zet data op de bus
						oe <= '1';
						draw_write <= '1'; -- vertel de controller dat je wil schrijven						
					end if;
				else
					x_tmp <= x;
					y_tmp <= y;
					--ramaddr_tmp <= (others => 'Z');
					--ramdata_tmp <= (others => 'Z');
					oe <= '0';
					draw_write <= '0';
					done <= '0';
					almost_done_tmp <= '0';
				end if;
			else 
				x_tmp <= to_unsigned(ResolutionX-1,SizeX);
				y_tmp <= to_unsigned(ResolutionY-1,SizeY);
				--ramaddr_tmp <= (others => 'Z');
				--ramdata_tmp <= (others => 'Z');
				oe <= '0';
				draw_write <= '0';
				done <= '0';
				almost_done_tmp <= '0';
			end if;
	end process;
end behaviour;