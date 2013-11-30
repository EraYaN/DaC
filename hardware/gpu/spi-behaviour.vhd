LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.parameter_def.ALL;

architecture behaviour of spi is

	signal sclk_latched, sclk_old : std_logic;
	signal ss_latched, ss_old : std_logic;
	signal mosi_latched: std_logic;
	--signal TxData : std_logic_vector(SizeSPIData-1 downto 0);
	signal index: unsigned (c-1 downto 0);
	signal spi_rx_data : std_logic_vector(SizeSPIData-1 downto 0);

begin

--Sync process
process(clk, reset)

begin
	if (reset = '1') then

		spi_rx_data <= (others => '0');
		index <= to_unsigned(SizeSPIData-1,c);
		--TxData <= (others => '0');
		sclk_old <= '0';
		sclk_latched <= '0';
		ss_old <= '0';
		ss_latched <= '0';
		spi_data_available <= '0';
		mosi_latched <= '0';

	elsif( rising_edge(clk) ) then

		sclk_latched <= spi_clk;
		sclk_old <= sclk_latched;
		ss_latched <= spi_ss;
		ss_old <= ss_latched;
		spi_data_available <= '0';
		mosi_latched <= spi_mosi;

		--if(DataToTxLoad = '1') then
		--	TxData <= DataToTx;
		--end if;

		if (ss_old = '1' and ss_latched = '0') then
			index <= to_unsigned(SizeSPIData-1,c);
		end if;

		if( ss_latched = '0' ) then
			if(sclk_old = '0' and sclk_latched = '1') then
				spi_rx_data <= spi_rx_data(SizeSPIData-2 downto 0) & mosi_latched;
				if(index = 0) then
					index <= to_unsigned(SizeSPIData-1,c);
					spi_data_available <= '1';
				else
					index <= index-1;
				end if;
			elsif(sclk_old = '1' and sclk_latched = '0') then
				--if( index = SizeSPIData-1 ) then
				--	spi_data_available <= '1';
				--end if;
			--	TxData <= TxData(SizeSPIData-2 downto 0) & '1';
			end if;
		end if;
	end if;
end process;

--Combinational assignments

--SPI_MISO <= TxData(SizeSPIData-1);
spi_data_rx <= spi_rx_data;

end behaviour;
