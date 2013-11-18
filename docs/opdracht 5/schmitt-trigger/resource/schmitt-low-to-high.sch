*version 9.1 314036154
u 155
M? 7
V? 4
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
pageloc 1 0 2683 
@status
c 113:09:17:12:27:44;1382005664
*page 1 0 0 0 iA
@ports
port 11 GND_EARTH 260 280 h
port 102 GND_EARTH 400 350 h
port 150 GND_EARTH 300 520 h
port 154 GND_EARTH 400 510 h
@parts
part 10 VDC 300 280 d
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VDD
a 1 xp 9 0 -11 22 hcn 100 REFDES=VDD
a 1 u 13 0 -11 3 hcn 100 DC=5V
part 77 PENH 270 320 h
a 0 sp 13 0 3 40 hln 100 MODEL=PENH
a 0 x 0:13 0 0 0 hln 100 PKGREF=M4
a 0 xp 9 0 0 5 hln 100 REFDES=M4
part 9 PENH 270 380 h
a 0 sp 13 0 3 40 hln 100 MODEL=PENH
a 0 x 0:13 0 0 0 hln 100 PKGREF=M3
a 0 xp 9 0 0 5 hln 100 REFDES=M3
part 83 PENH 360 380 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=M6
a 0 sp 13 0 33 35 hln 100 MODEL=PENH
a 0 xp 9 0 5 35 hln 100 REFDES=M6
part 3 NENH 270 440 h
a 0 sp 13 0 4 40 hln 100 MODEL=NENH
a 0 x 0:13 0 0 0 hln 100 PKGREF=M2
a 0 xp 9 0 0 5 hln 100 REFDES=M2
part 134 NENH 270 500 h
a 0 sp 13 0 4 40 hln 100 MODEL=NENH
a 0 x 0:13 0 0 0 hln 100 PKGREF=M1
a 0 xp 9 0 0 5 hln 100 REFDES=M1
part 147 NENH 360 440 d
a 0 x 0:13 0 0 0 hln 100 PKGREF=M5
a 0 sp 13 0 39 30 hln 100 MODEL=NENH
a 0 xp 9 0 10 15 hln 100 REFDES=M5
part 151 VDC 400 470 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VDD
a 1 xp 9 0 24 7 hcn 100 REFDES=VDD
a 1 u 13 0 24 33 hcn 100 DC=5V
@conn
w 80
s 300 280 300 300 79
w 82
s 300 340 300 350 81
s 300 350 300 360 97
s 340 350 300 350 84
w 101
s 380 350 400 350 100
w 143
s 300 460 300 470 142
s 300 470 300 480 146
s 300 470 340 470 144
w 95
s 300 420 300 410 32
s 300 410 300 400 98
s 300 410 360 410 94
s 360 410 400 410 99
s 360 380 360 410 87
s 360 440 360 410 148
w 153
s 380 470 400 470 152
w 104
s 270 320 260 320 103
s 260 320 260 380 105
s 260 380 270 380 107
s 260 380 260 410 109
s 260 440 270 440 111
s 270 500 260 500 135
s 260 500 260 440 137
s 260 410 260 440 141
s 260 410 240 410 139
@junction
j 300 420
+ p 3 d
+ w 95
j 300 400
+ p 9 d
+ w 95
j 300 360
+ p 9 s
+ w 82
j 340 350
+ p 83 s
+ w 82
j 300 350
+ w 82
+ w 82
j 300 410
+ w 95
+ w 95
j 360 380
+ p 83 g
+ w 95
j 360 410
+ w 95
+ w 95
j 380 350
+ p 83 d
+ w 101
j 400 350
+ s 102
+ w 101
j 270 380
+ p 9 g
+ w 104
j 260 380
+ w 104
+ w 104
j 270 440
+ p 3 g
+ w 104
j 300 300
+ p 77 s
+ w 80
j 300 340
+ p 77 d
+ w 82
j 270 320
+ p 77 g
+ w 104
j 260 280
+ p 10 -
+ s 11
j 300 280
+ p 10 +
+ w 80
j 270 500
+ p 134 g
+ w 104
j 260 440
+ w 104
+ w 104
j 260 410
+ w 104
+ w 104
j 300 460
+ p 3 s
+ w 143
j 300 480
+ p 134 d
+ w 143
j 300 470
+ w 143
+ w 143
j 340 470
+ p 147 s
+ w 143
j 360 440
+ p 147 g
+ w 95
j 300 520
+ s 150
+ p 134 s
j 380 470
+ p 147 d
+ w 153
j 400 470
+ p 151 +
+ w 153
j 400 510
+ s 154
+ p 151 -
@attributes
@graphics
t 116 t 5 230 395 250 410 0 3
In 
t 36 t 5 390 396 410 410 0 3
Out
