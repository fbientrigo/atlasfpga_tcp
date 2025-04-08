// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Mar  3 13:46:11 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/victo/Desktop/Vivados/daq_mb_te0716_v7/daq_mb_te0716_v7.srcs/sources_1/bd/zsys/ip/zsys_mapper_0_0/zsys_mapper_0_0_stub.v
// Design      : zsys_mapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mapper,Vivado 2018.2" *)
module zsys_mapper_0_0(i_in_0, i_in_1, i_in_2, i_in_3, i_in_4, i_in_5, 
  i_in_6, i_in_7, o_out_0, o_out_1, o_out_2, o_out_3, o_out_4, o_out_5, o_out_6, o_out_7)
/* synthesis syn_black_box black_box_pad_pin="i_in_0[15:0],i_in_1[15:0],i_in_2[15:0],i_in_3[15:0],i_in_4[15:0],i_in_5[15:0],i_in_6[15:0],i_in_7[15:0],o_out_0[11:0],o_out_1[11:0],o_out_2[11:0],o_out_3[11:0],o_out_4[11:0],o_out_5[11:0],o_out_6[11:0],o_out_7[11:0]" */;
  input [15:0]i_in_0;
  input [15:0]i_in_1;
  input [15:0]i_in_2;
  input [15:0]i_in_3;
  input [15:0]i_in_4;
  input [15:0]i_in_5;
  input [15:0]i_in_6;
  input [15:0]i_in_7;
  output [11:0]o_out_0;
  output [11:0]o_out_1;
  output [11:0]o_out_2;
  output [11:0]o_out_3;
  output [11:0]o_out_4;
  output [11:0]o_out_5;
  output [11:0]o_out_6;
  output [11:0]o_out_7;
endmodule
