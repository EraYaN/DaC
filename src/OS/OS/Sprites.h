#pragma once
#ifndef _SPRITES_
#define _SPRITES_
struct Sprite{
public:
	int address;
	byte width; //width in pixels
	byte height; //height in pixels
	byte size; // size in 8-bit bytes (only used on arduino) size send to GPU is h*w/4
	prog_uchar *data;
	Sprite(int address, byte width, byte height, byte size,prog_uchar *data) : address(address), width(width), height(height), size(size), data(data) {};
};
#endif