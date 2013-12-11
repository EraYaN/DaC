#include "Util.h"
void Demo::tick(unsigned long ctime){
	GPU->cleanUp();	
	GPU->drawFill(B110000);
	/*unsigned long inc = ctime/10000;
	count+=inc;
	GPU->drawRect(7, 7, 63, 63, B111111);
	//GPU->drawFilledRect(20, 20, XMAX-20, YMAX-20, B110000);
	GPU->drawLine(
		byte(55*cos(count/50.0))+80,
		byte(55*sin(count/50.0))+60,
		byte(-55*cos(count/50.0))+80,
		byte(-55*sin(count/50.0))+60,
		B110000
	);	*/	
	/*for(int p = 0; p<numPoints; p++){
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
	}*/
	
	for(int x = 0; x<XMAX+1; x++){
		GPU->drawPixel(x,count % YMAX+1,B001100);
	}
	count++;
	//GPU->drawTriangle(2,4,30,50,60,90,B011010);
	//GPU->drawSprite(sprites_font6x8_set[69-32], 60, 40, B1111);
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