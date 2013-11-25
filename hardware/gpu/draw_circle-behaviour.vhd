library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.All;
use work.parameter_def.ALL;

architecture behaviour of draw_circle is
--signal filling : std_logic; -- used as a "state"
signal r_x : unsigned(SizeX-1 downto 0);
signal r_y : unsigned(SizeY-1 downto 0);

begin

	process(clk)
	variable next_done : std_logic;
	variable next_ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	variable next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);
	variable next_draw_write : std_logic;
	--variable next_filling : std_logic;
	variable next_r_x : unsigned(SizeX-1 downto 0);
	variable next_r_y : unsigned(SizeY-1 downto 0);
	variable limiet : int;
	begin
		if rising_edge(clk) then
			next_ramaddr := (others => 'Z');
			next_ramdata := (others => 'Z');
			next_draw_write := '0';
			next_done := '0';
			--next_filling := '0';
			r_x := unsigned(w);
			r_y := '0';
			limiet := '0'-r_x;
			if reset = '0'then --not resetting
				if enable = '1' then --enabled
					if draw_can_acces = '1' then -- RAM is free to access
						next_r_x := unsigned(x) + r_x;						next_r_y := unsigned(y) + r_y;

						next_ramaddr := std_logic_vector(NOT asb & next_r_y & next_r_x); --combineer signalen
						next_ramdata := color; -- zet data op de bus
						next_draw_write := '1'; -- vertel de controller dat je wil
						if next_r_x > unsigned(x) and next_r_y >= unsigned(y) then --eerste quadrant
							limiet := limiet + r_y;
							r_y := r_y + 1;
							limiet := limiet + r_y;
							if limiet >= '0'then
								limiet := limiet - r_x;
								r_x := r_x - 1; 
								limiet := limiet - r_x;
						end if;
						if next_r_x <= unsigned(x) and next_r_y > unsigned(y) then --tweede quadrant
							limiet := limiet + r_y;
							r_y := r_y - 1;
							limiet := limiet + r_y;
							if limiet >= '0'then
								limiet := limiet - r_x;
								r_x := r_x - 1; 
								limiet := limiet - r_x;
						end if;
						if next_r_x < unsigned(x) and next_r_y <= unsigned(y) then --derde quadrant
							limiet := limiet + r_y;
							r_y := r_y - 1;
							limiet := limiet + r_y;
							if limiet >= '0'then
								limiet := limiet - r_x;
								r_x := r_x + 1; 
								limiet := limiet - r_x;
						end if;
						if next_r_x >= unsigned(x) and next_r_y < unsigned(y) then --vierde quadrant
							limiet := limiet + r_y;
							r_y := r_y + 1;
							limiet := limiet + r_y;
							if limiet >= '0'then
								limiet := limiet - r_x;
								r_x := r_x + 1; 
								limiet := limiet - r_x;
						end if;
						if next_r_x = unsigned(x) and next_r_y = unsigned(y) then
							next_done := '1';
						end if;
					end if;
				end if;
			end if;
			done <= next_done;
			ramaddr <= next_ramaddr;
			ramdata <= next_ramdata;
			draw_write <= next_draw_write;
			--filling <= next_filling;

			

