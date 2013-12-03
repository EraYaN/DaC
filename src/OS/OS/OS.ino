#include "SPI.h"
#include "Util.h"

GPULib *GPU;
unsigned long lastDrawReady;
bool running;
bool b_helper = true;
bool done = false;
bool first = true;
bool readyfornext = false;
Program *currentProgram;
unsigned long lastFrame;
unsigned long currentFrame;
unsigned long frameTime;
unsigned long lastBlinkTime = 0;
void setup()
{
	GPU = new GPULib();
	attachInterrupt(INT_READY_PIN, drawReady, RISING);
	//Serial.begin(9600);
	SPI.setBitOrder(MSBFIRST);
	SPI.setClockDivider(SPI_CLOCK_DIV8);
	SPI.setDataMode(SPI_MODE0);
	SPI.begin();
	//Serial.begin(115200);
	running = true;
	pinMode(LED_BUILTIN, OUTPUT);
	//Serial.println("Setup Complete!");

	currentProgram = new Demo(GPU,"Demo");
	randomSeed(analogRead(0));
}

void loop()
{
	if (running)
	{
		if(first){
			GPU->cleanUp();
			GPU->drawFill(B0000);
			//GPU->transferQueue();
			first = false;
			//Serial.println("First Fill.");
		}

		if(readyfornext && GPU->queueHead != NULL && !GPU->sending){
			readyfornext = false;
			//Serial.println("Instuction Sent.");
			GPU->sendNextInstruction();			
		}
		
		if(done || GPU->queueHead == NULL){
			currentFrame = micros();
			frameTime = currentFrame-lastFrame;			
			lastFrame = currentFrame;
			delayMicroseconds(10);
			currentProgram->tick(frameTime);
			done = false;
			
		}
		if(lastBlinkTime+250<millis()){
			b_helper = !b_helper;
			digitalWrite(LED_BUILTIN, b_helper);
			//delay(100);	
			lastBlinkTime = millis();
		}
		
	} else {
		b_helper = !b_helper;
		digitalWrite(LED_BUILTIN, b_helper);
		delay(1000);	
	}
}

void drawReady()
{
	readyfornext = true;	
}
