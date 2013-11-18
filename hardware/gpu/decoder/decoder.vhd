library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

entity decoder is
	port(
		DI		:in		std_logic_vector(7 downto 0);	--Data In
		DO		:out	std_logic_vector(7 downto 0);	--Data Out
		DR		:in		std_logic;						--Data Ready
		DAV		:in		std_logic;						--Data Available
		RTS		:out	std_logic;						--Request To Send
		X0		:out	std_logic_vector(7 downto 0);	--Entity X0 coord
		X1		:out	std_logic_vector(7 downto 0);	--Entity X1 coord
		Y0		:out	std_logic_vector(7 downto 0);	--Entity	Y0 coord
		Y1		:out	std_logic_vector(7 downto 0);	--Entity Y1 coord
		COL		:out	std_logic_vector(3 downto 0);	--Entity Color
		DRWRDY	:in		std_logic;						--Draw Ready
		EN		:out	std_logic_vector(3 downto 0)	--Draw Module Enabled
	);
end decoder;