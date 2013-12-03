#pragma once

#include "Util.h"

class Program {
protected:
	char* name;
	byte id;
	ProgramState state;

public: 
	Program(char* programName,byte instanceID) : name(programName),id(instanceID) {};
	Program():name(""),id(0) {};
	virtual void start();
	virtual void loop();
	virtual bool isRunning();
	virtual void stop();
	virtual void reset();
};