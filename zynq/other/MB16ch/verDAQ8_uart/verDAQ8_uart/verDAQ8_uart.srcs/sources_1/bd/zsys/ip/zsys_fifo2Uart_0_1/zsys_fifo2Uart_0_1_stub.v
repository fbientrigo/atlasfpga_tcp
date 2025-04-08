// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat May 21 23:52:20 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/victo/Desktop/Vivados/verDAQ8_uart/verDAQ8_uart.srcs/sources_1/bd/zsys/ip/zsys_fifo2Uart_0_1/zsys_fifo2Uart_0_1_stub.v
// Design      : zsys_fifo2Uart_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo2Uart,Vivado 2018.2" *)
module zsys_fifo2Uart_0_1(clk, rst, i_f_wr_en, o_fifo_full, i_ascii, 
  o_UART_Tx, i_UART_Rx, end_one_byte, o_serial_out, o_fifo_wr_en, o_fifo_rd_en, o_rst_fifo, 
  o_fifo_din, i_fifo_dout, i_fifo_empty, i_fifo_full)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,i_f_wr_en,o_fifo_full,i_ascii[7:0],o_UART_Tx,i_UART_Rx,end_one_byte,o_serial_out[7:0],o_fifo_wr_en,o_fifo_rd_en,o_rst_fifo,o_fifo_din[7:0],i_fifo_dout[7:0],i_fifo_empty,i_fifo_full" */;
  input clk;
  input rst;
  input i_f_wr_en;
  output o_fifo_full;
  input [7:0]i_ascii;
  output o_UART_Tx;
  input i_UART_Rx;
  output end_one_byte;
  output [7:0]o_serial_out;
  output o_fifo_wr_en;
  output o_fifo_rd_en;
  output o_rst_fifo;
  output [7:0]o_fifo_din;
  input [7:0]i_fifo_dout;
  input i_fifo_empty;
  input i_fifo_full;
endmodule
