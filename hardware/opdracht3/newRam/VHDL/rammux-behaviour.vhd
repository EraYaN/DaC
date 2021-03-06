library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

architecture behaviour of rammux is
begin
process(sel)
begin
write_out<=(others=>'0');
drive_out<=(others=>'0');
GEN_MUX: for I in 0 to WORDS-1 loop
IF to_integer(unsigned(sel)) = I then
  --d_in ((I+1)*WORDSIZE-1 downto I*WORDSIZE) <= d_in_muxed; 
  --d_out_muxed <= d_out((I+1)*WORDSIZE-1 downto I*WORDSIZE); 
  write_out(I) <= write;
  drive_out(I) <= '1';
end if;
end loop GEN_MUX;

end process;

---GEN_MUX: for I in WORDSIZE-1 downto 0 generate
       --d_out_muxed(I) <= d_out(I + to_integer(unsigned(sel)) * WORDSIZE);     
  --d_in(I + to_integer(unsigned(sel)) * WORDSIZE) <= d_in_muxed(I);    
   --end generate GEN_MUX;



end behaviour; 




















