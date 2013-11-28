#ifndef _GPULib_H
#define _GPULib_H

#define MAX_NUM_INSTR_PACKETS 5
#define MAX_QUEUE_SIZE 100
#define INT_READY_PIN 0

#include "Arduino.h"

struct Instruction {
	//instruction data
	int numPackets;
	byte packets[MAX_NUM_INSTR_PACKETS];

	//queue data (linked list)
	Instruction *nextInstruction;
};

class GPULib
{
public:
	GPULib(); //Constructor
	~GPULib(); //Destructor
	void clearQueue();
	void cleanUp();
	void transferQueue();
	void sendNextInstruction();
	void appendInstructionToQueue(Instruction *instruction);
	void shiftQueue();

	void switchScreenBuffer();
	void drawFill(byte color);
	void drawPixel(byte x, byte y, byte color);
	void drawRect(byte x, byte y, byte w, byte h, byte color);
	void drawFilledRect(byte x, byte y, byte w, byte h, byte color);
	void drawLine(byte x0, byte y0, byte x1, byte y1, byte color);
	void drawCircle(byte x, byte y, byte r, byte color);
	void drawFilledCircle(byte x, byte y, byte r, byte color);

	friend void drawReady();

protected:
	Instruction *queueHead, *queueTail; //head and tail of linked list
};

#endif //_GPULib_H