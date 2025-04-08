// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug 16 22:34:15 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top zsys_fifo8b_2_axis_0_0 -prefix
//               zsys_fifo8b_2_axis_0_0_ zsys_fifo8b_2_axis_0_0_stub.v
// Design      : zsys_fifo8b_2_axis_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo8b_2_axis_v1_0,Vivado 2018.2" *)
module zsys_fifo8b_2_axis_0_0(i_fifo_din, o_fifo_full, i_fifo_we, i_sending, 
  o_fifo_data_count, i_force_send, m00_axis_tdata, m00_axis_tstrb, m00_axis_tlast, 
  m00_axis_tvalid, m00_axis_tready, m00_axis_aclk, m00_axis_aresetn)
/* synthesis syn_black_box black_box_pad_pin="i_fifo_din[7:0],o_fifo_full,i_fifo_we,i_sending,o_fifo_data_count[3:0],i_force_send,m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tvalid,m00_axis_tready,m00_axis_aclk,m00_axis_aresetn" */;
  input [7:0]i_fifo_din;
  output o_fifo_full;
  input i_fifo_we;
  input i_sending;
  output [3:0]o_fifo_data_count;
  input i_force_send;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tstrb;
  output m00_axis_tlast;
  output m00_axis_tvalid;
  input m00_axis_tready;
  input m00_axis_aclk;
  input m00_axis_aresetn;
endmodule
