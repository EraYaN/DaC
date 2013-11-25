#ifndef _GPULib_H
#define _GPULib_H

#include "Arduino.h"

enum InstructionType { ssb, fill, pixel, rect, frect, line, circle, fcircle };

struct Instruction {
	InstructionType type;
	byte x, y, w, h, color;
};

class GPULib
{
public:
	GPULib(int queuesize); //Constructor
	void clearQueue();
	void transferQueue();
	byte* makePackets(Instruction *instr);

	void switchScreenBuffer();
	void drawFill(byte color);
	void drawPixel(byte x, byte y, byte color);
	void drawRect(byte x, byte y, byte w, byte h, byte color);
	void drawFilledRect(byte x, byte y, byte w, byte h, byte color);
	void drawLine(byte x0, byte y0, byte x1, byte y1, byte color);
	void drawCircle(byte x, byte y, byte r, byte color);
	void drawFilledCircle(byte x, byte y, byte r, byte color);

protected:
	Instruction **queue;
	int currentIndex;
	int queueSize;
};



#endif //_GPULib_H