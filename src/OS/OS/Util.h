#pragma once
#ifndef _UTIL_
#define _UTIL_
#define clamp(v,vmin,vmax) max(vmin,min(vmax,v));

#include "Arduino.h"
#include "SPI.h"
#include "Constants.h"
#include "floatToString.h"
#include "font8x8_basic.h"
#include "Enums.h"
#include "Sprites.h"
#include "GPULib.h"
#include "Program.h"
#include "Game.h"
#include "Demo.h"
#endif
