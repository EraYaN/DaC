// Class for processing input for running programs using a SoG-based GPU chip
// EPO3-1 - TU Delft

#include "Util.h"

bool InputLib::isAvailable(){
	return keyboard.available();
}

int InputLib::getKey(){
	return keyboard.read();
}