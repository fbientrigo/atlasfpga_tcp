// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Nov 21 17:21:07 2024
// Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_Lvds_Rx_top_0_1_stub.v
// Design      : zsys_Lvds_Rx_top_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Lvds_Rx_top,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(SysRst, Lclk, AdClk, DataInChP, DataInChN, 
  AnalyseOut, ChOut_0, ChOut_1)
/* synthesis syn_black_box black_box_pad_pin="SysRst,Lclk,AdClk,DataInChP[7:0],DataInChN[7:0],AnalyseOut,ChOut_0[11:0],ChOut_1[11:0]" */;
  input SysRst;
  input Lclk;
  input AdClk;
  input [7:0]DataInChP;
  input [7:0]DataInChN;
  output AnalyseOut;
  output [11:0]ChOut_0;
  output [11:0]ChOut_1;
endmodule
