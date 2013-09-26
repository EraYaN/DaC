library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

architecture behaviour of rammux is
begin
--process(sel)
--begin
--GEN_MUX: 
  --for I in WORDS-1 downto 0 loop
     	--IF sel = std_logic_vector(to_unsigned(I,ADRESSLINES)) then
	  --d_in((I+1)*WORDSIZE-1 downto I*WORDSIZE) <= d_in_muxed; 
	  --d_out_muxed <= d_out((I+1)*WORDSIZE-1 downto I*WORDSIZE);  
	--end if;       
   --end loop GEN_MUX;
--GEN_MUX: 
  
--end process;

GEN_MUX: for I in WORDSIZE-1 downto 0 generate
     	d_out_muxed(I) <= d_out(I + to_integer(unsigned(sel)) * WORDSIZE);      
   end generate GEN_MUX;

end behaviour;














