// Functions for controlling a SoG-based GPU chip
// Written by Robin Hes et al.
// EPO3-1 - TU Delft

#include "GPULib.h"
#include "SPI.h"

void* obj;

GPULib::GPULib(int queuesize)
{
	queueSize = queuesize;
	*queue = new Instruction[queuesize];
	currentIndex = 0;
	SPI.begin();
	//Serial.begin(9600);
	obj = (void*)this;
}

GPULib::~GPULib()
{
	SPI.end();
	clearQueue();
}


void GPULib::clearQueue()
{
	for (int i=0; i<queueSize; i++)
		delete queue[i];
}

void GPULib::transferQueue()
{
	numInstructions = currentIndex;
	currentIndex = 0;

	sendNextInstruction();
}

void GPULib::sendNextInstruction()
{
	if (currentIndex == numInstructions)
		return;

	Instruction *currentInstruction;
	byte *currentPackets;

	currentInstruction = GPULib::queue[currentIndex];
	currentPackets = GPULib::makePackets(currentInstruction);

	for (int j=0; j<currentInstruction->numPackets; j++)
	{
		SPI.transfer(currentPackets[j]);
		Serial.println(currentPackets[j], BIN); //debug
		delay(1000);
	}	
}

byte* GPULib::makePackets(Instruction *instr)
{
	byte packets[MAX_NUM_INSTR_PACKETS];

	if (instr->type == ssb)
	{
		packets[0] = B00000000;
	} 
	else if (instr->type == fill)
	{
		packets[0] = instr->color | B00010000;
	} 
	else if (instr->type == pixel)
	{
		packets[0] = instr->color | B00100000;
		packets[1] = instr->x;
		packets[2] = instr->y;
	} 
	else if (instr->type == rect)
	{
		packets[0] = instr->color | B00110000;
		packets[1] = instr->x;
		packets[2] = instr->y;
		packets[3] = instr->w;
		packets[4] = instr->h;
	} 
	else if (instr->type == frect)
	{
		packets[0] = instr->color | B01000000;
		packets[1] = instr->x;
		packets[2] = instr->y;
		packets[3] = instr->w;
		packets[4] = instr->h;
	} 
	else if (instr->type == line)
	{
		packets[0] = instr->color | B01010000;
		packets[1] = instr->x;
		packets[2] = instr->y;
		packets[3] = instr->w; //x1
		packets[4] = instr->h; //y1
	}

	return packets;
}

void GPULib::switchScreenBuffer()
{
	Instruction instr = *(new Instruction);
	instr.type = ssb;
	instr.numPackets = 1;
	queue[currentIndex] = &instr;
	currentIndex++;
}

void GPULib::drawFill(byte color)
{
	Instruction instr = *(new Instruction);
	instr.type = fill;
	instr.color = color;
	instr.numPackets = 1;
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
	instr.numPackets = 3;
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
	instr.numPackets = 5;
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
	instr.numPackets = 5;
	queue[currentIndex] = &instr;
	currentIndex++;
}

void GPULib::drawLine(byte x, byte y, byte w, byte h, byte color)
{
	Instruction instr = *(new Instruction);
	instr.type = frect;
	instr.x = x;
	instr.y = y;
	instr.w = w; //x1
	instr.h = h; //y1
	instr.color = color;
	instr.numPackets = 5;
	queue[currentIndex] = &instr;
	currentIndex++;
}