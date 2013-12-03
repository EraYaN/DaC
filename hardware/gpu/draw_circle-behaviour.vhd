library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.All;
use work.parameter_def.ALL;

architecture behaviour of draw_circle is
	signal c_done : std_logic;
	signal c_done_temp : std_logic;
	signal next_ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	signal next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);
	signal tot_r_x, next_tot_r_x: unsigned(SizeX-1 downto 0);
  signal tot_r_y, next_tot_r_y: unsigned(SizeY-1 downto 0);
	signal r_x, next_r_x : signed(SizeX-1 downto 0);
	signal r_y, next_r_y  : signed(SizeY-1 downto 0);
	signal limiet, next_limiet : signed(((2*SizeX)-1) downto 0);
	signal oe : std_logic;
	constant zero : signed(((2*SizeX)-1) downto 0):=(OTHERS => '0');

begin
  draw_circle_seq:	process (clk)
    begin
      if rising_edge(clk) then
        r_x <= next_r_x;
        r_y <= next_r_y;
        tot_r_x <= next_tot_r_x;
        tot_r_y <= next_tot_r_y;
        limiet <= next_limiet;
		  end if;
		end process;
		
	ramaddr <= next_ramaddr WHEN oe = '1' ELSE (others => 'Z');
	ramdata <= colour WHEN oe = '1' ELSE (others => 'Z');
	next_ramaddr <= std_logic_vector((NOT asb) & tot_r_y & tot_r_x);
		 
  draw_pixel_combi:	process(reset, enable, draw_can_access, r_x, r_y, tot_r_x, tot_r_y, limiet)		
	 begin
	   	next_r_x <= signed(w);
		  next_r_y <= (OTHERS => '0');		
	   	next_tot_r_x <= unsigned(signed(x) + next_r_x);						
			next_tot_r_y <= unsigned(signed(y) + next_r_y);
			next_limiet <= zero -(signed(w)+1);
			
	   	if reset = '0' and enable = '1' then
	   	   if draw_can_access = '1' then  -- RAM is free to access							
				  oe <= '1';
				  draw_write<= '1'; 
				  done <= '0'; 
				    if next_r_x > 0 and next_r_y >= 0	then	--eerste quadrant			   
						   if next_r_x >= next_r_y then 
							   next_limiet <= next_limiet + next_r_y*2 + 1;
							   next_r_y <= next_r_y + 1;
                    if next_limiet > 0 then
                          next_limiet <= next_limiet +1;
                    end if;
                        
							      if next_limiet >= 0 then
								      next_limiet <= next_limiet - next_r_x*2 - 1;
								      next_r_x <= next_r_x - 1; 
								      if next_limiet < 0 then
                        next_limiet <= next_limiet -1;
                      end if;
						        end if;
						    end if;
						 elsif to_integer(r_x) < to_integer(r_y) then
						     done <= '1';
						 end if; 
			     else 
			       next_r_x <= r_x;
              next_r_y <= r_y;
				      next_tot_r_x <= tot_r_x;
              next_tot_r_y <= tot_r_y;
              next_limiet <= limiet;				  
				      oe <= '0';				
				      done <= '1'; 
				   
				      draw_write <= '0';
			     end if;
		  else
		   next_r_x <= (others => '0');
       next_r_y <= (others => '0');
			 next_tot_r_x <= (others => '0');
       next_tot_r_y <= (others => '0');
       next_limiet <= (others => '0');
			 done <= '0';
			 draw_write <= '0';
			 oe <= '0';	
		  end if;
		  
		 end process;
	end behaviour;
		

								 	--elsif to_integer(r_x) < to_integer(r_y) then --eerste quadrant
							   --limiet <= limiet + signed(r_y);
							   --r_y <= r_y + 1;
							   --limiet <= limiet + signed(r_y);
							   --if to_integer(limiet) >= to_integer(zero) then
								   --limiet <= limiet - signed(r_x);
								  -- r_x <= r_x - 1; 
								   --limiet <= limiet - signed(r_x);
						      -- end if;
					
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
					--filling <= next_filling;

			

