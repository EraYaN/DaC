library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.parameter_def_pkg.ALL;

entity spi is
    Port ( SCLK : in  STD_LOGIC;
           SS   : in  STD_LOGIC;
           MOSI : in  STD_LOGIC;
           MISO : out  STD_LOGIC;
           Dout : out  STD_LOGIC_VECTOR (SizeSPIData-1 downto 0);
           Din  : in  STD_LOGIC_VECTOR (SizeSPIData-1 downto 0));
end SPI_Slave;

architecture Behavioral of spi is
signal dsr  : STD_LOGIC_VECTOR (SizeSPIData-1 downto 0);
begin
  -- Parallel-Eingänge --> MISO
  process (SS, Din, SCLK)   
  begin
     if (SS='1') then
        dsr <= Din;
     elsif rising_edge(SCLK) then               -- mit der steigenden SCLK-Flanke 
        dsr <= dsr(dsr'left-1 downto 0) & MOSI; -- wird MOSI eingetaktet
     end if;
  end process;
  MISO <= dsr(dsr'left) when SS='0' else 'Z';   -- und MISO aktualisiert
  
  -- Parallel-Ausgänge übernehmen mit steigender SS-Flanke 
  process (SS)   
  begin
     if rising_edge(SS) then  -- Device wird deselektiert
        Dout <= dsr;          -- Ausgangssignale an die Pins durchgeben
     end if;
  end process;

end Behavioral;
