library IEEE;
use IEEE.std_logic_1164.ALL;
use work.Bitsize.all;

architecture behaviour of tb is
component alu
    port(
	
	input_a     :in    std_logic_vector (S-1 downto 0);
        input_b     :in    std_logic_vector (S-1 downto 0);
       
        op          :in    std_logic_vector (3 downto 0);
        output_r    :out   std_logic_vector (S-1 downto 0);
	status_d	   :out   std_logic_vector (3 downto 0)
        );
    end component;

	
	signal input_a, input_b, output_r : std_logic_vector(S-1 downto 0);
	signal op, status_d : std_logic_vector (3 downto 0);

	begin 
		input_a <= "11110000" after 0 ns;
		input_b <= "10101010" after 0 ns;
		
		
		op	<=      "0000" after 0 ns,
			        "0001" after 200 ns,
				"0010" after 400 ns,
				"0011" after 600 ns,
				"0100" after 800 ns,
				"0101" after 1000 ns,
				"0110" after 1200 ns,
				"0111" after 1400 ns,
				"1000" after 1600 ns,
				"1001" after 1800 ns,
				"1010" after 2000 ns,
				"1011" after 2200 ns,
				"1100" after 2400 ns,
				"1101" after 2600 ns,
				"1110" after 2800 ns,
				"1111" after 3000 ns;

lbl0: alu port map ( input_a, input_b, op, output_r, status_d);
				
end behaviour;

















