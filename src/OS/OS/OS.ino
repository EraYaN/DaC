#include "SPI.h"
#include "Util.h"

GPULib *GPU;
InputLib *Input;
unsigned long lastDrawReady;
bool running;
bool b_helper = true;
bool done = false;
bool first = true;
bool readyfornext = false;
Program *currentProgram; 
Program *pDemo;
Program *pInputTester;
Program **programs[NUM_PROGRAMS] = {&pDemo, &pInputTester};
Program *pMenu;
unsigned long lastFrame;
unsigned long currentFrame;
unsigned long frameTime;
unsigned long lastBlinkTime = 0;

void setup()
{
	GPU = new GPULib();
	Input = new InputLib();
	//attachInterrupt(INT_READY_PIN, drawReady, RISING);	
	SPI.setBitOrder(MSBFIRST);
	SPI.setClockDivider(SPI_CLOCK_DIV16);
	SPI.setDataMode(SPI_MODE0);
	SPI.begin();
	Serial.begin(115200);
	running = true;
	pinMode(LED_BUILTIN, OUTPUT);
	Serial.println("Setup Complete!");
	pinMode(INT_READY_PIN,INPUT);
	
	randomSeed(analogRead(0));
	//delay(1000);
	//Input->keyboard.begin(KEYBOARDDATAPIN, KEYBOARDCLOCKPIN);

	pInputTester = new InputTester(GPU, Input);
	pDemo = new Demo(GPU, Input);
	pMenu = new Menu(GPU, Input, &currentProgram, programs);
	currentProgram = pMenu;
}

void loop()
{	
	if (running)
	{
		readyfornext = digitalRead(INT_READY_PIN)==HIGH;
		//Serial.print("RFN: ");
		//Serial.println(readyfornext);
		if(first && readyfornext){	
			GPU->cleanUp();
			//GPU->gpuReset();
			GPU->loadSprites(sprites_font6x8_set,95,&readyfornext);
			//GPU->cleanUp();
			//GPU->drawFill(B000000);
			//GPU->transferQueue();
			first = false;
			//Serial.println("First Fill.");
		}

		if(!first){
			
			if(readyfornext && GPU->queueHead != NULL && !GPU->sending){
				readyfornext = false;
				//Serial.println("Instuction Sent.");
				GPU->sendNextInstruction();			
			}		
			if(done || GPU->queueHead == NULL){
				
				if(Input->areAllButtonsPressed()){
					Serial.println("Back to Menu!");
					currentProgram->stop();
					currentProgram = pMenu;
				}
				currentFrame = micros();
				frameTime = currentFrame-lastFrame;			
				lastFrame = currentFrame;
				delayMicroseconds(10);
				currentProgram->tick(frameTime);
				done = false;
			
			}
			//Input->tick();
			if(lastBlinkTime+250<millis()){
				b_helper = !b_helper;
				digitalWrite(LED_BUILTIN, b_helper);
				//delay(100);	
				lastBlinkTime = millis();
			}
		}		
	} else {
		b_helper = !b_helper;
		digitalWrite(LED_BUILTIN, b_helper);
		delay(1000);	
	}
}

void drawReady()
{
	//if(!GPU->sending){
		readyfornext = true;
		Serial.println("Ready for next!");
	//} else {
	//	Serial.println("Ready for next discarded.");
	//}
}
