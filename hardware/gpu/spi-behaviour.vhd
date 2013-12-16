LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.parameter_def.ALL;

architecture behaviour of spi is

        signal sclk_latched, sclk_old, sclk_old2 : std_logic;
        signal mosi_latched: std_logic;
        signal index: unsigned (c-1 downto 0);
        signal spi_rx_data : std_logic_vector(SizeSPIData-1 downto 0);
		  signal timer : unsigned ( 5 downto 0);

begin

--Sync process
process(clk, reset)

begin
        if( rising_edge(clk) ) then
			  if (reset = '1') then
						 spi_rx_data <= (others => '0');
						 index <= to_unsigned(SizeSPIData-1,c);
						 sclk_old <= '0';
						 sclk_latched <= '0';
						 spi_data_available <= '0';
						 mosi_latched <= '0';
						 timer <= to_unsigned(0,6);
			  else
						
						 sclk_latched <= spi_clk;
						 sclk_old <= sclk_latched;
						 sclk_old2 <= sclk_old;
						 spi_data_available <= '0';
						 mosi_latched <= spi_mosi;
									if(sclk_old2 = '0' AND sclk_old = '0' and sclk_latched = '1') then
											  spi_rx_data <= spi_rx_data(SizeSPIData-2 downto 0) & mosi_latched;
											  if(index = 0) then
														 index <= to_unsigned(SizeSPIData-1,c);
											  else
														 index <= index-1;
											  end if;
									elsif(sclk_old = '1' and sclk_latched = '0') then
											  if( index = SizeSPIData-1 ) then
														 spi_data_available <= '1';
											  end if;
									end if;
						if spi_clk = '0' then
							timer <= timer+1;
						else
							timer <= to_unsigned(0,6);						
						end if;
						if timer > 60 then
							index <= to_unsigned(SizeSPIData-1,c);
						end if;
			  end if;
	end if;
end process;

--Combinational assignments

--SPI_MISO <= TxData(SizeSPIData-1);
spi_data_rx <= spi_rx_data;

end behaviour;

