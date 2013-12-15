library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.parameter_def.all;

architecture behaviour of draw_rect is

	signal setup, next_setup : std_logic;
	signal cx, next_cx : unsigned(SizeX-1 downto 0); --current x
	signal cy, next_cy : unsigned(SizeY-1 downto 0); --current y	

begin
	--combinatorial RAM interaction
	ramaddr <= std_logic_vector((NOT asb) & cy & cx) WHEN draw_write = '1' ELSE (others => 'Z');
	ramdata <= color WHEN draw_write = '1' ELSE (others => 'Z');

	--sequential logic (statereg)
	draw_rect_seq: process (clk)		
	begin
		if rising_edge(clk) then
			if reset = '1' then
				setup <= '0';
				cx <= (others => '0');
				cy <= (others => '0');
			else
				setup <= next_setup;
				cx <= next_cx;
				cy <= next_cy;
			end if;
		end if;
	end process;	

	--combinatorial logic (draw logic and arithmetic)
	draw_rect_comb: process (enable, draw_can_access, x0, y0, x1, y1, cx, cy, setup)

	begin

		if enable = '1' xor enablef = '1' then
			if draw_can_access = '1' then
				if setup = '1' then
					done <= '0';
					draw_write <= '0';
					next_cx <= unsigned(x0);
					next_cy <= unsigned(y0);
					next_setup <= '0';
				else
					--defaults
					next_cx <= cx;
					next_cy <= cy;

					--draw next pixel
					draw_write <= '1';

					--are we done?
					if cx = unsigned(x1) and cy = unsigned(y1) then
						done <= '1';
						next_setup <= '1';
					else
						done <= '0';
						next_setup <= '0';
						if cy = unsigned(y0) or cy = unsigned(y1) or enablef = '1' then
							if cx = unsigned(x1) then
								next_cx <= unsigned(x0);
								next_cy <= cy + 1;
							else
								next_cx <= cx + 1;
							end if;
						else 
							if cx = unsigned(x0) then
								next_cx <= unsigned(x1);
							elsif cx = unsigned(x1) then
								next_cx <= unsigned(x0);
								next_cy <= cy + 1;
							end if;
						end if;
					end if;						
				end if;
			else
				next_setup <= setup;
				next_cx <= cx;
				next_cy <= cy;
				done <= '0';
				draw_write <= '0';
			end if;
		else
			next_setup <= '1';
			next_cx <= (others => '0');
			next_cy <= (others => '0');
			done <= '0';
			draw_write <= '0';
		end if;
	end process;
end behaviour;