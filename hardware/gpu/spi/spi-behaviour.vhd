LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.parameter_def.ALL;

architecture behaviour of spi is

	signal SCLK_latched, SCLK_old : std_logic;
	signal SS_latched, SS_old : std_logic;
	signal MOSI_latched: std_logic;
	signal TxData : std_logic_vector(SizeSPIData-1 downto 0);
	signal index: unsigned (c-1 downto 0);
	signal RxdData : std_logic_vector(SizeSPIData-1 downto 0);

begin

--Sync process

	process(clk, reset)

	begin
		if (reset = '1') then

			RxdData <= (others => '0');
			index <= to_unsigned(SizeSPIData-1,c);
			TxData <= (others => '0');
			SCLK_old <= '0';
			SCLK_latched <= '0';
			SS_old <= '0';
			SS_latched <= '0';
			SPI_DONE <= '0';
			MOSI_latched <= '0';

		elsif( rising_edge(clk) ) then

			SCLK_latched <= SPI_CLK;
			SCLK_old <= SCLK_latched;
			SS_latched <= SPI_SS;
			SS_old <= SS_latched;
			SPI_done <= '0';
			MOSI_latched <= SPI_MOSI;

			if(DataToTxLoad = '1') then
				TxData <= DataToTx;
			end if;

			if (SS_old = '1' and SS_latched = '0') then
				index <= to_unsigned(SizeSPIData-1,c);
			end if;

			if( SS_latched = '0' ) then
				if(SCLK_old = '0' and SCLK_latched = '1') then
					RxdData <= RxdData(SizeSPIData-2 downto 0) & MOSI_latched;
					if(index = 0) then
						index <= to_unsigned(SizeSPIData-1,c);
					else
						index <= index-1;
					end if;
				elsif(SCLK_old = '1' and SCLK_latched = '0') then
					if( index = SizeSPIData-1 ) then
						SPI_DONE <= '1';
					end if;
					TxData <= TxData(SizeSPIData-2 downto 0) & '1';
				end if;
			end if;
		end if;
	end process;

--Combinational assignments

SPI_MISO <= TxData(SizeSPIData-1);
DataRxd <= RxdData;

end behaviour;