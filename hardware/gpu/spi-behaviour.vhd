LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.parameter_def.ALL;

architecture behaviour of spi is
	signal index: unsigned (c-1 downto 0);
	signal spi_rx_data: std_logic_vector(SizeSPIData-1 downto 0);
begin

-- spi_seq2 : process(clk,reset)
-- begin
	-- if reset = '1' then
		
	-- elsif rising_edge(clk) then
		--if spi_clk = '1' then
			
		--end if;
	-- end if;
-- end process;


spi_seq : process(spi_clk, reset)
begin
	if reset = '1' then
		spi_rx_data <= (others => '0');
		index <= to_unsigned(SizeSPIData-1,c);		
		spi_data_available <= '0';
	elsif rising_edge(spi_clk) then
		spi_rx_data <= spi_rx_data(SizeSPIData-2 downto 0) & spi_mosi;		
		
		if index = 0 then
			spi_data_available <= '1';
		else
			spi_data_available <= '0';
		end if;
		if index = 0 then
			index <= to_unsigned(SizeSPIData-1,c);
		else
			index <= index-1;				
		end if;
	end if;
end process;

spi_data_rx <= spi_rx_data;
end behaviour;



