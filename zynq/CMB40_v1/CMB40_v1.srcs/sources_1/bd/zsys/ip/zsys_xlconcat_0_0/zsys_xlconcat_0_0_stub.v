// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jun 26 16:48:03 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_xlconcat_0_0/zsys_xlconcat_0_0_stub.v
// Design      : zsys_xlconcat_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconcat_v2_1_1_xlconcat,Vivado 2018.2" *)
module zsys_xlconcat_0_0(In0, In1, dout)
/* synthesis syn_black_box black_box_pad_pin="In0[0:0],In1[0:0],dout[1:0]" */;
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;
endmodule
