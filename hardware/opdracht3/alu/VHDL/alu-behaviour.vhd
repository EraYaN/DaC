library IEEE;
use IEEE.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

architecture behaviour of alu is

signal Reg1, Reg2, Reg3: std_logic_vector(S-1 downto 0) := (others => '0');
signal Reg4 : std_logic_vector(3 downto 0);
begin
Reg1        <= input_A;
Reg2        <= input_B;
output_R    <= Reg3;
Status_D    <= Reg4;

process(Clk)
begin

    
        case Op is
            when "0100" =>
                Reg3 <= std_logic_vector(signed(Reg1) + signed(Reg2) + signed(Reg4));  --addition
		if (Reg3(S-1) = '1') then
			Reg4 <= "0001";
		 else
			
			Reg4 <= "0000";
		end if;
            when "0101" =>
                Reg3 <= std_logic_vector(signed(Reg1) - signed(Reg2)); --A-B
		Reg4 <= "0000";
	    when "0111" =>
		Reg3 <= std_logic_vector(signed(Reg2) - signed(Reg1));		--B-A
		Reg4 <= "0000";
            when "1001" =>
                Reg3 <=  (others => '0');  --Clear
		Reg4 <= (others => '0');
            when "1101" =>
                Reg3 <= Reg1 nand Reg2; --NAND gate
		Reg4 <= "0000";
            when "1110" =>
                Reg3 <= Reg1 nor Reg2; --NOR gate   
		Reg4 <= "0000";           
            when "1000" =>
                Reg3 <= Reg1 and Reg2;  --AND gate
		if (Reg3 = std_logic_vector(to_unsigned(0,S))) then
			Reg4 <= "0010";
		else
		
			Reg4 <= "0000";
		
		end if;
            when "1010" =>
                Reg3 <= Reg1 or Reg2;  --OR gate  
		Reg4 <= "0000"; 
            when "1011" =>
                Reg3 <= Reg1 xor Reg2; --XOR gate 
		Reg4 <= "0000";
	    when "1100" =>
		Reg3 <= Reg1 xnor Reg2; --XNOR gate
		Reg4 <= "0000";
	    when "0000" =>
		-- logic right shift input_A
  		   Reg3 <= '0' & Reg1(S-1 downto 1); 
		   Reg4 <= "0000";
		   
	    when "0001" =>
		--logic left shift input_A
		   Reg3 <= Reg1(S-2 downto 0) & '0';
		   
		   if (Reg3(S-1) = '1') then
			Reg4 <= "0001";
		   else
		
			Reg4 <= "0000";
			   
		   end if;
	    when "0010" =>
		-- logic right shift input_B
  		   Reg3 <= '0' & Reg2(S-1 downto 1); 
		   Reg4 <= "0000";
		   
            when "0011" =>
		--logic left shift input_B
		   Reg3 <= Reg2(S-2 downto 0) & '0';
		   
		   if (Reg3(S-1) = '1') then
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

















