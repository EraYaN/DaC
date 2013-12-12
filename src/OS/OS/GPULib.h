#pragma once
#ifndef _GPULIB_
#define _GPULIB_
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
	//Sprite Addresses
	int lastSpriteID;
	//general
	GPULib(); //Constructor
	~GPULib(); //Destructor

	//instructions and queue
	void clearQueue();
	void cleanUp();
	void transferQueue();
	void sendNextInstruction();
	void appendInstructionToQueue(Instruction *instruction);
	void shiftQueue();

	//draw
	void switchScreenBuffer();
	void drawFill(byte color);
	void drawPixel(byte x, byte y, byte color);
	void drawRect(byte x, byte y, byte w, byte h, byte color);
	void drawFilledRect(byte x, byte y, byte w, byte h, byte color);
	void drawLine(byte x0, byte y0, byte x1, byte y1, byte color);
	void drawSprite(Sprite* sprite, byte x, byte y, byte color);
	void drawSprite(int address, byte x, byte y, byte w, byte l, byte color);

	//fake (software) draw	
	void drawTriangle(byte x0, byte y0, byte x1, byte y1, byte x2, byte y2, byte color);
	void drawPoly(byte* x, byte* y, byte size, byte color);
	void drawChar(char c, byte x, byte y, byte color);
	void drawString(const char* string, byte x, byte y, byte color);

	//loading sprites
	bool loadSprites(Sprite *set[], int size, bool *rfn);
	void sendSprite(Sprite* set);
	//state variable
	bool sending;

	Instruction *queueHead, *queueTail; //head and tail of linked list
};
#endif