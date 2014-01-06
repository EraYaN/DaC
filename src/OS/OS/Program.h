#pragma once
#ifndef _PROGRAM_
#define _PROGRAM_
class Program {
protected:
	GPULib *GPU;
	InputLib *Input;
	const char* name;
	byte id;
	ProgramState state;

public: 
	Program(GPULib *GPU, InputLib *Input, const char* programName) : GPU(GPU),name(programName) {};
	Program(GPULib *GPU, InputLib *Input):GPU(GPU),Input(Input),name() {};
	virtual void start();
	virtual void tick(unsigned long ctime);
	virtual bool isRunning();
	virtual void stop();
	virtual void reset();
};
#endif