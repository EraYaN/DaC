library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.All;
use work.parameter_def.ALL;

architecture behaviour of draw_line is
signal curr_x : unsigned(SizeX-1 downto 0);
signal curr_y : unsigned(SizeY-1 downto 0);
signal err	  : unsigned(4 downto 0);
begin
	process (clk)
	variable next_done : std_logic;
	variable next_ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	variable next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);
	variable next_draw_write : std_logic;
	variable next_curr_x : unsigned(SizeX-1 downto 0);
	variable next_curr_y : unsigned(SizeY-1 downto 0);
	variable x1 : unsigned(SizeX-1 downto 0);
	variable y1 : unsigned(SizeY-1 downto 0);
	variable finished    : std_logic;
	variable first		 : std_logic;
	variable next_err	 : unsigned (4 downto 0);
	variable sx			: unsigned;
	variable sy			: unsigned;
	begin
		if rising_edge(clk) then
			next_ramaddr := (others => 'Z');
			next_ramdata := (others => 'Z');
			next_draw_write := '0';
			final_x		 := unsigned(x)+unsigned(w);
			final y		 := unsigned(y)+unsigned(h);
			next_done := '0';
			next_error := '0';
			if reset = '0' then --not resetting
				if enable = '1' then --enabled
					if draw_can_access = '1' then -- RAM is free to access
						--Hier de functie
							
								if next_curr_x < final_x then
									sx:=1;
								else
									sx := -1;
								end if;
							
								if next_curr_y < final_y then
									sy := 1;
								else
									sy := -1;
									err := w-h;
							
							if next_curr_x = final_x and next_curr_y = final_y then
							next_curr_x = final_x;
							next_curr_y = final_y;
							next_done := '1';
							end if;
							
							e2 := 2*err;
							if e2 > -h and next_done != '1' then
								err := err - h;
								next_curr_x := next_curr_x + sx;
							end if;
							
							if e2 < w and next_done != '1' then
								err := err + w;
								next_curr_y := next_curr_y + sy;
							end if;
							
						next_ramaddr := std_logic_vector(NOT asb & curr_y & curr_x); --combineer signalen
						next_ramdata := color; -- zet data op de bus
						next_draw_write := '1'; -- vertel de controller dat je wil schrijven						
						if curr_x = unsigned(x) and curr_y = unsigned(y) then
							next_done := '1';
						end if;
					end if;	
				end if;
			end if;
			err <= err;
			done <= next_done;
			ramaddr <= next_ramaddr;
			ramdata <= next_ramdata;
			draw_write <= next_draw_write;
			curr_x<= next_curr_x;
			curr_y<= next_curr_y;
		end if;
	end process;
end behaviour;