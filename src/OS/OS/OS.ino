#include "GPULib.h"
#include "SPI.h"

GPULib *GPU;

void setup()
{
	GPU = new GPULib(100);
	SPI.transfer(B00000000);
}

void loop()
{
	GPU->drawFill(0);
	GPU->drawRect(0, 0, 80, 60, B00001111);
	GPU->drawRect(80, 60, 80, 60, B00001111);

}