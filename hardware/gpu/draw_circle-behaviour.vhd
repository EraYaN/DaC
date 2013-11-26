library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.All;
use work.parameter_def.ALL;

architecture behaviour of draw_circle is
--signal filling : std_logic; -- used as a "state"
signal next_r_x : unsigned(SizeX-1 downto 0);
signal next_r_y : unsigned(SizeY-1 downto 0);
	signal next_done : std_logic;
	signal next_ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	signal next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);
	signal next_draw_write : std_logic;
	--signal next_filling : std_logic;
	signal r_x : signed(SizeX-1 downto 0);
	signal r_y : signed(SizeY-1 downto 0);
	signal limiet : signed(((2*SizeX)-1) downto 0);
	signal zero : signed(((2*SizeX)-1) downto 0);

begin
	process(clk)

	begin

		if rising_edge(clk) then
		  next_ramaddr <= (others => 'Z');
			next_ramdata <= (others => 'Z');
			next_draw_write <= '0';
			next_done <= '0';
			--next_filling <= '0';
			zero <= (OTHERS => '0');
			r_x <= signed(w);
			r_y <= (OTHERS => '0');
			limiet <= zero - signed(w);
			if reset = '0'then --not resetting
				if enable = '1' then --enabled
					if draw_can_access = '1' then -- RAM is free to access
						next_r_x <= unsigned(signed(x) + r_x);						
						next_r_y <= unsigned(signed(y) + r_y);
						next_ramaddr <= std_logic_vector(NOT asb & next_r_y & next_r_x); --combineer signalen
						next_ramdata <= colour; -- zet data op de bus
						next_draw_write <= '1'; -- vertel de controller dat je wil
						if to_integer(next_r_x) > to_integer(signed(x)) and to_integer(next_r_y) >= to_integer(signed(y)) then --eerste quadrant
							limiet <= limiet + signed(r_y);
							r_y <= r_y + 1;
							limiet <= limiet + signed(r_y);
							if to_integer(limiet) >= to_integer(zero) then
								limiet <= limiet - signed(r_x);
								r_x <= r_x - 1; 
								limiet <= limiet - signed(r_x);
						  end if;
						elsif next_r_x <= unsigned(x) and next_r_y > unsigned(y) then --tweede quadrant
							limiet <= limiet + signed(r_y);
							r_y <= r_y - 1;
							limiet <= limiet + signed(r_y);
							if to_integer(limiet) >= to_integer(zero) then
								limiet <= limiet - signed(r_x);
								r_x <= r_x - 1; 
								limiet <= limiet - signed(r_x);
						  end if;
						elsif next_r_x < unsigned(x) and next_r_y <= unsigned(y) then --derde quadrant
							limiet <= limiet + signed(r_y);
							r_y <= r_y - 1;
							limiet <= limiet + signed(r_y);
							if to_integer(limiet) >= to_integer(zero) then
								limiet <= limiet - signed(r_x);
								r_x <= r_x + 1; 
								limiet <= limiet - signed(r_x);
						  end if;
						elsif next_r_x >= unsigned(x) and next_r_y < unsigned(y) then --vierde quadrant
							limiet <= limiet + signed(r_y);
							r_y <= r_y + 1;
							limiet <= limiet + signed(r_y);
							if to_integer(limiet) >= to_integer(zero) then
								limiet <= limiet - signed(r_x);
								r_x <= r_x + 1; 
								limiet <= limiet - signed(r_x);
						  end if;
						
						elsif next_r_x = unsigned(signed(x) + r_x) and next_r_y = unsigned(y) then
							next_done <= '1';
						end if;
					end if;
				end if;
			end if;
			done <= next_done;
			ramaddr <= next_ramaddr;
			ramdata <= next_ramdata;
			draw_write <= next_draw_write;
			--filling <= next_filling;
		end if;
	end process;
end behaviour;

			

