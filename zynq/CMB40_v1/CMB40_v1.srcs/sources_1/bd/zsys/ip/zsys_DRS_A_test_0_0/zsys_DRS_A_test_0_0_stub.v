// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Dec  4 12:19:06 2024
// Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_DRS_A_test_0_0/zsys_DRS_A_test_0_0_stub.v
// Design      : zsys_DRS_A_test_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DRS_A_test,Vivado 2018.2" *)
module zsys_DRS_A_test_0_0(A_vec, i_RSRLOAD, i_SRIN, i_dwrite, i_SRCLK, 
  i_en_test, i_nrst, o_A_vec, o_RSRLOAD, o_dwrite, o_SRCLK, o_SRIN, i_clk)
/* synthesis syn_black_box black_box_pad_pin="A_vec[3:0],i_RSRLOAD,i_SRIN,i_dwrite,i_SRCLK,i_en_test,i_nrst,o_A_vec[3:0],o_RSRLOAD,o_dwrite,o_SRCLK,o_SRIN,i_clk" */;
  input [3:0]A_vec;
  input i_RSRLOAD;
  input i_SRIN;
  input i_dwrite;
  input i_SRCLK;
  input i_en_test;
  input i_nrst;
  output [3:0]o_A_vec;
  output o_RSRLOAD;
  output o_dwrite;
  output o_SRCLK;
  output o_SRIN;
  input i_clk;
endmodule
