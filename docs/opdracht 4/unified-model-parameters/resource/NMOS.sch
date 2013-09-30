*version 9.1 2187553887
u 25
M? 3
V? 3
? 2
@libraries
@analysis
.DC 1 0 0 0 1 1
+ 0 0 V1
+ 0 4 0
+ 0 5 7
+ 0 6 0.05
.STEP 1 0 0
+ 0 V2
+ 4 0
+ 5 5
+ 6 1
.LIB h:\Desktop\ModelLibEPO3.lib
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
pageloc 1 0 1200 
@status
n 0 113:08:30:10:45:51;1380530751 e 
s 2832 113:08:30:10:45:51;1380530751 e 
*page 1 0 0 0 iA
@ports
port 4 GND_ANALOG 450 210 h
@parts
part 5 VDC 500 170 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
part 6 VDC 370 210 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
a 1 u 13 0 -11 18 hcn 100 DC=5V
part 2 NENH 420 190 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 10 hln 100 REFDES=M1
part 22 iMarker 450 210 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 6 20 hlb 100 LABEL=1
@conn
w 16
a 0 up 0:33 0 0 0 hln 100 V=
s 500 170 450 170 15
a 0 up 33 0 475 169 hct 100 V=
w 18
a 0 up 0:33 0 0 0 hln 100 V=
s 420 190 370 190 17
a 0 up 33 0 395 189 hct 100 V=
s 370 190 370 210 19
w 8
a 0 up 0:33 0 0 0 hln 100 V=
s 440 250 370 250 7
a 0 up 33 0 405 249 hct 100 V=
s 440 250 440 210 9
s 440 210 450 210 11
s 500 210 450 210 13
@junction
j 450 210
+ s 4
+ p 2 s
j 370 250
+ p 6 -
+ w 8
j 450 210
+ p 2 s
+ w 8
j 450 210
+ s 4
+ w 8
j 450 170
+ p 2 d
+ w 16
j 420 190
+ p 2 g
+ w 18
j 370 210
+ p 6 +
+ w 18
j 500 210
+ p 5 -
+ w 8
j 500 170
+ p 5 +
+ w 16
j 450 210
+ p 22 pin1
+ p 2 s
j 450 210
+ p 22 pin1
+ s 4
j 450 210
+ p 22 pin1
+ w 8
@attributes
@graphics
