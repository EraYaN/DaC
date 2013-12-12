library IEEE;
use IEEE.std_logic_1164.ALL;

PACKAGE parameter_def IS
	constant InstrSize : INTEGER;
	constant MaxNumPackets : INTEGER;
<<<<<<< HEAD
=======
	constant SizeSpriteID : INTEGER;
	constant SizeSpriteCounter : INTEGER;
<<<<<<< HEAD
>>>>>>> 9d4e9ce5b0c12094472caf6a8b3cbfe52001dfbd
=======
	constant SizeTimeoutCounter : INTEGER;
>>>>>>> b00ca4c7ef2b20991539b821ff224d9282675c05
	constant NumDrawModules : INTEGER;
	constant SizeX : INTEGER;
	constant SizeY : INTEGER;
	constant NumStateReg : INTEGER;
	constant SizeRAMData : INTEGER;
	constant SizeRAMAddr : INTEGER;
	constant SizeColor : INTEGER;
	constant SizeSPIData : INTEGER;
	constant ResolutionX : INTEGER;
	constant ResolutionY : INTEGER;
END parameter_def;

PACKAGE BODY parameter_def IS
	constant InstrSize : INTEGER := 3; --bits
	constant MaxNumPackets : INTEGER := 3; -- aantal bits voor counter, log2(7 bytes) => 3 bits
<<<<<<< HEAD
=======
	constant SizeSpriteID : INTEGER := 10;
	constant SizeSpriteCounter : INTEGER := 6;
<<<<<<< HEAD
>>>>>>> 9d4e9ce5b0c12094472caf6a8b3cbfe52001dfbd
=======
	constant SizeTimeoutCounter : INTEGER := 8; --aantal bits voor timeout counter
>>>>>>> b00ca4c7ef2b20991539b821ff224d9282675c05
	constant NumDrawModules : INTEGER := 6; -- 0: fill; 1: pixel; 2: square; 3: fsquare; 4: line; 5: circle;
	constant SizeX : INTEGER := 8;
	constant SizeY : INTEGER := 7;
	constant NumStateReg : INTEGER := 1;
	constant SizeRAMData : INTEGER := 3;
	constant SizeRAMAddr : INTEGER := 16;
	constant SizeColor : INTEGER := 3;
	constant SizeSPIData : INTEGER := 8;
	constant ResolutionX : INTEGER := 160;
	constant ResolutionY : INTEGER := 120;
END parameter_def;