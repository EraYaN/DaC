#include "GPULib.h"
#include "SPI.h"

GPULib *GPU;
unsigned long lastDrawReady;
bool running;

void setup()
{
	GPU = new GPULib();
	attachInterrupt(INT_READY_PIN, drawReady, RISING);
	Serial.begin(9600);
	SPI.setBitOrder(MSBFIRST);
	SPI.setClockDivider(SPI_CLOCK_DIV8);
	SPI.setDataMode(SPI_MODE0);
	SPI.begin();

	running = true;
	pinMode(LED_BUILTIN, OUTPUT);
}

void loop()
{
	if (running)
	{
		if (lastDrawReady > 0 && millis() - lastDrawReady > 10)
		{
			digitalWrite(LED_BUILTIN, LOW);
			lastDrawReady = 0;
		}

		GPU->drawFill(B1111);
		GPU->drawFilledRect(50, 40, 120, 80, B1010);
		GPU->drawRect(50, 40, 120, 80, B0);
		GPU->switchScreenBuffer();
		GPU->drawPixel(50, 40, B1111);
		GPU->transferQueue();
		GPU->cleanUp();
	}
}

void drawReady()
{
	if (running)
	{
		if (GPU->queueHead != NULL && !GPU->sending)
		{
			lastDrawReady = millis();
			digitalWrite(LED_BUILTIN, HIGH);
			GPU->sendNextInstruction();
		}
		else
		{
			//shit broke
			running = false;
		}
	}
}