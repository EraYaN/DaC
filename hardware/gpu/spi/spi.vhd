LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.parameter_def.ALL;

use IEEE.math_real.ceil;
use IEEE.math_real.log2;

entity spi is
	generic (
	 	c : integer := integer(ceil(log2(real(SizeSPIData))))
	);
	port (
		reset : in std_logic;
		clk : in std_logic;
		SPI_CLK : in std_logic;
		SPI_SS : in std_logic;
		SPI_MOSI : in std_logic;
		SPI_MISO : out std_logic;
		SPI_DONE : out std_logic;
		DataToTx : in std_logic_vector(SizeSPIData-1 downto 0);
		DataToTxLoad: in std_logic;
		DataRxd : out std_logic_vector(SizeSPIData-1 downto 0)
	);
end spi;