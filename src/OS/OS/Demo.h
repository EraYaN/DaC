#pragma once
#ifndef _DEMO_
#define _DEMO_
struct Point{
public:
	int x;
	int y;
	int dx;
	int dy;
	byte color;
	Point(int x, int y, int dx, int dy, byte color) : x(x), y(y), dx(dx), dy(dy), color(color) {};
};
class Demo : public Program{
	Point **points;
	int numPoints;
	int count;
	byte xs[4];
	byte ys[4];
public: 
	Demo(GPULib *GPU, const char* programName) : Program(GPU,programName), count(0) {
		xs[0] = 80;
		xs[1] = 40;
		xs[2] = 80;
		xs[3] = 120;
		ys[0] = 20;
		ys[1] = 60;
		ys[2] = 100;
		ys[3] = 60;	
		numPoints = 32;
		points = (Point**)malloc(sizeof(Point*)*numPoints);
		for(int p = 0; p<numPoints;  p++){
			int dx = 0;
			while(dx==0){
				dx = random(-3,3);
			}
			int dy = 0;
			while(dy==0){
				dy = random(-3,3);
			}
			int x = random(1,XMAX-1);
			int y = random(1,YMAX-1);
			points[p] = new Point(x,y,dx,dy,random(1,64));
		}
	};
	void start();
	void tick(unsigned long ctime);
	void stop();
	void reset();
};

#endif