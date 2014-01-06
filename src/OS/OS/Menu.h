#pragma once
#ifndef _MENU_
#define _MENU_
class Menu : public Program{
	int selectedProgram;
public: 
	Menu(GPULib *GPU, InputLib *Input, const char* programName) : Program(GPU, Input, programName) {
		selectedProgram = 0;
	};
	void start();
	void tick(unsigned long ctime);
	void stop();
	void reset();
};
#endif