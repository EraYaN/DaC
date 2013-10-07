library IEEE;
use IEEE.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

architecture behaviour of alu is

signal  Reg3: std_logic_vector(S downto 0) := (others => '0');
signal Reg4 : std_logic_vector(3 downto 0):= (others => '0');
signal T: std_logic_vector(S-4 downto 0):= (others => '0');

begin

output_r    <= Reg3(S-1 downto 0); --maak output weer S-1 vector
status_d    <= Reg4;




process(op)
begin

    
        case op is
            when "0100" =>
                Reg3 <= std_logic_vector(signed('0' & input_a) + signed('0' & input_b)
                 + signed(T & Reg4));  --addition
		if (Reg3(S) = '1') then
			Reg4 <= "0001";
		 else
			
			Reg4 <= "0000";
		end if;
            when "0101" =>
                Reg3 <= std_logic_vector(signed('0' & input_a) 
                - signed('0' & input_b)); --A-B
		Reg4 <= "0000";
	    when "0111" =>
		Reg3 <= std_logic_vector(signed('0' & input_b) 
		- signed('0' & input_a));		--B-A
		Reg4 <= "0000";
            when "1001" =>
                Reg3 <=  (others => '0');  --Clear
		Reg4 <= (others => '0');
            when "1101" =>
                Reg3 <= ('0' & input_a) nand ('0' & input_b); --NAND gate
		Reg4 <= "0000";
            when "1110" =>
                Reg3 <= ('0' & input_a) nor ('0' & input_b); --NOR gate   
		Reg4 <= "0000";           
            when "1000" =>
                Reg3 <= ('0' & input_a) and ('0' & input_b);  --AND gate
		if (Reg3 = std_logic_vector(to_unsigned(0,S))) then
			Reg4 <= "0010";
		else
		
			Reg4 <= "0000";
		
		end if;
            when "1010" =>
                Reg3 <= ('0' & input_a) or ('0' & input_b);  --OR gate  
		Reg4 <= "0000"; 
            when "1011" =>
                Reg3 <= ('0' & input_a) xor ('0' & input_b); --XOR gate 
		Reg4 <= "0000";
	    when "1100" =>
		Reg3 <= ('0' & input_a) xnor ('0' & input_b); --XNOR gate
		Reg4 <= "0000";
	    when "0000" =>
		-- logic right shift input_A
  		   Reg3 <= "00" & input_a(S-1 downto 1); 
		   Reg4 <= "0000";
		   
	    when "0001" =>
		--logic left shift input_A
		   Reg3 <= input_a(S-1 downto 0) & '0';
		   
		   if (input_a(S-1) = '1') then
			Reg4 <= "0001";
		   else
		
			Reg4 <= "0000";
			   
		   end if;
	    when "0010" =>
		-- logic right shift input_B
  		   Reg3 <= "00" & input_b(S-1 downto 1); 
		   Reg4 <= "0000";
		   
            when "0011" =>
		--logic left shift input_B
		   Reg3 <= input_b(S-1 downto 0) & '0';
		   
		   if (input_b(S-1) = '1') then
			Reg4 <= "0001";
		   else
			
			Reg4 <= "0000";
	
		   end if;
	    when others =>
              Reg3 <= (others => '0');
	      Reg4 <= "0000";
		
        end case;      
    
   
  end process; 


end behaviour;



















































































