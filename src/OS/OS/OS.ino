#include "GPULib.h"
#include "SPI.h"

GPULib *GPU;
unsigned long lastDrawReady;
bool running;
bool b_helper = true;
bool done = false;
bool first = true;
bool readyfornext = false;
int x = 30;
int y = 30;
int dy = -2;
int dx = 3;
int count;
byte xs[4] = {80,40,80,120};
byte ys[4] = {20,60,80,60};
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
			delay(10);
			GPU->cleanUp();	
			GPU->drawFill((count/30)%16);
			count++;
			GPU->drawRect(0, 0, XMAX, YMAX, B1100);	
			x+=dx;
			if(x>=XMAX-1){
				dx=-dx;
				x=XMAX-1;
			} else if (x<=1){
				dx=-dx;
				x=1;
			}
			y+=dy;
			if(y>=YMAX-1){
				dy=-dy;
				y=YMAX-1;
			} else if (y<=1){
				dy=-dy;
				y=1;
			}
			GPU->drawPixel(x,y,B1110);
			GPU->drawTriangle(2,4,30,70,50,80,B1010);
			
			GPU->drawPoly(xs,ys,4,B0110);
			GPU->switchScreenBuffer();			
			done = false;
			digitalWrite(LED_BUILTIN, HIGH);
			delay(20);
			digitalWrite(LED_BUILTIN, LOW);
		}
		
	} else {
		b_helper = !b_helper;
		digitalWrite(LED_BUILTIN, b_helper);
		delay(1000);
		//Serial.println("Not running!");
	}
}

void drawReady()
{
	/*if (running)
	{
		if (GPU->queueHead != NULL && !GPU->sending)
		{
			lastDrawReady = millis();
			//digitalWrite(LED_BUILTIN, HIGH);
			delayMicroseconds(10000000);
			GPU->sendNextInstruction();
		}
		else
		{
			//shit broke
			running = !GPU->sending;
			done = true;
		}
	}*/
	readyfornext = true;	
}