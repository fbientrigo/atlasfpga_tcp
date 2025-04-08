// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Jul 12 14:57:46 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_enable_signal_0_0/zsys_enable_signal_0_0_stub.v
// Design      : zsys_enable_signal_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "enable_signal,Vivado 2018.2" *)
module zsys_enable_signal_0_0(signal_in, enable, signal_out)
/* synthesis syn_black_box black_box_pad_pin="signal_in[0:0],enable[0:0],signal_out[0:0]" */;
  input [0:0]signal_in;
  input [0:0]enable;
  output [0:0]signal_out;
endmodule
