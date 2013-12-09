###############################################################################
# Copyright (C) 1991-2009 Altera Corporation
# Any  megafunction  design,  and related netlist (encrypted  or  decrypted),
# support information,  device programming or simulation file,  and any other
# associated  documentation or information  provided by  Altera  or a partner
# under  Altera's   Megafunction   Partnership   Program  may  be  used  only
# to program  PLD  devices (but not masked  PLD  devices) from  Altera.   Any
# other  use  of such  megafunction  design,  netlist,  support  information,
# device programming or simulation file,  or any other  related documentation
# or information  is prohibited  for  any  other purpose,  including, but not
# limited to  modification,  reverse engineering,  de-compiling, or use  with
# any other  silicon devices,  unless such use is  explicitly  licensed under
# a separate agreement with  Altera  or a megafunction partner.  Title to the
# intellectual property,  including patents,  copyrights,  trademarks,  trade
# secrets,  or maskworks,  embodied in any such megafunction design, netlist,
# support  information,  device programming or simulation file,  or any other
# related documentation or information provided by  Altera  or a megafunction
# partner, remains with Altera, the megafunction partner, or their respective
# licensors. No other licenses, including any licenses needed under any third
# party's intellectual property, are provided herein.
#
###############################################################################


# FPGA Xchange file generated using Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition

# DESIGN=de1
# REVISION=top_de1
# DEVICE=EP2C20
# PACKAGE=FBGA
# SPEEDGRADE=7

Signal Name,Pin Number,Direction,IO Standard,Drive (mA),Termination,Slew Rate,Swap Group,Diff Type

RAMADDR[15],A13,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[14],A14,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[13],A15,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[12],A16,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[11],A17,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[10],A18,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[9],A19,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[8],A20,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[7],C21,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[6],D21,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[5],E21,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[4],F21,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[3],G21,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[2],J21,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[1],K21,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMADDR[0],J19,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMDATA[3],B13,bidir,3.3-V LVTTL,,Off,--,swap_1,--
RAMDATA[2],B14,bidir,3.3-V LVTTL,,Off,--,swap_1,--
RAMDATA[1],B15,bidir,3.3-V LVTTL,,Off,--,swap_1,--
RAMDATA[0],B16,bidir,3.3-V LVTTL,,Off,--,swap_1,--
vga_hsync,A11,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_vsync,B11,output,3.3-V LVTTL,24,Off,--,swap_0,--
RAMWE,B18,output,3.3-V LVTTL,24,Off,--,swap_0,--
int_ready,C22,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug0,U22,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug1,U21,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug2,V22,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug3,V21,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug4,W22,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug5,W21,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug6,Y22,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug7,Y21,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug8[7],U18,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug8[6],Y18,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug8[5],V19,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug8[4],T18,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug8[3],Y19,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug8[2],U19,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug8[1],R19,output,3.3-V LVTTL,24,Off,--,swap_0,--
debug8[0],R20,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_b[3],B10,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_b[2],A10,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_b[1],D11,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_b[0],A9,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_g[3],A8,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_g[2],B9,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_g[1],C10,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_g[0],B8,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_r[3],B7,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_r[2],A7,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_r[1],C9,output,3.3-V LVTTL,24,Off,--,swap_0,--
vga_r[0],D9,output,3.3-V LVTTL,24,Off,--,swap_0,--
reset,R22,input,3.3-V LVTTL,,Off,--,swap_2,--
debug_in,R21,input,3.3-V LVTTL,,Off,--,swap_2,--
SPICLK,B19,input,3.3-V LVTTL,,Off,--,swap_2,--
SPIMOSI,B20,input,3.3-V LVTTL,,Off,--,swap_2,--
color_mode,L22,input,3.3-V LVTTL,,Off,--,swap_2,--
clock_50mhz,L1,input,3.3-V LVTTL,,Off,--,swap_2,--
~ASDO~,C4,input,3.3-V LVTTL,,Off,--,NOSWAP,--
~nCSO~,C3,input,3.3-V LVTTL,,Off,--,NOSWAP,--
~LVDS91p/nCEO~,W20,output,3.3-V LVTTL,24,Off,--,NOSWAP,--
