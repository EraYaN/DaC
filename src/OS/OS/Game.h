#pragma once
#ifndef _GAME_
#define _GAME_
class Game : public Program {
protected:
	byte minPlayers;
	byte maxPlayers;
	byte controlsPerPlayer;

public:
	Game(GPULib *GPU,const char* programName, byte _minPlayers,byte _maxPlayers,byte _controlsPerPlayer)
		: Program(GPU,programName), minPlayers(_minPlayers), maxPlayers(_maxPlayers), controlsPerPlayer(_controlsPerPlayer) {};
	Game(GPULib *GPU): Program(GPU) {};
};
#endif