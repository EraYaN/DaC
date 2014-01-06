#include "Util.h"

void Menu::tick(unsigned long ctime){
	if (state==Running)
	{
		GPU->cleanUp();	
		GPU->drawFill(B000000);

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
			//draw list columns of program names
			Program *p = programs[selectedProgram];
			int width = (sizeof(p->name)-1)*6;
			int current_x = (XMAX+1)/2 - width/2;
			int current_y = MENU_Y_OFFSET + 10*i;
			
			GPU->drawString6x8(p->name, current_x, current_y, B1111111);

			if (i == selectedProgram)
			{
				GPU->drawRect(current_x-1, current_y-1, current_x+width+1, current_y+7, B000011);
			}
		}
		GPU->switchScreenBuffer();
	}
}
void Menu::start(){
	
}
void Menu::stop(){
	
}
void Menu::reset(){
	
}
