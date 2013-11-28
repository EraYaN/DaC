#ifndef _GPULib_H
#define _GPULib_H

#define MAX_NUM_INSTR_PACKETS 5
#define INT_READY_PIN 0

#include "Arduino.h"


enum InstructionType { ssb, fill, pixel, rect, frect, line, circle, fcircle };

struct Instruction {
	InstructionType type;
	byte x, y, w, h, color;
	int numPackets;
};

class GPULib
{
public:
	GPULib(int queuesize); //Constructor
	~GPULib(); //Destructor
	void clearQueue();
	void transferQueue();
	void sendNextInstruction();
	byte* makePackets(Instruction *instr);

	void switchScreenBuffer();
	void drawFill(byte color);
	void drawPixel(byte x, byte y, byte color);
	void drawRect(byte x, byte y, byte w, byte h, byte color);
	void drawFilledRect(byte x, byte y, byte w, byte h, byte color);
	void drawLine(byte x0, byte y0, byte x1, byte y1, byte color);
	void drawCircle(byte x, byte y, byte r, byte color);
	void drawFilledCircle(byte x, byte y, byte r, byte color);

public:
	Instruction **queue;
	int currentIndex; //global iterator thingie
	int numInstructions;
	int queueSize;
};

#endif //_GPULib_H