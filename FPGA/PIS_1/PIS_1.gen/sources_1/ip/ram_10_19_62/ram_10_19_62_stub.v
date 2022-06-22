// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 28 14:24:54 2021
// Host        : LAPTOP-CK74LVEA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub d:/PIS_1/PIS_1.gen/sources_1/ip/ram_10_19_62/ram_10_19_62_stub.v
// Design      : ram_10_19_62
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module ram_10_19_62(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[18:0],dina[61:0],douta[61:0],clkb,enb,web[0:0],addrb[18:0],dinb[61:0],doutb[61:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [18:0]addra;
  input [61:0]dina;
  output [61:0]douta;
  input clkb;
  input enb;
  input [0:0]web;
  input [18:0]addrb;
  input [61:0]dinb;
  output [61:0]doutb;
endmodule
