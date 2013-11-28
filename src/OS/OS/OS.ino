#include "GPULib.h"
#include "SPI.h"

GPULib *GPU;

void setup()
{
	GPU = new GPULib();
	attachInterrupt(INT_READY_PIN, drawReady, RISING);
	Serial.begin(9600);
	SPI.setBitOrder(MSBFIRST);
	SPI.setClockDivider(SPI_CLOCK_DIV8);
	SPI.setDataMode(SPI_MODE0);
	SPI.begin();
}

void loop()
{
	GPU->drawFill(0);
	GPU->drawRect(0,0,80,60,8);
	GPU->drawLine(57,6,67,10,15);
	GPU->transferQueue();
	GPU->cleanUp();
}

void drawReady()
{
	if (GPU->queueHead != NULL)
	{
		GPU->sendNextInstruction();
	}
}