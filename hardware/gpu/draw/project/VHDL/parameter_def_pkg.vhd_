library IEEE;
use IEEE.std_logic_1164.ALL;

PACKAGE parameter_def IS
	constant InstrSize : INTEGER;
	constant InstrPacketSize : INTEGER;
	constant MaxNumInstrPackets : INTEGER;
	constant NumDrawModules : INTEGER;
	constant SizeX : INTEGER;
	constant SizeY : INTEGER;
	constant SizeMaxStageReg : INTEGER;
	constant NumStateReg : INTEGER;
	constant SizeRAMData : INTEGER;
	constant SizeRAMAddr : INTEGER;
	constant SizeColor : INTEGER;
	constant SizeSPIData : INTEGER;
END parameter_def;

PACKAGE BODY parameter_def IS
	constant InstrSize : INTEGER := 4; --bits
	constant InstrPacketSize : INTEGER := 8; --bits
	constant MaxNumInstrPackets : INTEGER := 3; -- aantal bits voor counter, log2(7 bytes) => 3 bits
	constant NumDrawModules : INTEGER := 4; -- 0: pixel; 1: square; 2: line; 3: circle;
	constant SizeX : INTEGER := 8;
	constant SizeY : INTEGER := 7;
	constant SizeMaxStageReg : INTEGER := 1;
	constant NumStateReg : INTEGER := 1;
	constant SizeRAMData : INTEGER := 4;
	constant SizeRAMAddr : INTEGER := 16;
	constant SizeColor : INTEGER := 4;
	constant SizeSPIData : INTEGER := 8;
END parameter_def;