LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use work.parameter_def.ALL;

ENTITY spi IS
  GENERIC(
    cpol    : STD_LOGIC := '0';  --spi clock polarity mode
    cpha    : STD_LOGIC := '0'  --spi clock phase mode
	 );
  PORT(
    sclk         : IN     STD_LOGIC;  --spi clk from master
    reset_n      : IN     STD_LOGIC;  --active low reset
    ss_n         : IN     STD_LOGIC;  --active low slave select
    mosi         : IN     STD_LOGIC;  --master out, slave in
    rx_req       : IN     STD_LOGIC;  --'1' while busy = '0' moves data to the rx_data output
    st_load_en   : IN     STD_LOGIC;  --asynchronous load enable
    st_load_trdy : IN     STD_LOGIC;  --asynchronous trdy load input
    st_load_rrdy : IN     STD_LOGIC;  --asynchronous rrdy load input
    st_load_roe  : IN     STD_LOGIC;  --asynchronous roe load input
    tx_load_en   : IN     STD_LOGIC;  --asynchronous transmit buffer load enable
    tx_load_data : IN     STD_LOGIC_VECTOR(SizeSPIData-1 DOWNTO 0);  --asynchronous tx data to load
    trdy         : BUFFER STD_LOGIC := '0';  --transmit ready bit
    rrdy         : BUFFER STD_LOGIC := '0';  --receive ready bit
    roe          : BUFFER STD_LOGIC := '0';  --receive overrun error bit
    rx_data      : OUT    STD_LOGIC_VECTOR(SizeSPIData-1 DOWNTO 0) := (OTHERS => '0');  --receive register output to logic
    busy         : OUT    STD_LOGIC := '0';  --busy signal to logic ('1' during transaction)
    miso         : OUT    STD_LOGIC := 'Z'); --master in, slave out
END spi;