library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture behaviour of set_pixel is
signal w : std_logic := '0';

begin
address <= std_logic_vector(Y & X & ASB);
data <= color;


 
process(clk, reset)

begin
	if (rising_edge(clk)) then
		if(reset = '0') then
			if( w ='0') then
				w <= '1';
			elsif ( w = '1') then
				w <= '0';
			end if; 
		elsif(reset = '1') then
			address <= (others => '0');
			data <= (others => '0');
			w <='0';
 		end if;
	end if;
end process;


		

end behaviour;





