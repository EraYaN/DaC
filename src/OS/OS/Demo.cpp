#include "Util.h"

void Demo::tick(unsigned long ctime){
	GPU->cleanUp();	
	GPU->drawFill(B0000);
	unsigned long inc = ctime/10000;
	count+=inc;
	GPU->drawRect(0, 0, XMAX, YMAX, B1111);	
			
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
	//GPU->drawTriangle(2,4,30,70,50,80,B1010);
	GPU->drawLine(
		byte(40*cos(count/90.0))+80,
		byte(40*sin(count/90.0))+60,
		byte(-40*cos(count/90.0))+80,
		byte(-40*sin(count/90.0))+60,
		B1001
	);
	//GPU->drawPoly(xs,ys,4,B1110);
	//GPU->drawTriangle(40,60,30,70,50,80,B1010);
	//char * buff = (char*)malloc(sizeof(char)*16);
	//GPU->drawString(ltoa(ctime,buff,10),3,3,B0110);
	//free(buff);
	GPU->switchScreenBuffer();			
}
void Demo::start(){
	
}
void Demo::stop(){
	
}
void Demo::reset(){
	
}