#pragma once

#define clamp(v,vmin,vmax) max(vmin,min(vmax,v));

#define MAX_NUM_INSTR_PACKETS 5
#define MAX_QUEUE_SIZE 100
#define INT_READY_PIN 0
#define MAX_PROGRAM_NAME_LENGTH 14 //reserve one byte for the null byte
#define XMAX 159
#define YMAX 119

#include "Arduino.h"
#include "SPI.h"

enum ProgramState {
	Unknown,
	Initialized,
	Running,
	Stopped
};