// Functions for controlling a SoG-based GPU chip
// Written by Robin Hes et al.
// EPO3-1 - TU Delft

#include "GPULib.h"

GPULib::GPULib()
{
	queueHead = NULL;
	queueTail = NULL;
	sending = false;
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
	if (queueHead != NULL)
		sendNextInstruction();
}

void GPULib::sendNextInstruction()
{
	if (queueHead == NULL) return;
	sending = true;
	for (int j=0; j<(queueHead->numPackets); j++)
	{
		//delay(500);
		//SPI.begin();
		SPI.transfer(queueHead->packets[j]);
		//SPI.end();
		//Serial.print("Packet Sent: ");
		//Serial.println(queueHead->packets[j],BIN);
		//delay(500);
	}
	shiftQueue();
	sending = false;
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
	instr->packets[1] = clamp(x,0,XMAX);
	instr->packets[2] = clamp(y,0,YMAX);
	appendInstructionToQueue(instr);
}

void GPULib::drawRect(byte x0, byte y0, byte x1, byte y1, byte color)
{
	Instruction *instr = new Instruction;
	instr->numPackets = 5;
	instr->packets[0] = color | B00110000;
	instr->packets[1] = clamp(x0,0,XMAX);
	instr->packets[2] = clamp(y0,0,YMAX);
	instr->packets[3] = clamp(x1,0,XMAX);
	instr->packets[4] = clamp(y1,0,YMAX);
	appendInstructionToQueue(instr);
}

void GPULib::drawFilledRect(byte x0, byte y0, byte x1, byte y1, byte color)
{
	Instruction *instr = new Instruction;
	instr->numPackets = 5;
	instr->packets[0] = color | B01000000;
	instr->packets[1] = clamp(x0,0,XMAX);
	instr->packets[2] = clamp(y0,0,YMAX);
	instr->packets[3] = clamp(x1,0,XMAX);
	instr->packets[4] = clamp(y1,0,YMAX);
	appendInstructionToQueue(instr);
}

void GPULib::drawLine(byte x0, byte y0, byte x1, byte y1, byte color)
{
	Instruction *instr = new Instruction;
	instr->numPackets = 5;
	instr->packets[0] = color | B01010000;
	instr->packets[1] = clamp(x0,0,XMAX);
	instr->packets[2] = clamp(y0,0,YMAX);
	instr->packets[3] = clamp(x1,0,XMAX);
	instr->packets[4] = clamp(y1,0,YMAX);
	appendInstructionToQueue(instr);
}

void GPULib::drawCircle(byte x, byte y, byte r, byte color)
{
	Instruction *instr = new Instruction;
	instr->numPackets = 4;
	instr->packets[0] = color | B01100000;
	instr->packets[1] = clamp(x,0,XMAX);
	instr->packets[2] = clamp(y,0,YMAX);
	instr->packets[3] = clamp(r,0,min(min(x,y),min(XMAX-x,YMAX-y)));
	appendInstructionToQueue(instr);
}

void GPULib::drawFilledCircle(byte x, byte y, byte r, byte color)
{
	Instruction *instr = new Instruction;
	instr->numPackets = 4;
	instr->packets[0] = color | B01110000;
	instr->packets[1] = clamp(x,0,XMAX);
	instr->packets[2] = clamp(y,0,YMAX);
	instr->packets[3] = clamp(r,0,min(min(x,y),min(XMAX-x,YMAX-y)));;
	appendInstructionToQueue(instr);
}

void GPULib::drawTriangle(byte x0, byte y0, byte x1, byte y1, byte x2, byte y2, byte color){
	drawLine(x0,x0,x1,y1, color);
	drawLine(x1,y1,x2,y2, color);
	drawLine(x2,y2,x0,y0, color);
}

void GPULib::drawPoly(byte* x, byte* y, byte size, byte color){
	if(size<3){
		return;
	}
	for(int i = 0; i<size-1; i++){
		drawLine(x[i],y[i],x[i+1],y[i+1], color);
	}
	drawLine(x[size-1],y[size-1],x[0],y[0], color); //close it
}