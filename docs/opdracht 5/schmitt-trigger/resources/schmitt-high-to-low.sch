*version 9.1 327469522
u 51
M? 5
V? 3
@libraries
@analysis
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 1916 
@status
c 113:09:17:12:20:01;1382005201
*page 1 0 0 0 iA
@ports
port 6 GND_EARTH 300 520 h
port 8 GND_EARTH 400 510 h
port 11 GND_EARTH 260 340 h
@parts
part 10 VDC 300 340 d
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VDD
a 1 xp 9 0 -11 22 hcn 100 REFDES=VDD
a 1 u 13 0 -11 3 hcn 100 DC=5V
part 7 VDC 400 470 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 1 u 13 0 29 28 hcn 100 DC=5V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VDD
a 1 xp 9 0 29 12 hcn 100 REFDES=VDD
part 4 NENH 360 440 d
a 0 sp 13 0 39 30 hln 100 MODEL=NENH
a 0 x 0:13 0 0 0 hln 100 PKGREF=M5
a 0 xp 9 0 10 15 hln 100 REFDES=M5
part 9 PENH 270 380 h
a 0 sp 13 0 3 40 hln 100 MODEL=PENH
a 0 x 0:13 0 0 0 hln 100 PKGREF=M3+M4
a 0 xp 9 0 0 5 hln 100 REFDES=M3+M4
part 3 NENH 270 440 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M2
a 0 sp 13 0 4 40 hln 100 MODEL=NENH
a 0 ap 9 0 0 5 hln 100 REFDES=M2
part 2 NENH 270 500 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 sp 13 0 4 40 hln 100 MODEL=NENH
a 0 ap 9 0 0 5 hln 100 REFDES=M1
@conn
w 20
s 300 360 300 340 19
w 24
s 300 460 300 470 23
s 300 470 300 480 27
s 300 470 340 470 25
w 29
s 380 470 400 470 28
w 22
s 300 420 300 410 21
s 300 410 300 400 32
s 300 410 360 410 30
s 360 410 400 410 35
s 360 440 360 410 33
w 39
s 260 380 270 380 38
s 270 440 260 440 40
s 260 440 260 500 42
s 260 500 270 500 44
s 260 380 260 440 46
s 260 440 240 440 48
@junction
j 300 520
+ s 6
+ p 2 s
j 400 510
+ s 8
+ p 7 -
j 260 340
+ s 11
+ p 10 -
j 300 360
+ p 9 s
+ w 20
j 300 340
+ p 10 +
+ w 20
j 300 420
+ p 3 d
+ w 22
j 300 400
+ p 9 d
+ w 22
j 300 480
+ p 2 d
+ w 24
j 300 460
+ p 3 s
+ w 24
j 300 470
+ w 24
+ w 24
j 400 470
+ p 7 +
+ w 29
j 300 410
+ w 22
+ w 22
j 360 410
+ w 22
+ w 22
j 340 470
+ p 4 s
+ w 24
j 380 470
+ p 4 d
+ w 29
j 360 440
+ p 4 g
+ w 22
j 270 380
+ p 9 g
+ w 39
j 270 440
+ p 3 g
+ w 39
j 270 500
+ p 2 g
+ w 39
j 260 440
+ w 39
+ w 39
@attributes
@graphics
t 36 t 5 390 396 430 410 0 9
Out 1 > 0
t 50 t 5 220 426 260 440 0 8
In 0 > 1
