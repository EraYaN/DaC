// Class for processing input for running programs using a SoG-based GPU chip
// EPO3-1 - TU Delft

#include "Util.h"

/*void InputLib::tick(){	
	if(timestamp+INPUT_TIMEOUT<millis()){
		if(digitalRead(PIN_BLB)==0){
			timestamp = millis();		
			BLB = true;
		} else {
			BLB = false;
		}
		if(digitalRead(PIN_BLS)==0){			
			timestamp = millis();
			BLS = true;
		} else {
			BLS = false;
		}
		if(digitalRead(PIN_BRB)==0){			
			timestamp = millis();
			BRB = true;
		} else {
			BRB = false;
		}
		if(digitalRead(PIN_BRS)==0){			
			timestamp = millis();
			BRS = true;
		} else {
			BRS = false;
		}
	}	
}

bool InputLib::isButtonLeftBPressed(){	
	if(BLB>0){
		timestamp = millis();
		BLB = false;
		return true;
	}
	return false;
}
bool InputLib::isButtonLeftSPressed(){
	if(BLS==true){
		timestamp = millis();
		BLS = false;
		return true;
	}
	return false;
}
bool InputLib::isButtonRightBPressed(){
	if(BRB==true){
		timestamp = millis();
		BRB = false;
		return true;
	}
	return false;
}
bool InputLib::isButtonRightSPressed(){
	if(BRS==true){
		timestamp = millis();
		BRS = false;
		return true;
	}
	return false;
}
bool InputLib::areAllButtonsPressed(){
	bool val = BLB && BLS && BRB && BRS;
	if(val){
		timestamp = millis();
		BLB = false;
		BLS = false;
		BRB = false;
		BRS = false;
	}
	return val;	
}*/
bool InputLib::isButtonLeftBPressed(){
	return digitalRead(PIN_BLB)==0;
}
bool InputLib::isButtonLeftSPressed(){
	return digitalRead(PIN_BLS)==0;
}
bool InputLib::isButtonRightBPressed(){
	return digitalRead(PIN_BRB)==0;
}
bool InputLib::isButtonRightSPressed(){
	return digitalRead(PIN_BRS)==0;
}
bool InputLib::areAllButtonsPressed(){
	bool val = isButtonLeftBPressed() && isButtonLeftSPressed() && isButtonRightBPressed() && isButtonRightSPressed();	
	return val;	
}