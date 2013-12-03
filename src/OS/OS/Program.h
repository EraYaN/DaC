#pragma once
#ifndef _PROGRAM_
#define _PROGRAM_
class Program {
protected:
	GPULib *GPU;
	const char* name;
	byte id;
	ProgramState state;

public: 
	Program(GPULib *GPU, const char* programName) : GPU(GPU),name(programName) {};
	Program(GPULib *GPU):GPU(GPU),name() {};
	virtual void start();
	virtual void tick(unsigned long ctime);
	virtual bool isRunning();
	virtual void stop();
	virtual void reset();
};
#endif