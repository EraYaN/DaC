#include "Util.h"

void Menu::tick(unsigned long ctime){
	if (state==Running)
	{
		if (Input->isAvailable())
		{
			if (Input->getKey() == PS2_UPARROW)
			{
				//up
				if (selectedProgram == 0)
					selectedProgram = NUM_PROGRAMS - 1;
				else
					selectedProgram = selectedProgram-1;
			}
			else if (Input->getKey() == PS2_DOWNARROW)
			{
				//down
				selectedProgram = (selectedProgram+1) % NUM_PROGRAMS;
			}
			else if (Input->getKey() == PS2_ENTER)
			{
				//enter
				currentProgram = programs[selectedProgram];
				currentProgram->start();
			}
		}

		for (int i=0; i<NUM_PROGRAMS; i++)
		{

		}
	}
}
void Menu::start(){
	
}
void Menu::stop(){
	
}
void Menu::reset(){
	
}
