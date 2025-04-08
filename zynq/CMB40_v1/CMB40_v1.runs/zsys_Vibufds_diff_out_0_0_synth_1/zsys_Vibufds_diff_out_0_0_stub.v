// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Sep 18 16:50:42 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_Vibufds_diff_out_0_0_stub.v
// Design      : zsys_Vibufds_diff_out_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Vibufds_diff_out,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(MUXOUT_P, MUXOUT_N, o_MUXOUT_P, o_MUXOUT_N)
/* synthesis syn_black_box black_box_pad_pin="MUXOUT_P[7:0],MUXOUT_N[7:0],o_MUXOUT_P[7:0],o_MUXOUT_N[7:0]" */;
  input [7:0]MUXOUT_P;
  input [7:0]MUXOUT_N;
  output [7:0]o_MUXOUT_P;
  output [7:0]o_MUXOUT_N;
endmodule
