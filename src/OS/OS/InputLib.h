// Class for processing input for running programs using a SoG-based GPU chip
// EPO3-1 - TU Delft
#pragma once
#ifndef _INPUTLIB_
#define _INPUTLIB_
#include "PS2Keyboard.h"

struct Keystroke {
	//keystroke data
	unsigned long timestamp;
	byte key;

	//queue data (linked list)
	Keystroke *nextKeystroke;

	//constructor
	Keystroke(byte k)
	{
		key = k;
		timestamp = micros();
	}
};

class InputLib
{
public:
	InputLib() {};

	//instructions and queue
	void clearQueue();
	void cleanUp();
	void transferQueue();
	void sendNextInstruction();
	void appendKeystrokeToQueue(Keystroke *k);
	void shiftQueue();

	//control registering
	void bindKeyToControl(Control *control);

	//tick
	void tick();

	Keystroke *queueHead, *queueTail; //head and tail of linked list
	Control *currentControlToBind;
	PS2Keyboard keyboard;
};
#endif