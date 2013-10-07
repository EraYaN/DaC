library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

architecture behaviour of ram is
   component rambank
       port(clk      :in    std_logic;
        write    :in    std_logic_vector(WORDS-1 downto 0);
	drive    :in    std_logic_vector(WORDS-1 downto 0);
        in_lines :in    std_logic_vector(WORDS*WORDSIZE-1 downto 0);
        out_lines:out   std_logic_vector(WORDS*WORDSIZE-1 downto 0));
   end component;
   
   component rammux 
	port(clk        :in    std_logic;
       	sel     :in    std_logic_vector(ADRESSLINES-1 downto 0);
	write     :in    std_logic;
	write_out  :out   std_logic_vector(WORDS-1 downto 0);	
  	drive_out  :out   std_logic_vector(WORDS-1 downto 0));
   end component;
signal out_lines, in_lines :std_logic_vector(WORDS*WORDSIZE-1 downto 0);
signal write_out : std_logic_vector(WORDS-1 downto 0);
signal drive_out : std_logic_vector(WORDS-1 downto 0);
begin

process(addr)
begin
d_out <= (others=>'Z');
in_lines <= (others=>'Z');
GEN_MUX_IN: for I in 0 to WORDS-1 loop
  in_lines ((I+1)*WORDSIZE-1 downto I*WORDSIZE) <= d_in; 
 d_out <= out_lines((I+1)*WORDSIZE-1 downto I*WORDSIZE); 
end loop GEN_MUX_IN;
end process;

rb: rambank port map (clk, write_out, drive_out, in_lines,out_lines);
rm: rammux port map (clk, addr, write, write_out,drive_out);
 

end behaviour;









































