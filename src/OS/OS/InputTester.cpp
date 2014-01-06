#include "Util.h"
void InputTester::tick(unsigned long ctime){
	GPU->cleanUp();	
	GPU->drawFill(B000001);	
	//for(int i =0; i < 2; i++){
	//GPU->drawString6x8("Inputs Detected: ",2,2,B111111);
		if(Input->isAvailable()){
			int b = Input->getKey();
			if(b >= 0){
				GPU->drawChar6x8(b,10,2,B110000);
			}
		}
		
	//}
	GPU->switchScreenBuffer();	
}
void InputTester::start(){
	
}
void InputTester::stop(){
	
}
void InputTester::reset(){
	
}