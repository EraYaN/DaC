library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.All;
use work.parameter_def.ALL;

architecture behaviour of draw_line is
signal curr_x : unsigned(SizeX-1 downto 0);
signal curr_y : unsigned(SizeY-1 downto 0);

begin
	process (clk)
	variable almost_done: std_logic;
	variable next_done : std_logic;
	variable next_ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	variable next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);
	variable next_draw_write : std_logic;
	variable next_curr_x : unsigned(SizeX-1 downto 0);
	variable next_curr_y : unsigned(SizeY-1 downto 0);
	variable x1 : std_logic;
	variable y1 : std_logic;
	variable dx : std_logic;
	variable dy : std_logic;
	variable sx : std_logic;
	variable sy : std_logic;
	variable err : std_logic;
	variable e2 : std_logic;
	variable first : std_logic;
	begin
		if rising_edge(clk) then
		
			next_ramaddr := (others => 'Z');
			next_ramdata := (others => 'Z');
			next_draw_write := '0';
			
			if (first = '0') then
			next_curr_x := unsigned(x);
			next_curr_y := unsigned(y);
			first := '1';
			end if;
			
			next_done := '0';
			almost_done := '0';
			x1 := unsigned(x) + unsigned(w);
			y1 := unsigned(y) + unsigned(h);
			dx := abs(x1-x);
			dy := abs(y1-y);
			
			if (x < x1) then
			  sx := '1' ;
			else
			  sx := '-1';
			end if;
			
			if (y < y1) then
			  sy := '1' ;
			else
			  sy := '-1';
			end if;
			
			err := unsigned(dx) - unsigned(dy);
			e2 := '0';
			if reset = '1' then
			
			first := '0';
			
			end if;
			
			if reset = '0' then --not resetting
					if enable = '1' then --enabled
					   if draw_can_access = '1' then -- RAM is free to access
						  	----start function
						  	
						  	if (first = '0') then
						  	  --begin plot
						  	 next_curr_x := unsigned(x);
						  	 next_curr_y := unsigned(y);
						   
						    next_ramaddr := std_logic_vector(NOT asb & curr_y & curr_x); --combineer signalen
						    next_ramdata := color; -- zet data op de bus
						    next_draw_write := '1'; -- vertel de controller dat je wil schrijven
						    --end plot
						    end if;
						    
						    if (next_curr_x = unsigned(x1)) and (next_curr_y = unsigned(y1)) then 
						      --exit loop:
						      
						      if curr_x = unsigned(x1) and curr_y = unsigned(y1) then
							    almost_done := '1';
						      end if;
						      
						      if almost_done = '1'  then
						      next_done := '1';
						      end if;
						      
						    end if;
						    
						    e2 := 2* unsigned(err);
						    
						    if (unsigned(e2) > unsigned(-dy)) then
						      err := unsigned (err) - unsigned(dy);
						      next_curr_x := unsigned(x) + unsigned(sx);  
					      end if;	
					      
					      if (next_curr_x = unsigned(x1)) and (next_curr_y = unsigned(y1)) then
					      --begin plot
					      next_curr_x := unsigned(x);
						  	 next_curr_y := unsigned(y);
						   
						    next_ramaddr := std_logic_vector(NOT asb & curr_y & curr_x); --combineer signalen
						    next_ramdata := color; -- zet data op de bus
						    next_draw_write := '1'; -- vertel de controller dat je wil schrijven
                --end plot
                --exit loop:
                  
                  if curr_x = unsigned(x1) and curr_y = unsigned(y1) then
							    almost_done := '1';
						      end if;
						      
						      if almost_done = '1'  then
						      next_done := '1';
						      end if;
				        
				        end if;
				        
				        if ( unsigned(e2) < unsigned(dx)) then
				         err := unsigned(err) + unsigned(dx);
				         next_curr_y := unsigned(y) + unsigned(sy);
				        end if;
			       end if;
			    end if;
			end if;
		
		done <= next_done;
		ramaddr <= next_ramaddr;
		ramdata <= next_ramdata;
		draw_write <= next_draw_write;
		curr_x<= next_curr_x;
		curr_y<= next_curr_y;
		
		
		end if;
	end process;
end behaviour;
