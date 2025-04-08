// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat May 21 23:52:18 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/victo/Desktop/Vivados/verDAQ8_uart/verDAQ8_uart.srcs/sources_1/bd/zsys/ip/zsys_fit_timer_0_0/zsys_fit_timer_0_0_stub.v
// Design      : zsys_fit_timer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fit_timer,Vivado 2018.2" *)
module zsys_fit_timer_0_0(Clk, Rst, Interrupt)
/* synthesis syn_black_box black_box_pad_pin="Clk,Rst,Interrupt" */;
  input Clk;
  input Rst;
  output Interrupt;
endmodule
