// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Aug  3 16:47:46 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_ADC_readout_buff_0_0_stub.v
// Design      : zsys_ADC_readout_buff_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ADC_readout_buff,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_ADclk, i_Lclk, i_ADC_ch_p, i_ADC_ch_n, o_ADclk, 
  o_Lclk, o_ADC_ch0_p, o_ADC_ch0_n, o_ADC_ch1_p, o_ADC_ch1_n, o_ADC_ch2_p, o_ADC_ch2_n, 
  o_ADC_ch3_p, o_ADC_ch3_n, o_ADC_ch4_p, o_ADC_ch4_n, o_ADC_ch5_p, o_ADC_ch5_n, o_ADC_ch6_p, 
  o_ADC_ch6_n, o_ADC_ch7_p, o_ADC_ch7_n)
/* synthesis syn_black_box black_box_pad_pin="i_ADclk,i_Lclk,i_ADC_ch_p[7:0],i_ADC_ch_n[7:0],o_ADclk,o_Lclk,o_ADC_ch0_p,o_ADC_ch0_n,o_ADC_ch1_p,o_ADC_ch1_n,o_ADC_ch2_p,o_ADC_ch2_n,o_ADC_ch3_p,o_ADC_ch3_n,o_ADC_ch4_p,o_ADC_ch4_n,o_ADC_ch5_p,o_ADC_ch5_n,o_ADC_ch6_p,o_ADC_ch6_n,o_ADC_ch7_p,o_ADC_ch7_n" */;
  input i_ADclk;
  input i_Lclk;
  input [7:0]i_ADC_ch_p;
  input [7:0]i_ADC_ch_n;
  output o_ADclk;
  output o_Lclk;
  output o_ADC_ch0_p;
  output o_ADC_ch0_n;
  output o_ADC_ch1_p;
  output o_ADC_ch1_n;
  output o_ADC_ch2_p;
  output o_ADC_ch2_n;
  output o_ADC_ch3_p;
  output o_ADC_ch3_n;
  output o_ADC_ch4_p;
  output o_ADC_ch4_n;
  output o_ADC_ch5_p;
  output o_ADC_ch5_n;
  output o_ADC_ch6_p;
  output o_ADC_ch6_n;
  output o_ADC_ch7_p;
  output o_ADC_ch7_n;
endmodule
