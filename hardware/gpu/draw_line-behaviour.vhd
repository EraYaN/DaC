library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.parameter_def.all;

architecture behaviour of draw_line is
	signal setup, next_setup : std_logic;
	signal cx, next_cx : signed(SizeX-1 downto 0); --current x
	signal cy, next_cy : signed(SizeY-1 downto 0); --current y	
	signal err, next_err : signed(SizeX+2 downto 0);

	signal next_done, next_draw_write : std_logic;
	signal next_ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	signal next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);

	signal dx_debug : signed(SizeX downto 0);
	signal dy_debug : signed(SizeY downto 0);
	
begin
	draw_line_seq: process (clk)
		
	begin
		if rising_edge(clk) then
			setup <= next_setup;
			cx <= next_cx;
			cy <= next_cy;
			err <= next_err;
			done <= next_done;
			draw_write <= next_draw_write;
			ramaddr <= next_ramaddr;
			ramdata <= next_ramdata;
		end if;
	end process;

	draw_line_comb: process (reset, enable, draw_can_access, asb, x0, x1, y0, y1, color, cx, cy, err, setup)
		variable e2 : signed(SizeX+2 downto 0);
		variable dx : signed(SizeX downto 0);
		variable dy : signed(SizeY downto 0);
		variable sx, sy : signed(1 downto 0);
		variable next_err_var : signed(SizeX+2 downto 0);
	begin

		--defaults
		next_done <= '0';
		next_draw_write <= '0';
		next_ramaddr <= (others => 'Z');
		next_ramdata <= (others => 'Z');
		next_err <= err;
		next_err_var := err;
		next_cx <= cx;
		next_cy <= cy;

		if reset = '1' then
			--reset
			next_setup <= '1';
			next_cx <= (others => '0');
			next_cy <= (others => '0');
			next_err <= (others => '0');
			next_done <= '0';
			next_draw_write <= '0';
			next_ramaddr <= (others => 'Z');
			next_ramdata <= (others => 'Z');
		elsif enable = '1' and draw_can_access = '1' then
			--init
			dx := abs(signed(resize(unsigned(x1), dx'length) - resize(unsigned(x0), dx'length)));
			dy := abs(signed(resize(unsigned(y1), dy'length) - resize(unsigned(y0), dy'length)));
			if x0 < x1 then sx := to_signed(1, sx'length); else sx := to_signed(-1, sx'length); end if;
			if y0 < y1 then sy := to_signed(1, sy'length); else sy := to_signed(-1, sy'length); end if;

			dx_debug <= dx;
			dy_debug <= dy;

			if setup = '1' then
				next_cx <= signed(x0);
				next_cy <= signed(y0);					
				next_err <= resize(dx - dy, next_err'length);
				next_setup <= '0';
			else
				--draw next pixel
				next_ramaddr <= std_logic_vector(NOT asb & cy & cx);
				next_ramdata <= color;
				next_draw_write <= '1';

				--are we done?
				if cx = signed(x1) and cy = signed(y1) then
					next_done <= '1';
					next_setup <= '1';
				else
					e2 := err sll 1; --multiply by 2

					if e2 > -dy then
						next_err_var := next_err_var - dy;
						next_cx <= cx + sx;
					end if;

					if not ((cx + sx) = signed(x1) and (cy + sy) = signed(y1)) and e2 < dx then
						next_err_var := next_err_var + dx;
						next_cy <= cy + sy;
					end if;
					next_setup <= '0';
				end if;		

				next_err <= next_err_var;	
			end if;
		end if;
	end process;
end behaviour;
