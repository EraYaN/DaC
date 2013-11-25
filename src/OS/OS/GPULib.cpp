// 
// 
// 

#include "GPULib.h"

GPULib::GPULib(int queuesize)
{
	queueSize = queuesize;
	*queue = new Instruction[queuesize];
	currentIndex = 0;
}

void GPULib::clearQueue()
{
	for (int i=0; i<queueSize; i++)
		delete queue[i];
}

void GPULib::transferQueue()
{
	for (int i=0; i<currentIndex; i++)
	{
		makePackets(queue[i]);
	}
}

byte* makePackets(Instruction *instr)
{
	if (instr->type)
	{
	}
}

void GPULib::switchScreenBuffer()
{
	Instruction instr = *(new Instruction);
	instr.type = ssb;
	queue[currentIndex] = &instr;
	currentIndex++;
}

void GPULib::drawFill(byte color)
{
	Instruction instr = *(new Instruction);
	instr.type = fill;
	instr.color = color;
	queue[currentIndex] = &instr;
	currentIndex++;
}

void GPULib::drawPixel(byte x, byte y, byte color)
{
	Instruction instr = *(new Instruction);
	instr.type = pixel;
	instr.x = x;
	instr.y = y;
	instr.color = color;
	queue[currentIndex] = &instr;
	currentIndex++;
}

void GPULib::drawRect(byte x, byte y, byte w, byte h, byte color)
{
	Instruction instr = *(new Instruction);
	instr.type = rect;
	instr.x = x;
	instr.y = y;
	instr.w = w;
	instr.h = h;
	instr.color = color;
	queue[currentIndex] = &instr;
	currentIndex++;
}

void GPULib::drawFilledRect(byte x, byte y, byte w, byte h, byte color)
{
	Instruction instr = *(new Instruction);
	instr.type = frect;
	instr.x = x;
	instr.y = y;
	instr.w = w;
	instr.h = h;
	instr.color = color;
	queue[currentIndex] = &instr;
	currentIndex++;
}