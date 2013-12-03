#include "Program.h"


bool Program::isRunning(){
	return state==Running;
}

void Program::loop(){
	if(state==Running)
		return;
}
