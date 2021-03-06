library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

architecture behaviour of ram is
   component rambank
       port(clk      :in    std_logic;
        write    :in    std_logic_vector(WORDS-1 downto 0);
        in_lines :in    std_logic_vector(WORDS*WORDSIZE-1 downto 0);
        out_lines:out   std_logic_vector(WORDS*WORDSIZE-1 downto 0));
   end component;
   
   component rammux 
	port(clk        :in    std_logic;
        d_out_muxed:out   std_logic_vector(WORDSIZE-1 downto 0);
        d_out      :in    std_logic_vector(WORDS*WORDSIZE-1 downto 0);
        d_in_muxed :in    std_logic_vector(WORDSIZE-1 downto 0);
        d_in       :out   std_logic_vector(WORDS*WORDSIZE-1 downto 0);
	sel	   :in	  std_logic_vector(ADRESSLINES-1 downto 0);
	write	   :in	  std_logic;
	write_out  :out    std_logic_vector(WORDS-1 downto 0));
   end component;
signal out_lines, in_lines :std_logic_vector(WORDS*WORDSIZE-1 downto 0);
signal write_out : std_logic_vector(WORDS-1 downto 0);
begin

rb: rambank port map (clk, write_out, in_lines,out_lines);
rm: rammux port map (clk, d_out, out_lines, d_in, in_lines, a, write, write_out);
 

end behaviour;
