// Class for controlling a SoG-based GPU chip
// EPO3-1 - TU Delft

#include "Util.h"

GPULib::GPULib()
{
	queueHead = NULL;
	queueTail = NULL;
	sending = false;
	lastSpriteID = 0;
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
	/*unsigned long time = millis();
	while(millis()<time+50){
		//wait
	}*/
	for (int j=0; j<(queueHead->numPackets); j++)
	{		
		/*Serial.print("Sent byte: ");
		Serial.print(queueHead->packets[j],BIN);
		Serial.print("; ");
		Serial.print(j+1);
		Serial.print(" of ");
		Serial.print(queueHead->numPackets);
		Serial.print(" @ 0x");
		Serial.println((unsigned int)queueHead, HEX);
		Serial.flush();*/
		SPI.transfer(queueHead->packets[j]);		
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
	Instruction *instr = new Instruction(1);
	instr->packets[0] = 0;
	appendInstructionToQueue(instr);
}

void GPULib::drawFill(byte color)
{
	drawFilledRect(0, 0, XMAX, YMAX, color);
	/*Instruction *instr = new Instruction(2);
	instr->packets[0] = 1;
	instr->packets[1] = color;
	appendInstructionToQueue(instr);*/
}

void GPULib::drawPixel(byte x, byte y, byte color)
{
	Instruction *instr = new Instruction(4);
	instr->packets[0] = 2;
	instr->packets[1] = color;
	instr->packets[2] = clamp(x,0,XMAX);
	instr->packets[3] = clamp(y,0,YMAX);
	appendInstructionToQueue(instr);
}

void GPULib::drawRect(byte x0, byte y0, byte x1, byte y1, byte color)
{
	Instruction *instr = new Instruction(6);
	instr->packets[0] = 3;
	instr->packets[1] = color;
	instr->packets[2] = clamp(x0,0,XMAX);
	instr->packets[3] = clamp(y0,0,YMAX);
	instr->packets[4] = clamp(x1,0,XMAX);
	instr->packets[5] = clamp(y1,0,YMAX);
	appendInstructionToQueue(instr);
}

void GPULib::drawFilledRect(byte x0, byte y0, byte x1, byte y1, byte color)
{
	Instruction *instr = new Instruction(6);
	instr->packets[0] = 4;
	instr->packets[1] = color;
	instr->packets[2] = clamp(x0,0,XMAX);
	instr->packets[3] = clamp(y0,0,YMAX);
	instr->packets[4] = clamp(x1,0,XMAX);
	instr->packets[5] = clamp(y1,0,YMAX);
	appendInstructionToQueue(instr);
}

void GPULib::drawLine(byte x0, byte y0, byte x1, byte y1, byte color)
{
	Instruction *instr = new Instruction(6);
	instr->packets[0] = 5;
	instr->packets[1] = color;
	instr->packets[2] = clamp(x0,0,XMAX);
	instr->packets[3] = clamp(y0,0,YMAX);
	instr->packets[4] = clamp(x1,0,XMAX);
	instr->packets[5] = clamp(y1,0,YMAX);
	appendInstructionToQueue(instr);
}

void GPULib::drawSprite(Sprite* sprite, byte x, byte y, byte color)
{
	drawSprite(sprite->address, x, y, sprite->width, sprite->size, color);
}

void GPULib::drawSprite(int address, byte x, byte y, byte w, byte l, byte color)
{
	Instruction *instr = new Instruction(7);
	instr->packets[0] = 6;
	instr->packets[1] = color;
	instr->packets[2] = clamp(x,0,XMAX);
	instr->packets[3] = clamp(y,0,YMAX);
	instr->packets[4] = clamp(w,0,MAXSPRITEWIDTH);
	instr->packets[5] = ((l << 2) & B11111100) | ((address>>8) & B11);
	instr->packets[6] = (address & 0xFF);
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

void GPULib::drawChar(char c, byte x, byte y, byte color){
	const char* data = font8x8_basic[(int)c];
	for (int cy=0; cy < 8; cy++) {
		for (int cx=0; cx < 8; cx++) {
			if(data[cy] & 1 << cx){
				drawPixel(x+cx,y+cy,color);				
			}
		}
	}
}
void GPULib::drawString(const char* string, byte x, byte y, byte color){
	int i = 0;
	int dx = 0;
	while(string[i]!='\0'){ // string[i]!='\0'
		if(string[i]!=' ')		
			drawChar(string[i],x+dx,y,color);
		i++;
		if(string[i]==' '){
			dx+=3;
		} else {
			dx+=8;
		}

	}

}
bool GPULib::loadSprites(Sprite *set[], int size, bool *readyfornext){
	uint16_t address = 0;
	Serial.println("Started Sending!");
	int spriteID = 0;
	for(int i = 0; i<size; i++){
		spriteID=lastSpriteID+1;
		if(spriteID<SPRITESPART1){ // to the right of screenbuffer #0
			address = 192u+192*spriteID;
		} else if(spriteID<SPRITESPART2) { // underneath screenbuffer #0
			address = 120u*256+64*(spriteID-SPRITESPART1);
		} else if(spriteID<SPRITESPART3) { // to the right of screenbuffer #1
			address = 128u*256+192+192*(spriteID-SPRITESPART2);
		} else if(spriteID<SPRITESPART4){// underneath screenbuffer #1
			address = 248u*256+64*(spriteID-SPRITESPART3);
		} else {
			return false;
		}
		set[i]->address = address >> 6;
		/*while(!(*readyfornext)){
		//wait		
		Serial.println("Waiting!");
		}*/
		Serial.println("Sending!");
		sendSprite(set[i]);
	}
	return true;
}
void GPULib::sendSprite(Sprite *sprite){
	Instruction *instr = new Instruction(3);
	instr->packets[0] = 7;
	instr->packets[1] = ((sprite->size << 2) & B11111100) | ((sprite->address>>8) & B11);
	instr->packets[2] = (sprite->address & 0xFF);	
	sending = true;
	for (int j=0; j<(instr->numPackets); j++)
	{
		SPI.transfer(instr->packets[j]);		
	}
	delete instr;
	//send data
	for(int i = 0; i<sprite->size; i++){
		SPI.transfer(sprite->data[i]);
	}
	sending = false;

}