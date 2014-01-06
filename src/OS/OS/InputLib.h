// Class for processing input for running programs using a SoG-based GPU chip
// EPO3-1 - TU Delft
#pragma once
#ifndef _INPUTLIB_
#define _INPUTLIB_

class InputLib
{
public:
	InputLib() {};

	//instructions and queue
	bool isAvailable();
	int getKey();

	PS2Keyboard keyboard;
};
#endif