library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.All;
use work.parameter_def.ALL;

architecture behaviour of draw_line is
--signal x_final : unsigned(SizeX-1 downto 0);
--signal y_final : unsigned(SizeY-1 downto 0);

signal jorden :std_logic_vector(SizeX-1 downto 0);


begin
draw_line:	process (clk,reset)
	variable almost_done: std_logic;
	variable next_done : std_logic;
	variable next_ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	variable next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);
	variable next_draw_write : std_logic;
	variable curr_x : unsigned(SizeX-1 downto 0);
	variable curr_y : unsigned(SizeY-1 downto 0);
	variable next_curr_x : unsigned(SizeX-1 downto 0);
	variable next_curr_y : unsigned(SizeY-1 downto 0);
	variable x1 : unsigned(SizeX-1 downto 0);
	variable y1 : unsigned(SizeY-1 downto 0);
	variable dx : unsigned(SizeX-1 downto 0);
	variable dy : unsigned(SizeY-1 downto 0);
	variable sx : std_logic;
	variable sy : std_logic;
	variable err : unsigned(SizeX-1 downto 0);
	variable e2 : unsigned(SizeX-1 downto 0);
	variable first : std_logic;
	variable next_err: unsigned(SizeX-1 downto 0);
	begin
	  jorden <= (others => '0');
	  if reset = '1' then
			
			
			first := '0';
			
			end if;
	  
		if rising_edge(clk) then
		
			next_ramaddr := (others => 'Z');
			next_ramdata := (others => 'Z');
			next_draw_write := '0';
			
			if (first = '0') then
			next_curr_x := unsigned(x);
			next_curr_y := unsigned(y);
			next_done := '0';
			almost_done := '0';
			x1 := unsigned(x) + unsigned(w);
			y1 := unsigned(y) + unsigned(h);
			dx := unsigned(w);
			dy := unsigned(h);
			
			if (unsigned(x) < x1) then
			  sx := '1' ;
			else
			  sx := '0';
			end if;
			
			if (unsigned(y) < y1) then
			  sy := '1' ;
			else
			  sy := '0';
			end if;
			
			err := dx - dy;
			e2 := unsigned(jorden);
			next_err := unsigned(jorden);
			first := '1';
			end if;
			
			
			
			
			if reset = '0' then --not resetting
					if enable = '1' then --enabled
					   if draw_can_access = '1' then -- RAM is free to access
						  	----start function
						  	
						  	
						  	  --begin plot
						  	 curr_x := next_curr_x;
						  	 curr_y := next_curr_y;
						  	 err := next_err;
						   
						    next_ramaddr := std_logic_vector(NOT asb & curr_y & curr_x); --combineer signalen
						    next_ramdata := color; -- zet data op de bus
						    next_draw_write := '1'; -- vertel de controller dat je wil schrijven
						    --end plot
						    
						    
						    if (next_curr_x = unsigned(x1)) and (next_curr_y = unsigned(y1)) then 
						      --exit loop:
						      
						      if almost_done = '1'  then
						      next_done := '1';
						      end if;
						      
						      if curr_x = unsigned(x1) and curr_y = unsigned(y1) then
							    almost_done := '1';
						      end if;
						      
						      
						      
						    end if;
						    
						    e2 := unsigned(err) + unsigned(err); -- 2 * err
						    
						    if (unsigned(e2) > unsigned(0-dy)) then
						      next_err := unsigned (err) - unsigned(dy);
						      if (sx = '1') then
						      next_curr_x := unsigned(curr_x) + 1;
						      elsif (sx = '0') then
						      next_curr_x := unsigned(curr_x) - 1;
						      end if;  
					      end if;	
					      
					      if (next_curr_x = unsigned(x1)) and (next_curr_y = unsigned(y1)) then
					      --begin plot
					      --curr_x <= next_curr_x;
						  	 --curr_y <= next_curr_y;
						   
						    next_ramaddr := std_logic_vector(NOT asb & next_curr_y & next_curr_x); --combineer signalen
						    next_ramdata := color; -- zet data op de bus
						    next_draw_write := '1'; -- vertel de controller dat je wil schrijven
                --end plot
                --exit loop:
                  if almost_done = '1'  then
						      next_done := '1';
						      end if;
                  
                  
                  if next_curr_x = unsigned(x1) and next_curr_y = unsigned(y1) then
							    almost_done := '1';
						      end if;
						      
						      
				        
				        end if;
				        
				        if ( unsigned(e2) < unsigned(dx)) then
				         next_err := unsigned(err) + unsigned(dx);
				         if (sy = '1') then
				         next_curr_y := unsigned(curr_y) + 1 ;
				         elsif (sy = '0') then
				         next_curr_y := unsigned(curr_y) - 1;
				        end if;
			       end if;
			    end if;
			end if;
		
		done <= next_done;
		ramaddr <= next_ramaddr;
		ramdata <= next_ramdata;
		draw_write <= next_draw_write;
		--x_final<= next_curr_x;
		--y_final<= next_curr_y;
		
		
		end if;
		end if;
	end process;
end behaviour;
