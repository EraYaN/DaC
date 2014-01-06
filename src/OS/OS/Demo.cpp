#include "Util.h"
void Demo::tick(unsigned long ctime){
	GPU->cleanUp();	
	GPU->drawFill(count%64);
	
	for(int i =0; i < 2; i++){
	
		/*unsigned long inc = ctime/10000;
		count+=inc;*/
		GPU->drawRect(19, 19, 21+count%120, 61, B111111);
	
		GPU->drawLine(
			byte(55*cos(count/50.0))+80,
			byte(55*sin(count/50.0))+60,
			byte(-55*cos(count/50.0))+80,
			byte(-55*sin(count/50.0))+60,
			B001100
		);
		GPU->drawFilledRect(20, 20, 20+count%120, 60, B110000);
		for(int p = 0; p<numPoints; p++){
			points[p]->x+=(points[p]->dx);
			if(points[p]->x>=XMAX-1){
				points[p]->dx=-points[p]->dx;
				points[p]->x=XMAX-1;
			} else if (points[p]->x<=1){
				points[p]->dx=-points[p]->dx;
				points[p]->x=1;
			}
			points[p]->y+=(points[p]->dy);
			if(points[p]->y>=YMAX-1){
				points[p]->dy=-points[p]->dy;
				points[p]->y=YMAX-1;
			} else if (points[p]->y<=1){
				points[p]->dy=-points[p]->dy;
				points[p]->y=1;
			}
			GPU->drawPixel(points[p]->x,points[p]->y,points[p]->color);
		}
		GPU->drawRect(count%(XMAX+1),0,count%(XMAX+1),YMAX,B001100);
		//GPU->drawPixel(100,100,B110011);
	
		GPU->drawTriangle(2,4,30,100,60,90,B011010);
		//GPU->drawSprite(sprites_font6x8_set[1], 8, 8, B111100);
		GPU->drawString6x8("The quick brown fox",2,8,B111100);
		GPU->drawString6x8("jumps over the lazy dog",2,16,B111100);
		GPU->drawPoly(xs,ys,4,B000011);
		//GPU->drawTriangle(40,60,30,70,50,80,B1010);
		//char * buff = (char*)malloc(sizeof(char)*16);
		//GPU->drawString(ltoa(ctime,buff,10),3,3,B0110);
		//free(buff);
	}
	count++;
	GPU->switchScreenBuffer();			
}
void Demo::start(){
	
}
void Demo::stop(){
	
}
void Demo::reset(){
	
}