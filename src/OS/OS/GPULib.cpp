// Functions for controlling a SoG-based GPU chip
// Written by Robin Hes et al.
// EPO3-1 - TU Delft

#include "GPULib.h"
#include "SPI.h"

GPULib::GPULib()
{
	queueHead = NULL;
	queueTail = NULL;
}

GPULib::~GPULib()
{
	cleanUp();
}

void GPULib::clearQueue()
{
	while(queueHead != NULL)
		shiftQueue();

	queueHead = NULL;
	queueTail = NULL;
}

void GPULib::cleanUp()
{
	clearQueue();
}

void GPULib::transferQueue()
{
	//if (queueHead != NULL)
	//	sendNextInstruction();
}

void GPULib::sendNextInstruction()
{
	for (int j=0; j<(queueHead->numPackets); j++)
	{
		SPI.transfer(queueHead->packets[j]);
	}
	shiftQueue();
}

void GPULib::appendInstructionToQueue(Instruction *instruction)
{
	queueTail->nextInstruction = instruction;
	queueTail = instruction;
	queueTail->nextInstruction = NULL;

	if (queueHead == NULL)
		queueHead = instruction;
}

void GPULib::shiftQueue()
{
	Instruction *tmp = queueHead;
	queueHead = queueHead->nextInstruction;
	delete tmp;
}

void GPULib::switchScreenBuffer()
{
	Instruction *instr = new Instruction;
	instr->numPackets = 1;
	instr->packets[0] = B00000000;
	appendInstructionToQueue(instr);
}

void GPULib::drawFill(byte color)
{
	Instruction *instr = new Instruction;
	instr->numPackets = 1;
	instr->packets[0] = (color | B00010000);
	appendInstructionToQueue(instr);
}

void GPULib::drawPixel(byte x, byte y, byte color)
{
	Instruction *instr = new Instruction;
	instr->numPackets = 3;
	instr->packets[0] = color | B00100000;
	instr->packets[1] = x;
	instr->packets[2] = y;
	appendInstructionToQueue(instr);
}

void GPULib::drawRect(byte x, byte y, byte w, byte h, byte color)
{
	Instruction *instr = new Instruction;
	instr->numPackets = 5;
	instr->packets[0] = color | B00110000;
	instr->packets[1] = x;
	instr->packets[2] = y;
	instr->packets[3] = w;
	instr->packets[4] = h;
	appendInstructionToQueue(instr);
}

void GPULib::drawFilledRect(byte x, byte y, byte w, byte h, byte color)
{
	Instruction *instr = new Instruction;
	instr->numPackets = 5;
	instr->packets[0] = color | B01000000;
	instr->packets[1] = x;
	instr->packets[2] = y;
	instr->packets[3] = w;
	instr->packets[4] = h;
	appendInstructionToQueue(instr);
}

void GPULib::drawLine(byte x0, byte y0, byte x1, byte y1, byte color)
{
	Instruction *instr = new Instruction;
	instr->numPackets = 5;
	instr->packets[0] = color | B01010000;
	instr->packets[1] = x0;
	instr->packets[2] = y0;
	instr->packets[3] = x1;
	instr->packets[4] = y1;
	appendInstructionToQueue(instr);
}