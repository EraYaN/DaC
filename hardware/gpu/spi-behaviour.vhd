LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.parameter_def.ALL;

architecture behaviour of spi is

	signal sclk_old : std_logic;
	signal next_index,index: unsigned (c-1 downto 0);
	signal spi_rx_data, next_spi_rx_data : std_logic_vector(SizeSPIData-1 downto 0);

begin

spi_seq: process(clk)
begin
	if rising_edge(clk) then
		spi_rx_data <= next_spi_rx_data;
		sclk_old <= spi_clk;
		index<=next_index;
	end if;
end process;

spi_combi: process(reset,spi_mosi,spi_rx_data,spi_clk,sclk_old,index)
begin
	if (reset = '1') then
		next_spi_rx_data <= (others => '0');
		next_index <= to_unsigned(SizeSPIData-1,c);
		spi_data_available <= '0';
	else		
		if sclk_old = '0' and spi_clk = '1' then
			next_spi_rx_data <= spi_rx_data(SizeSPIData-2 downto 0) & spi_mosi;
			if(index = 0) then
				next_index <= to_unsigned(SizeSPIData-1,c);
			else
				next_index <= index-1;				
			end if;
			spi_data_available <= '0';
		elsif sclk_old = '1' and spi_clk = '0' then
			if(index = SizeSPIData-1) then
				spi_data_available <= '1';
			else
				spi_data_available <= '0';
			end if;
			next_spi_rx_data <= spi_rx_data;
			next_index <= index;
		else
			next_spi_rx_data <= spi_rx_data;
			next_index <= index;
			spi_data_available <= '0';
		end if;
	end if;

end process;

--Combinational assignments

--SPI_MISO <= TxData(SizeSPIData-1);
spi_data_rx <= spi_rx_data;

end behaviour;



