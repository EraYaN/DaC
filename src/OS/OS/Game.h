#pragma once

#include "Program.h"

class Game : public Program {
protected:
	byte minPlayers;
	byte maxPlayers;
	byte controlsPerPlayer;

public:
	Game(char* programName,byte instanceID, byte _minPlayers,byte _maxPlayers,byte _controlsPerPlayer)
		: Program(programName, instanceID), minPlayers(_minPlayers), maxPlayers(_maxPlayers), controlsPerPlayer(_controlsPerPlayer) {};
	Game(): Program() {};
};