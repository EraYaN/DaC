#include "GPULib.h"
#include "SPI.h"

GPULib *GPU;

void setup()
{
	GPU = new GPULib(100);
	attachInterrupt(INT_READY_PIN, drawReady, RISING);
}

void loop()
{
	GPU->drawFill(byte(0));
	GPU->drawRect(byte(0), byte(0), byte(80), byte(60), B00001111);
	GPU->drawRect(byte(80), byte(60), byte(80), byte(60), B00001111);
	GPU->transferQueue();
	delay(1000);
	drawReady();
	delay(1000);
	drawReady();
	delay(1000);
	drawReady();
	delay(1000);
	drawReady();
	while(true){};
}

void drawReady()
{
	if (GPU->currentIndex != GPU->numInstructions)
	{
		GPU->sendNextInstruction();
		Serial.print("\n");
	}
}