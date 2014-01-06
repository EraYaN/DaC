#pragma once
#ifndef _GAME_
#define _GAME_

struct Control {
	String name;
	byte key;
};

class Game : public Program {
protected:
	byte minPlayers;
	byte maxPlayers;
	byte controlsPerPlayer;

public:
	Game(GPULib *GPU, InputLib *Input, const char* programName, byte _minPlayers,byte _maxPlayers,byte _controlsPerPlayer)
		: Program(GPU,Input,programName), minPlayers(_minPlayers), maxPlayers(_maxPlayers), controlsPerPlayer(_controlsPerPlayer) {};
	Game(GPULib *GPU, InputLib *Input): Program(GPU, Input) {};
	void start();
	void tick(unsigned long ctime);
	void stop();
	void reset();
};
#endif