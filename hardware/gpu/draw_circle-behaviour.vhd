library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.All;
use work.parameter_def.ALL;

architecture behaviour of draw_circle is
--signal filling : std_logic; -- used as a "state"
signal tot_r_x : unsigned(SizeX-1 downto 0);
signal tot_r_y : unsigned(SizeY-1 downto 0);
	signal next_done : std_logic;
	signal next_ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	signal next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);
	signal next_draw_write : std_logic;
	--signal next_filling : std_logic;
	signal r_x : signed(SizeX-1 downto 0);
	signal r_y : signed(SizeY-1 downto 0);
	signal limiet : signed(((2*SizeX)-1) downto 0);
	constant zero : signed(((2*SizeX)-1) downto 0):=(OTHERS => '0');


begin
	process(clk)
	   begin
		if rising_edge(clk) then
  		   next_ramaddr <= (others => 'Z');
		   next_ramdata <= (others => 'Z');
		   next_draw_write <= '0';
		   next_done <= '0';
		   --next_filling <= '0';
		   r_x <= signed(w);
		   r_y <= (OTHERS => '0');		
		   limiet <= zero -(signed(w)+1);
			if reset = '0'then --not resetting
				if enable = '1' then --enabled
					if draw_can_access = '1' then -- RAM is free to access
						tot_r_x <= unsigned(signed(x) + r_x);						
						tot_r_y <= unsigned(signed(y) + r_y);
						next_ramaddr <= std_logic_vector(NOT asb & tot_r_y & tot_r_x); --combineer signalen
						next_ramdata <= colour; -- zet data op de bus
						next_draw_write <= '1'; -- vertel de controller dat je wil
						if r_x > 0 and r_y >= 0	then	--eerste quadrant			   
						   if r_x >= r_y then 
							   limiet <= limiet + r_y*2 + 1;
							   r_y <= r_y + 1;
                        if limiet > 0 then
                            limiet <= limiet +1;
                        end if;
                        
							   if limiet >= 0 then
								   limiet <= limiet - r_x*2 - 1;
								   r_x <= r_x - 1; 
								   if limiet < 0 then
                            limiet <= limiet -1;
                        end if;
						    end if;
						 	--elsif to_integer(r_x) < to_integer(r_y) then --eerste quadrant
							   --limiet <= limiet + signed(r_y);
							   --r_y <= r_y + 1;
							   --limiet <= limiet + signed(r_y);
							   --if to_integer(limiet) >= to_integer(zero) then
								   --limiet <= limiet - signed(r_x);
								  -- r_x <= r_x - 1; 
								   --limiet <= limiet - signed(r_x);
						      -- end if;
						 	
						 	else
							   next_done <= '1';
							end if;
			
						end if;
		
						--elsif tot_r_x <= unsigned(x) and tot_r_y > unsigned(y) then --tweede quadrant
							--limiet <= limiet + signed(r_y);
							--r_y <= r_y - 1;
							--limiet <= limiet + signed(r_y);
							--if to_integer(limiet) >= to_integer(zero) then
							--	limiet <= limiet - signed(r_x);
							--	r_x <= r_x - 1; 
							--	limiet <= limiet - signed(r_x);
						 -- end if;
						--elsif tot_r_x < unsigned(x) and tot_r_y <= unsigned(y) then --derde quadrant
							--limiet <= limiet + signed(r_y);
							--r_y <= r_y - 1;
							--limiet <= limiet + signed(r_y);
						--	if to_integer(limiet) >= to_integer(zero) then
						--		limiet <= limiet - signed(r_x);
								--r_x <= r_x + 1; 
						--		limiet <= limiet - signed(r_x);
						--  end if;
						--elsif tot_r_x >= unsigned(x) and tot_r_y < unsigned(y) then --vierde quadrant
							--limiet <= limiet + signed(r_y);
						--	r_y <= r_y + 1;
						--	limiet <= limiet + signed(r_y);
						--	if to_integer(limiet) >= to_integer(zero) then
						--		limiet <= limiet - signed(r_x);
						--		r_x <= r_x + 1; 
							--	limiet <= limiet - signed(r_x);
						  --end if;
						
						--elsif tot_r_x = unsigned(signed(x) + r_x) and tot_r_y = unsigned(y) then
						--	next_done <= '1';
						--end if;
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

			

