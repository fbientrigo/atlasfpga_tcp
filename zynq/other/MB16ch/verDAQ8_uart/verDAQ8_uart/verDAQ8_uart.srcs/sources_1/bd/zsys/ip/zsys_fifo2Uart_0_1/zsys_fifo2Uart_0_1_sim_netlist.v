// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat May 21 23:52:20 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/victo/Desktop/Vivados/verDAQ8_uart/verDAQ8_uart.srcs/sources_1/bd/zsys/ip/zsys_fifo2Uart_0_1/zsys_fifo2Uart_0_1_sim_netlist.v
// Design      : zsys_fifo2Uart_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_fifo2Uart_0_1,fifo2Uart,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "fifo2Uart,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_fifo2Uart_0_1
   (clk,
    rst,
    i_f_wr_en,
    o_fifo_full,
    i_ascii,
    o_UART_Tx,
    i_UART_Rx,
    end_one_byte,
    o_serial_out,
    o_fifo_wr_en,
    o_fifo_rd_en,
    o_rst_fifo,
    o_fifo_din,
    i_fifo_dout,
    i_fifo_empty,
    i_fifo_full);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *) input rst;
  input i_f_wr_en;
  output o_fifo_full;
  input [7:0]i_ascii;
  output o_UART_Tx;
  input i_UART_Rx;
  output end_one_byte;
  output [7:0]o_serial_out;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 F_write WR_EN" *) output o_fifo_wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 F_read RD_EN" *) output o_fifo_rd_en;
  output o_rst_fifo;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 F_write WR_DATA" *) output [7:0]o_fifo_din;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 F_read RD_DATA" *) input [7:0]i_fifo_dout;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 F_read EMPTY" *) input i_fifo_empty;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 F_write FULL" *) input i_fifo_full;

  wire clk;
  wire end_one_byte;
  wire i_UART_Rx;
  wire [7:0]i_ascii;
  wire i_f_wr_en;
  wire [7:0]i_fifo_dout;
  wire i_fifo_empty;
  wire i_fifo_full;
  wire o_UART_Tx;
  wire o_fifo_rd_en;
  wire o_fifo_wr_en;
  wire o_rst_fifo;
  wire [7:0]o_serial_out;
  wire rst;

  assign o_fifo_din[7:0] = i_ascii;
  assign o_fifo_full = i_fifo_full;
  zsys_fifo2Uart_0_1_fifo2Uart U0
       (.clk(clk),
        .end_one_byte(end_one_byte),
        .i_UART_Rx(i_UART_Rx),
        .i_fifo_dout(i_fifo_dout),
        .i_fifo_empty(i_fifo_empty),
        .o_UART_Tx(o_UART_Tx),
        .o_fifo_rd_en(o_fifo_rd_en),
        .o_rst_fifo(o_rst_fifo),
        .o_serial_out(o_serial_out),
        .rst(rst));
  LUT2 #(
    .INIT(4'h2)) 
    o_fifo_wr_en_INST_0
       (.I0(i_f_wr_en),
        .I1(i_fifo_full),
        .O(o_fifo_wr_en));
endmodule

(* ORIG_REF_NAME = "UART_RX" *) 
module zsys_fifo2Uart_0_1_UART_RX
   (o_serial_out,
    i_UART_Rx,
    clk);
  output [7:0]o_serial_out;
  input i_UART_Rx;
  input clk;

  wire clk;
  wire i_UART_Rx;
  wire [7:0]o_serial_out;
  wire \r_Bit_Index[0]_i_1_n_0 ;
  wire \r_Bit_Index[1]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_1_n_0 ;
  wire \r_Bit_Index_reg_n_0_[0] ;
  wire \r_Bit_Index_reg_n_0_[1] ;
  wire \r_Bit_Index_reg_n_0_[2] ;
  wire \r_Clk_Count[0]_i_1_n_0 ;
  wire \r_Clk_Count[1]_i_1__0_n_0 ;
  wire \r_Clk_Count[2]_i_1_n_0 ;
  wire \r_Clk_Count[2]_i_2_n_0 ;
  wire \r_Clk_Count[2]_i_3_n_0 ;
  wire \r_Clk_Count[2]_i_4_n_0 ;
  wire \r_Clk_Count[2]_i_5_n_0 ;
  wire \r_Clk_Count[3]_i_1__0_n_0 ;
  wire \r_Clk_Count[3]_i_2_n_0 ;
  wire \r_Clk_Count[4]_i_1__0_n_0 ;
  wire \r_Clk_Count[4]_i_2_n_0 ;
  wire \r_Clk_Count[5]_i_1__0_n_0 ;
  wire \r_Clk_Count[5]_i_2_n_0 ;
  wire \r_Clk_Count[6]_i_1__0_n_0 ;
  wire \r_Clk_Count[6]_i_2__0_n_0 ;
  wire \r_Clk_Count[7]_i_1__0_n_0 ;
  wire \r_Clk_Count[7]_i_2_n_0 ;
  wire \r_Clk_Count[8]_i_1_n_0 ;
  wire \r_Clk_Count[8]_i_2__0_n_0 ;
  wire \r_Clk_Count[9]_i_1__0_n_0 ;
  wire \r_Clk_Count[9]_i_2__0_n_0 ;
  wire \r_Clk_Count[9]_i_3__0_n_0 ;
  wire \r_Clk_Count[9]_i_4_n_0 ;
  wire \r_Clk_Count[9]_i_5_n_0 ;
  wire \r_Clk_Count[9]_i_6_n_0 ;
  wire \r_Clk_Count_reg_n_0_[0] ;
  wire \r_Clk_Count_reg_n_0_[1] ;
  wire \r_Clk_Count_reg_n_0_[2] ;
  wire \r_Clk_Count_reg_n_0_[3] ;
  wire \r_Clk_Count_reg_n_0_[4] ;
  wire \r_Clk_Count_reg_n_0_[5] ;
  wire \r_Clk_Count_reg_n_0_[6] ;
  wire \r_Clk_Count_reg_n_0_[7] ;
  wire \r_Clk_Count_reg_n_0_[8] ;
  wire \r_Clk_Count_reg_n_0_[9] ;
  wire \r_RX_Byte[0]_i_1_n_0 ;
  wire \r_RX_Byte[1]_i_1_n_0 ;
  wire \r_RX_Byte[1]_i_2_n_0 ;
  wire \r_RX_Byte[2]_i_1_n_0 ;
  wire \r_RX_Byte[3]_i_1_n_0 ;
  wire \r_RX_Byte[3]_i_2_n_0 ;
  wire \r_RX_Byte[4]_i_1_n_0 ;
  wire \r_RX_Byte[4]_i_2_n_0 ;
  wire \r_RX_Byte[4]_i_3_n_0 ;
  wire \r_RX_Byte[5]_i_1_n_0 ;
  wire \r_RX_Byte[5]_i_2_n_0 ;
  wire \r_RX_Byte[5]_i_3_n_0 ;
  wire \r_RX_Byte[6]_i_1_n_0 ;
  wire \r_RX_Byte[6]_i_2_n_0 ;
  wire \r_RX_Byte[7]_i_1_n_0 ;
  wire \r_RX_Byte[7]_i_2_n_0 ;
  wire \r_RX_Byte[7]_i_3_n_0 ;
  wire \r_RX_Byte[7]_i_4_n_0 ;
  wire \r_RX_Byte[7]_i_5_n_0 ;
  wire r_RX_Data;
  wire r_RX_Data_R;
  wire \r_SM_Main[0]_i_1_n_0 ;
  wire \r_SM_Main[0]_i_2_n_0 ;
  wire \r_SM_Main[1]_i_1_n_0 ;
  wire \r_SM_Main[1]_i_2_n_0 ;
  wire \r_SM_Main[2]_i_1_n_0 ;
  wire \r_SM_Main_reg_n_0_[0] ;
  wire \r_SM_Main_reg_n_0_[1] ;
  wire \r_SM_Main_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFF20008)) 
    \r_Bit_Index[0]_i_1 
       (.I0(\r_SM_Main_reg_n_0_[1] ),
        .I1(\r_RX_Byte[5]_i_2_n_0 ),
        .I2(\r_SM_Main_reg_n_0_[2] ),
        .I3(\r_SM_Main_reg_n_0_[0] ),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .O(\r_Bit_Index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF4C00000080)) 
    \r_Bit_Index[1]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(\r_SM_Main_reg_n_0_[1] ),
        .I2(\r_RX_Byte[5]_i_2_n_0 ),
        .I3(\r_SM_Main_reg_n_0_[2] ),
        .I4(\r_SM_Main_reg_n_0_[0] ),
        .I5(\r_Bit_Index_reg_n_0_[1] ),
        .O(\r_Bit_Index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h70F0FFFF80000000)) 
    \r_Bit_Index[2]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .I2(\r_SM_Main_reg_n_0_[1] ),
        .I3(\r_RX_Byte[5]_i_2_n_0 ),
        .I4(\r_RX_Byte[4]_i_3_n_0 ),
        .I5(\r_Bit_Index_reg_n_0_[2] ),
        .O(\r_Bit_Index[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Bit_Index[0]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Bit_Index[1]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Bit_Index[2]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFF0F80C000808)) 
    \r_Clk_Count[0]_i_1 
       (.I0(\r_SM_Main_reg_n_0_[1] ),
        .I1(\r_RX_Byte[7]_i_3_n_0 ),
        .I2(\r_SM_Main_reg_n_0_[2] ),
        .I3(\r_Clk_Count[2]_i_4_n_0 ),
        .I4(\r_SM_Main_reg_n_0_[0] ),
        .I5(\r_Clk_Count_reg_n_0_[0] ),
        .O(\r_Clk_Count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h606060606060FF00)) 
    \r_Clk_Count[1]_i_1__0 
       (.I0(\r_Clk_Count_reg_n_0_[1] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(\r_RX_Byte[7]_i_3_n_0 ),
        .I3(r_RX_Data),
        .I4(\r_SM_Main_reg_n_0_[1] ),
        .I5(\r_SM_Main[1]_i_2_n_0 ),
        .O(\r_Clk_Count[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0888FFFF80880000)) 
    \r_Clk_Count[2]_i_1 
       (.I0(\r_Clk_Count[2]_i_2_n_0 ),
        .I1(\r_RX_Byte[7]_i_3_n_0 ),
        .I2(\r_Clk_Count[2]_i_3_n_0 ),
        .I3(\r_Clk_Count[2]_i_4_n_0 ),
        .I4(\r_Clk_Count[9]_i_2__0_n_0 ),
        .I5(\r_Clk_Count_reg_n_0_[2] ),
        .O(\r_Clk_Count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_Clk_Count[2]_i_2 
       (.I0(\r_SM_Main_reg_n_0_[1] ),
        .I1(\r_SM_Main_reg_n_0_[0] ),
        .O(\r_Clk_Count[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Clk_Count[2]_i_3 
       (.I0(\r_Clk_Count_reg_n_0_[1] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .O(\r_Clk_Count[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFFFFFF)) 
    \r_Clk_Count[2]_i_4 
       (.I0(\r_Clk_Count_reg_n_0_[3] ),
        .I1(\r_Clk_Count_reg_n_0_[4] ),
        .I2(\r_Clk_Count_reg_n_0_[5] ),
        .I3(\r_Clk_Count_reg_n_0_[6] ),
        .I4(\r_Clk_Count[9]_i_5_n_0 ),
        .I5(\r_Clk_Count[2]_i_5_n_0 ),
        .O(\r_Clk_Count[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Clk_Count[2]_i_5 
       (.I0(r_RX_Data),
        .I1(\r_SM_Main_reg_n_0_[1] ),
        .O(\r_Clk_Count[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h909090909090FF00)) 
    \r_Clk_Count[3]_i_1__0 
       (.I0(\r_Clk_Count_reg_n_0_[3] ),
        .I1(\r_Clk_Count[3]_i_2_n_0 ),
        .I2(\r_RX_Byte[7]_i_3_n_0 ),
        .I3(r_RX_Data),
        .I4(\r_SM_Main_reg_n_0_[1] ),
        .I5(\r_SM_Main[1]_i_2_n_0 ),
        .O(\r_Clk_Count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \r_Clk_Count[3]_i_2 
       (.I0(\r_Clk_Count_reg_n_0_[2] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(\r_Clk_Count_reg_n_0_[1] ),
        .O(\r_Clk_Count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h909090909090FF00)) 
    \r_Clk_Count[4]_i_1__0 
       (.I0(\r_Clk_Count_reg_n_0_[4] ),
        .I1(\r_Clk_Count[4]_i_2_n_0 ),
        .I2(\r_RX_Byte[7]_i_3_n_0 ),
        .I3(r_RX_Data),
        .I4(\r_SM_Main_reg_n_0_[1] ),
        .I5(\r_SM_Main[1]_i_2_n_0 ),
        .O(\r_Clk_Count[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_Clk_Count[4]_i_2 
       (.I0(\r_Clk_Count_reg_n_0_[1] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(\r_Clk_Count_reg_n_0_[2] ),
        .I3(\r_Clk_Count_reg_n_0_[3] ),
        .O(\r_Clk_Count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h444444F0)) 
    \r_Clk_Count[5]_i_1__0 
       (.I0(\r_Clk_Count[5]_i_2_n_0 ),
        .I1(\r_RX_Byte[7]_i_3_n_0 ),
        .I2(r_RX_Data),
        .I3(\r_SM_Main_reg_n_0_[1] ),
        .I4(\r_SM_Main[1]_i_2_n_0 ),
        .O(\r_Clk_Count[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9555555555555555)) 
    \r_Clk_Count[5]_i_2 
       (.I0(\r_Clk_Count_reg_n_0_[5] ),
        .I1(\r_Clk_Count_reg_n_0_[4] ),
        .I2(\r_Clk_Count_reg_n_0_[1] ),
        .I3(\r_Clk_Count_reg_n_0_[0] ),
        .I4(\r_Clk_Count_reg_n_0_[2] ),
        .I5(\r_Clk_Count_reg_n_0_[3] ),
        .O(\r_Clk_Count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h909090909090FF00)) 
    \r_Clk_Count[6]_i_1__0 
       (.I0(\r_Clk_Count_reg_n_0_[6] ),
        .I1(\r_Clk_Count[6]_i_2__0_n_0 ),
        .I2(\r_RX_Byte[7]_i_3_n_0 ),
        .I3(r_RX_Data),
        .I4(\r_SM_Main_reg_n_0_[1] ),
        .I5(\r_SM_Main[1]_i_2_n_0 ),
        .O(\r_Clk_Count[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_Clk_Count[6]_i_2__0 
       (.I0(\r_Clk_Count_reg_n_0_[4] ),
        .I1(\r_Clk_Count_reg_n_0_[5] ),
        .I2(\r_Clk_Count_reg_n_0_[3] ),
        .I3(\r_Clk_Count_reg_n_0_[2] ),
        .I4(\r_Clk_Count_reg_n_0_[0] ),
        .I5(\r_Clk_Count_reg_n_0_[1] ),
        .O(\r_Clk_Count[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h909090909090FF00)) 
    \r_Clk_Count[7]_i_1__0 
       (.I0(\r_Clk_Count_reg_n_0_[7] ),
        .I1(\r_Clk_Count[7]_i_2_n_0 ),
        .I2(\r_RX_Byte[7]_i_3_n_0 ),
        .I3(r_RX_Data),
        .I4(\r_SM_Main_reg_n_0_[1] ),
        .I5(\r_SM_Main[1]_i_2_n_0 ),
        .O(\r_Clk_Count[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \r_Clk_Count[7]_i_2 
       (.I0(\r_Clk_Count[4]_i_2_n_0 ),
        .I1(\r_Clk_Count_reg_n_0_[5] ),
        .I2(\r_Clk_Count_reg_n_0_[4] ),
        .I3(\r_Clk_Count_reg_n_0_[6] ),
        .O(\r_Clk_Count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h606060606060FF00)) 
    \r_Clk_Count[8]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[8] ),
        .I1(\r_Clk_Count[8]_i_2__0_n_0 ),
        .I2(\r_RX_Byte[7]_i_3_n_0 ),
        .I3(r_RX_Data),
        .I4(\r_SM_Main_reg_n_0_[1] ),
        .I5(\r_SM_Main[1]_i_2_n_0 ),
        .O(\r_Clk_Count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \r_Clk_Count[8]_i_2__0 
       (.I0(\r_Clk_Count_reg_n_0_[7] ),
        .I1(\r_Clk_Count_reg_n_0_[6] ),
        .I2(\r_Clk_Count_reg_n_0_[4] ),
        .I3(\r_Clk_Count_reg_n_0_[5] ),
        .I4(\r_Clk_Count[4]_i_2_n_0 ),
        .O(\r_Clk_Count[8]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_Clk_Count[9]_i_1__0 
       (.I0(\r_SM_Main_reg_n_0_[2] ),
        .I1(\r_SM_Main_reg_n_0_[0] ),
        .I2(\r_SM_Main_reg_n_0_[1] ),
        .O(\r_Clk_Count[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5551555555555555)) 
    \r_Clk_Count[9]_i_2__0 
       (.I0(\r_SM_Main_reg_n_0_[2] ),
        .I1(\r_Clk_Count[9]_i_4_n_0 ),
        .I2(\r_Clk_Count[9]_i_5_n_0 ),
        .I3(\r_SM_Main_reg_n_0_[1] ),
        .I4(r_RX_Data),
        .I5(\r_SM_Main_reg_n_0_[0] ),
        .O(\r_Clk_Count[9]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h282828282828FF00)) 
    \r_Clk_Count[9]_i_3__0 
       (.I0(\r_RX_Byte[7]_i_3_n_0 ),
        .I1(\r_Clk_Count_reg_n_0_[9] ),
        .I2(\r_Clk_Count[9]_i_6_n_0 ),
        .I3(r_RX_Data),
        .I4(\r_SM_Main_reg_n_0_[1] ),
        .I5(\r_SM_Main[1]_i_2_n_0 ),
        .O(\r_Clk_Count[9]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \r_Clk_Count[9]_i_4 
       (.I0(\r_Clk_Count_reg_n_0_[3] ),
        .I1(\r_Clk_Count_reg_n_0_[4] ),
        .I2(\r_Clk_Count_reg_n_0_[5] ),
        .I3(\r_Clk_Count_reg_n_0_[6] ),
        .O(\r_Clk_Count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \r_Clk_Count[9]_i_5 
       (.I0(\r_Clk_Count_reg_n_0_[0] ),
        .I1(\r_Clk_Count_reg_n_0_[1] ),
        .I2(\r_Clk_Count_reg_n_0_[2] ),
        .I3(\r_Clk_Count_reg_n_0_[7] ),
        .I4(\r_Clk_Count_reg_n_0_[9] ),
        .I5(\r_Clk_Count_reg_n_0_[8] ),
        .O(\r_Clk_Count[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \r_Clk_Count[9]_i_6 
       (.I0(\r_Clk_Count[4]_i_2_n_0 ),
        .I1(\r_Clk_Count_reg_n_0_[5] ),
        .I2(\r_Clk_Count_reg_n_0_[4] ),
        .I3(\r_Clk_Count_reg_n_0_[6] ),
        .I4(\r_Clk_Count_reg_n_0_[7] ),
        .I5(\r_Clk_Count_reg_n_0_[8] ),
        .O(\r_Clk_Count[9]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Clk_Count[0]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[1] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2__0_n_0 ),
        .D(\r_Clk_Count[1]_i_1__0_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[1] ),
        .R(\r_Clk_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Clk_Count[2]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[3] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2__0_n_0 ),
        .D(\r_Clk_Count[3]_i_1__0_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[3] ),
        .R(\r_Clk_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[4] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2__0_n_0 ),
        .D(\r_Clk_Count[4]_i_1__0_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[4] ),
        .R(\r_Clk_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[5] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2__0_n_0 ),
        .D(\r_Clk_Count[5]_i_1__0_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[5] ),
        .R(\r_Clk_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[6] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2__0_n_0 ),
        .D(\r_Clk_Count[6]_i_1__0_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[6] ),
        .R(\r_Clk_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[7] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2__0_n_0 ),
        .D(\r_Clk_Count[7]_i_1__0_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[7] ),
        .R(\r_Clk_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[8] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2__0_n_0 ),
        .D(\r_Clk_Count[8]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[8] ),
        .R(\r_Clk_Count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[9] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2__0_n_0 ),
        .D(\r_Clk_Count[9]_i_3__0_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[9] ),
        .R(\r_Clk_Count[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_RX_Byte[0]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[4]_i_2_n_0 ),
        .I2(\r_RX_Byte[4]_i_3_n_0 ),
        .I3(\r_Bit_Index_reg_n_0_[2] ),
        .I4(\r_RX_Byte[7]_i_3_n_0 ),
        .I5(o_serial_out[0]),
        .O(\r_RX_Byte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_RX_Byte[1]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[1]_i_2_n_0 ),
        .I2(\r_RX_Byte[4]_i_3_n_0 ),
        .I3(\r_Bit_Index_reg_n_0_[2] ),
        .I4(\r_RX_Byte[7]_i_3_n_0 ),
        .I5(o_serial_out[1]),
        .O(\r_RX_Byte[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_RX_Byte[1]_i_2 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .O(\r_RX_Byte[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \r_RX_Byte[2]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[6]_i_2_n_0 ),
        .I2(\r_RX_Byte[7]_i_3_n_0 ),
        .I3(\r_Bit_Index_reg_n_0_[2] ),
        .I4(o_serial_out[2]),
        .O(\r_RX_Byte[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_RX_Byte[3]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[3]_i_2_n_0 ),
        .I2(\r_RX_Byte[4]_i_3_n_0 ),
        .I3(\r_RX_Byte[7]_i_3_n_0 ),
        .I4(\r_Bit_Index_reg_n_0_[2] ),
        .I5(o_serial_out[3]),
        .O(\r_RX_Byte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_RX_Byte[3]_i_2 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .O(\r_RX_Byte[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_RX_Byte[4]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[7]_i_3_n_0 ),
        .I2(\r_Bit_Index_reg_n_0_[2] ),
        .I3(\r_RX_Byte[4]_i_2_n_0 ),
        .I4(\r_RX_Byte[4]_i_3_n_0 ),
        .I5(o_serial_out[4]),
        .O(\r_RX_Byte[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_RX_Byte[4]_i_2 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .O(\r_RX_Byte[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_RX_Byte[4]_i_3 
       (.I0(\r_SM_Main_reg_n_0_[0] ),
        .I1(\r_SM_Main_reg_n_0_[2] ),
        .O(\r_RX_Byte[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \r_RX_Byte[5]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[5]_i_2_n_0 ),
        .I2(\r_RX_Byte[5]_i_3_n_0 ),
        .I3(o_serial_out[5]),
        .O(\r_RX_Byte[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF80000000000000)) 
    \r_RX_Byte[5]_i_2 
       (.I0(\r_RX_Byte[7]_i_5_n_0 ),
        .I1(\r_Clk_Count_reg_n_0_[6] ),
        .I2(\r_Clk_Count_reg_n_0_[5] ),
        .I3(\r_Clk_Count_reg_n_0_[7] ),
        .I4(\r_Clk_Count_reg_n_0_[9] ),
        .I5(\r_Clk_Count_reg_n_0_[8] ),
        .O(\r_RX_Byte[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \r_RX_Byte[5]_i_3 
       (.I0(\r_Bit_Index_reg_n_0_[1] ),
        .I1(\r_Bit_Index_reg_n_0_[0] ),
        .I2(\r_SM_Main_reg_n_0_[1] ),
        .I3(\r_Bit_Index_reg_n_0_[2] ),
        .I4(\r_SM_Main_reg_n_0_[0] ),
        .I5(\r_SM_Main_reg_n_0_[2] ),
        .O(\r_RX_Byte[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_RX_Byte[6]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[6]_i_2_n_0 ),
        .I2(\r_RX_Byte[7]_i_3_n_0 ),
        .I3(\r_Bit_Index_reg_n_0_[2] ),
        .I4(o_serial_out[6]),
        .O(\r_RX_Byte[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \r_RX_Byte[6]_i_2 
       (.I0(\r_SM_Main_reg_n_0_[2] ),
        .I1(\r_SM_Main_reg_n_0_[0] ),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(\r_Bit_Index_reg_n_0_[0] ),
        .O(\r_RX_Byte[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \r_RX_Byte[7]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_SM_Main_reg_n_0_[2] ),
        .I2(\r_RX_Byte[7]_i_2_n_0 ),
        .I3(\r_RX_Byte[7]_i_3_n_0 ),
        .I4(o_serial_out[7]),
        .O(\r_RX_Byte[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \r_RX_Byte[7]_i_2 
       (.I0(\r_SM_Main_reg_n_0_[0] ),
        .I1(\r_Bit_Index_reg_n_0_[0] ),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(\r_Bit_Index_reg_n_0_[2] ),
        .O(\r_RX_Byte[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDFDFDFDFDFDFDF)) 
    \r_RX_Byte[7]_i_3 
       (.I0(\r_SM_Main_reg_n_0_[1] ),
        .I1(\r_RX_Byte[7]_i_4_n_0 ),
        .I2(\r_Clk_Count_reg_n_0_[7] ),
        .I3(\r_Clk_Count_reg_n_0_[5] ),
        .I4(\r_Clk_Count_reg_n_0_[6] ),
        .I5(\r_RX_Byte[7]_i_5_n_0 ),
        .O(\r_RX_Byte[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \r_RX_Byte[7]_i_4 
       (.I0(\r_Clk_Count_reg_n_0_[8] ),
        .I1(\r_Clk_Count_reg_n_0_[9] ),
        .O(\r_RX_Byte[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \r_RX_Byte[7]_i_5 
       (.I0(\r_Clk_Count_reg_n_0_[1] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(\r_Clk_Count_reg_n_0_[2] ),
        .I3(\r_Clk_Count_reg_n_0_[3] ),
        .I4(\r_Clk_Count_reg_n_0_[4] ),
        .O(\r_RX_Byte[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_RX_Byte[0]_i_1_n_0 ),
        .Q(o_serial_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_RX_Byte[1]_i_1_n_0 ),
        .Q(o_serial_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_RX_Byte[2]_i_1_n_0 ),
        .Q(o_serial_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_RX_Byte[3]_i_1_n_0 ),
        .Q(o_serial_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_RX_Byte[4]_i_1_n_0 ),
        .Q(o_serial_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_RX_Byte[5]_i_1_n_0 ),
        .Q(o_serial_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_RX_Byte[6]_i_1_n_0 ),
        .Q(o_serial_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_RX_Byte[7]_i_1_n_0 ),
        .Q(o_serial_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_RX_Data_R_reg
       (.C(clk),
        .CE(1'b1),
        .D(i_UART_Rx),
        .Q(r_RX_Data_R),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_RX_Data_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_RX_Data_R),
        .Q(r_RX_Data),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4544444455445444)) 
    \r_SM_Main[0]_i_1 
       (.I0(\r_SM_Main_reg_n_0_[2] ),
        .I1(\r_SM_Main[0]_i_2_n_0 ),
        .I2(\r_RX_Byte[5]_i_2_n_0 ),
        .I3(\r_SM_Main_reg_n_0_[1] ),
        .I4(\r_SM_Main_reg_n_0_[0] ),
        .I5(\r_RX_Byte[7]_i_2_n_0 ),
        .O(\r_SM_Main[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0D000D0F)) 
    \r_SM_Main[0]_i_2 
       (.I0(\r_Clk_Count[9]_i_4_n_0 ),
        .I1(\r_Clk_Count[9]_i_5_n_0 ),
        .I2(\r_SM_Main_reg_n_0_[1] ),
        .I3(\r_SM_Main_reg_n_0_[0] ),
        .I4(r_RX_Data),
        .O(\r_SM_Main[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2020202230303030)) 
    \r_SM_Main[1]_i_1 
       (.I0(\r_RX_Byte[7]_i_3_n_0 ),
        .I1(\r_SM_Main_reg_n_0_[2] ),
        .I2(\r_SM_Main_reg_n_0_[1] ),
        .I3(r_RX_Data),
        .I4(\r_SM_Main[1]_i_2_n_0 ),
        .I5(\r_SM_Main_reg_n_0_[0] ),
        .O(\r_SM_Main[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \r_SM_Main[1]_i_2 
       (.I0(\r_Clk_Count[9]_i_5_n_0 ),
        .I1(\r_Clk_Count_reg_n_0_[6] ),
        .I2(\r_Clk_Count_reg_n_0_[5] ),
        .I3(\r_Clk_Count_reg_n_0_[4] ),
        .I4(\r_Clk_Count_reg_n_0_[3] ),
        .O(\r_SM_Main[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \r_SM_Main[2]_i_1 
       (.I0(\r_SM_Main_reg_n_0_[2] ),
        .I1(\r_SM_Main_reg_n_0_[0] ),
        .I2(\r_RX_Byte[7]_i_3_n_0 ),
        .O(\r_SM_Main[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_SM_Main_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_SM_Main[0]_i_1_n_0 ),
        .Q(\r_SM_Main_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SM_Main_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_SM_Main[1]_i_1_n_0 ),
        .Q(\r_SM_Main_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SM_Main_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_SM_Main[2]_i_1_n_0 ),
        .Q(\r_SM_Main_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "UART_TX" *) 
module zsys_fifo2Uart_0_1_UART_TX
   (o_UART_Tx,
    o_fifo_rd_en_reg,
    \FSM_sequential_States_tx_reg[2] ,
    \FSM_sequential_States_tx_reg[1] ,
    \FSM_sequential_States_tx_reg[0] ,
    clk,
    out,
    rst,
    o_fifo_rd_en,
    U_tx_dv_reg,
    \counter_delay_tx_reg[5] ,
    in0,
    i_fifo_empty,
    i_fifo_dout);
  output o_UART_Tx;
  output o_fifo_rd_en_reg;
  output \FSM_sequential_States_tx_reg[2] ;
  output \FSM_sequential_States_tx_reg[1] ;
  output \FSM_sequential_States_tx_reg[0] ;
  input clk;
  input [2:0]out;
  input rst;
  input o_fifo_rd_en;
  input U_tx_dv_reg;
  input \counter_delay_tx_reg[5] ;
  input [2:0]in0;
  input i_fifo_empty;
  input [7:0]i_fifo_dout;

  wire \FSM_sequential_States_tx[0]_i_2_n_0 ;
  wire \FSM_sequential_States_tx_reg[0] ;
  wire \FSM_sequential_States_tx_reg[1] ;
  wire \FSM_sequential_States_tx_reg[2] ;
  wire \FSM_sequential_r_SM_Main[0]_i_1_n_0 ;
  wire \FSM_sequential_r_SM_Main[0]_i_2_n_0 ;
  wire \FSM_sequential_r_SM_Main[1]_i_1_n_0 ;
  wire \FSM_sequential_r_SM_Main[2]_i_1_n_0 ;
  wire \FSM_sequential_r_SM_Main[2]_i_2_n_0 ;
  wire \FSM_sequential_r_SM_Main[2]_i_3_n_0 ;
  wire \FSM_sequential_r_SM_Main[2]_i_4_n_0 ;
  wire U_tx_active;
  wire U_tx_dv_reg;
  wire clk;
  wire \counter_delay_tx_reg[5] ;
  wire [7:0]i_fifo_dout;
  wire i_fifo_empty;
  wire [2:0]in0;
  wire o_TX_Active_i_1_n_0;
  wire o_TX_Serial_i_1_n_0;
  wire o_TX_Serial_i_3_n_0;
  wire o_TX_Serial_i_4_n_0;
  wire o_TX_Serial_reg_i_2_n_0;
  wire o_UART_Tx;
  wire o_fifo_rd_en;
  wire o_fifo_rd_en_i_2_n_0;
  wire o_fifo_rd_en_reg;
  wire [2:0]out;
  wire \r_Bit_Index[0]_i_1_n_0 ;
  wire \r_Bit_Index[1]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_2_n_0 ;
  wire \r_Bit_Index_reg_n_0_[0] ;
  wire \r_Bit_Index_reg_n_0_[1] ;
  wire \r_Bit_Index_reg_n_0_[2] ;
  wire \r_Clk_Count[0]_i_1_n_0 ;
  wire \r_Clk_Count[1]_i_1_n_0 ;
  wire \r_Clk_Count[2]_i_1_n_0 ;
  wire \r_Clk_Count[3]_i_1_n_0 ;
  wire \r_Clk_Count[4]_i_1_n_0 ;
  wire \r_Clk_Count[5]_i_1_n_0 ;
  wire \r_Clk_Count[6]_i_1_n_0 ;
  wire \r_Clk_Count[6]_i_2_n_0 ;
  wire \r_Clk_Count[7]_i_1_n_0 ;
  wire \r_Clk_Count[8]_i_1_n_0 ;
  wire \r_Clk_Count[8]_i_2_n_0 ;
  wire \r_Clk_Count[9]_i_1_n_0 ;
  wire \r_Clk_Count[9]_i_2_n_0 ;
  wire \r_Clk_Count[9]_i_3_n_0 ;
  wire \r_Clk_Count[9]_i_4__0_n_0 ;
  wire \r_Clk_Count_reg_n_0_[0] ;
  wire \r_Clk_Count_reg_n_0_[1] ;
  wire \r_Clk_Count_reg_n_0_[2] ;
  wire \r_Clk_Count_reg_n_0_[3] ;
  wire \r_Clk_Count_reg_n_0_[4] ;
  wire \r_Clk_Count_reg_n_0_[5] ;
  wire \r_Clk_Count_reg_n_0_[6] ;
  wire \r_Clk_Count_reg_n_0_[7] ;
  wire \r_Clk_Count_reg_n_0_[8] ;
  wire \r_Clk_Count_reg_n_0_[9] ;
  (* RTL_KEEP = "yes" *) wire [2:0]r_SM_Main;
  wire r_TX_Data;
  wire \r_TX_Data_reg_n_0_[0] ;
  wire \r_TX_Data_reg_n_0_[1] ;
  wire \r_TX_Data_reg_n_0_[2] ;
  wire \r_TX_Data_reg_n_0_[3] ;
  wire \r_TX_Data_reg_n_0_[4] ;
  wire \r_TX_Data_reg_n_0_[5] ;
  wire \r_TX_Data_reg_n_0_[6] ;
  wire \r_TX_Data_reg_n_0_[7] ;
  wire rst;

  LUT6 #(
    .INIT(64'h1455FFFF14550000)) 
    \FSM_sequential_States_tx[0]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(o_fifo_rd_en_i_2_n_0),
        .I4(\FSM_sequential_States_tx[0]_i_2_n_0 ),
        .I5(in0[0]),
        .O(\FSM_sequential_States_tx_reg[0] ));
  LUT5 #(
    .INIT(32'h1F2F1F23)) 
    \FSM_sequential_States_tx[0]_i_2 
       (.I0(U_tx_active),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(\counter_delay_tx_reg[5] ),
        .O(\FSM_sequential_States_tx[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE3F0E3FC03200320)) 
    \FSM_sequential_States_tx[1]_i_1 
       (.I0(U_tx_active),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(\counter_delay_tx_reg[5] ),
        .I5(in0[1]),
        .O(\FSM_sequential_States_tx_reg[1] ));
  LUT6 #(
    .INIT(64'hF0DCF0DC100C1000)) 
    \FSM_sequential_States_tx[2]_i_1 
       (.I0(U_tx_active),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(\counter_delay_tx_reg[5] ),
        .I5(in0[2]),
        .O(\FSM_sequential_States_tx_reg[2] ));
  LUT6 #(
    .INIT(64'h5005540450005404)) 
    \FSM_sequential_r_SM_Main[0]_i_1 
       (.I0(r_SM_Main[2]),
        .I1(U_tx_dv_reg),
        .I2(r_SM_Main[0]),
        .I3(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I4(r_SM_Main[1]),
        .I5(\FSM_sequential_r_SM_Main[0]_i_2_n_0 ),
        .O(\FSM_sequential_r_SM_Main[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_r_SM_Main[0]_i_2 
       (.I0(\r_Bit_Index_reg_n_0_[2] ),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .I2(\r_Bit_Index_reg_n_0_[0] ),
        .O(\FSM_sequential_r_SM_Main[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5104)) 
    \FSM_sequential_r_SM_Main[1]_i_1 
       (.I0(r_SM_Main[2]),
        .I1(r_SM_Main[0]),
        .I2(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I3(r_SM_Main[1]),
        .O(\FSM_sequential_r_SM_Main[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_r_SM_Main[2]_i_1 
       (.I0(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I1(r_SM_Main[0]),
        .I2(r_SM_Main[2]),
        .I3(r_SM_Main[1]),
        .O(\FSM_sequential_r_SM_Main[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000F00FFDFDFFFFF)) 
    \FSM_sequential_r_SM_Main[2]_i_2 
       (.I0(\FSM_sequential_r_SM_Main[2]_i_3_n_0 ),
        .I1(\r_Clk_Count[6]_i_2_n_0 ),
        .I2(\r_Clk_Count_reg_n_0_[5] ),
        .I3(\r_Clk_Count_reg_n_0_[7] ),
        .I4(\r_Clk_Count_reg_n_0_[6] ),
        .I5(\FSM_sequential_r_SM_Main[2]_i_4_n_0 ),
        .O(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_r_SM_Main[2]_i_3 
       (.I0(\r_Clk_Count_reg_n_0_[8] ),
        .I1(\r_Clk_Count_reg_n_0_[9] ),
        .O(\FSM_sequential_r_SM_Main[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \FSM_sequential_r_SM_Main[2]_i_4 
       (.I0(\r_Clk_Count_reg_n_0_[9] ),
        .I1(\r_Clk_Count_reg_n_0_[8] ),
        .I2(\r_Clk_Count_reg_n_0_[2] ),
        .I3(\r_Clk_Count_reg_n_0_[7] ),
        .I4(\r_Clk_Count_reg_n_0_[3] ),
        .I5(\r_Clk_Count_reg_n_0_[4] ),
        .O(\FSM_sequential_r_SM_Main[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_SM_Main[0]_i_1_n_0 ),
        .Q(r_SM_Main[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_SM_Main[1]_i_1_n_0 ),
        .Q(r_SM_Main[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_SM_Main[2]_i_1_n_0 ),
        .Q(r_SM_Main[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEE04)) 
    o_TX_Active_i_1
       (.I0(r_SM_Main[1]),
        .I1(r_SM_Main[0]),
        .I2(r_SM_Main[2]),
        .I3(U_tx_active),
        .O(o_TX_Active_i_1_n_0));
  FDRE o_TX_Active_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_Active_i_1_n_0),
        .Q(U_tx_active),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFE500E5)) 
    o_TX_Serial_i_1
       (.I0(r_SM_Main[0]),
        .I1(o_TX_Serial_reg_i_2_n_0),
        .I2(r_SM_Main[1]),
        .I3(r_SM_Main[2]),
        .I4(o_UART_Tx),
        .O(o_TX_Serial_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_TX_Serial_i_3
       (.I0(\r_TX_Data_reg_n_0_[3] ),
        .I1(\r_TX_Data_reg_n_0_[2] ),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(\r_TX_Data_reg_n_0_[1] ),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .I5(\r_TX_Data_reg_n_0_[0] ),
        .O(o_TX_Serial_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_TX_Serial_i_4
       (.I0(\r_TX_Data_reg_n_0_[7] ),
        .I1(\r_TX_Data_reg_n_0_[6] ),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(\r_TX_Data_reg_n_0_[5] ),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .I5(\r_TX_Data_reg_n_0_[4] ),
        .O(o_TX_Serial_i_4_n_0));
  FDRE o_TX_Serial_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_Serial_i_1_n_0),
        .Q(o_UART_Tx),
        .R(1'b0));
  MUXF7 o_TX_Serial_reg_i_2
       (.I0(o_TX_Serial_i_3_n_0),
        .I1(o_TX_Serial_i_4_n_0),
        .O(o_TX_Serial_reg_i_2_n_0),
        .S(\r_Bit_Index_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFDDFFD500000005)) 
    o_fifo_rd_en_i_1
       (.I0(out[0]),
        .I1(out[2]),
        .I2(o_fifo_rd_en_i_2_n_0),
        .I3(rst),
        .I4(out[1]),
        .I5(o_fifo_rd_en),
        .O(o_fifo_rd_en_reg));
  LUT3 #(
    .INIT(8'hFE)) 
    o_fifo_rd_en_i_2
       (.I0(out[2]),
        .I1(i_fifo_empty),
        .I2(U_tx_active),
        .O(o_fifo_rd_en_i_2_n_0));
  LUT5 #(
    .INIT(32'hFEEE0010)) 
    \r_Bit_Index[0]_i_1 
       (.I0(r_SM_Main[0]),
        .I1(r_SM_Main[2]),
        .I2(r_SM_Main[1]),
        .I3(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .O(\r_Bit_Index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFDFC00000200)) 
    \r_Bit_Index[1]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(r_SM_Main[0]),
        .I2(r_SM_Main[2]),
        .I3(r_SM_Main[1]),
        .I4(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I5(\r_Bit_Index_reg_n_0_[1] ),
        .O(\r_Bit_Index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFEFC00000100)) 
    \r_Bit_Index[2]_i_1 
       (.I0(\r_Bit_Index[2]_i_2_n_0 ),
        .I1(r_SM_Main[0]),
        .I2(r_SM_Main[2]),
        .I3(r_SM_Main[1]),
        .I4(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I5(\r_Bit_Index_reg_n_0_[2] ),
        .O(\r_Bit_Index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_Bit_Index[2]_i_2 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .O(\r_Bit_Index[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Bit_Index[0]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Bit_Index[1]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Bit_Index[2]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_Clk_Count[0]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[0] ),
        .O(\r_Clk_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_Clk_Count[1]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[0] ),
        .I1(\r_Clk_Count_reg_n_0_[1] ),
        .O(\r_Clk_Count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_Clk_Count[2]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[2] ),
        .I1(\r_Clk_Count_reg_n_0_[1] ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .O(\r_Clk_Count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_Clk_Count[3]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[3] ),
        .I1(\r_Clk_Count_reg_n_0_[2] ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_Clk_Count_reg_n_0_[1] ),
        .O(\r_Clk_Count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_Clk_Count[4]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[4] ),
        .I1(\r_Clk_Count_reg_n_0_[3] ),
        .I2(\r_Clk_Count_reg_n_0_[1] ),
        .I3(\r_Clk_Count_reg_n_0_[0] ),
        .I4(\r_Clk_Count_reg_n_0_[2] ),
        .O(\r_Clk_Count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \r_Clk_Count[5]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[5] ),
        .I1(\r_Clk_Count_reg_n_0_[2] ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_Clk_Count_reg_n_0_[1] ),
        .I4(\r_Clk_Count_reg_n_0_[3] ),
        .I5(\r_Clk_Count_reg_n_0_[4] ),
        .O(\r_Clk_Count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \r_Clk_Count[6]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[6] ),
        .I1(\r_Clk_Count_reg_n_0_[5] ),
        .I2(\r_Clk_Count_reg_n_0_[4] ),
        .I3(\r_Clk_Count_reg_n_0_[3] ),
        .I4(\r_Clk_Count[6]_i_2_n_0 ),
        .I5(\r_Clk_Count_reg_n_0_[2] ),
        .O(\r_Clk_Count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_Clk_Count[6]_i_2 
       (.I0(\r_Clk_Count_reg_n_0_[0] ),
        .I1(\r_Clk_Count_reg_n_0_[1] ),
        .O(\r_Clk_Count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_Clk_Count[7]_i_1 
       (.I0(\r_Clk_Count_reg_n_0_[7] ),
        .I1(\r_Clk_Count[9]_i_4__0_n_0 ),
        .I2(\r_Clk_Count_reg_n_0_[6] ),
        .O(\r_Clk_Count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA800000000A8)) 
    \r_Clk_Count[8]_i_1 
       (.I0(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I1(r_SM_Main[1]),
        .I2(r_SM_Main[0]),
        .I3(\r_Clk_Count[8]_i_2_n_0 ),
        .I4(r_SM_Main[2]),
        .I5(\r_Clk_Count_reg_n_0_[8] ),
        .O(\r_Clk_Count[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \r_Clk_Count[8]_i_2 
       (.I0(\r_Clk_Count[9]_i_4__0_n_0 ),
        .I1(\r_Clk_Count_reg_n_0_[6] ),
        .I2(\r_Clk_Count_reg_n_0_[7] ),
        .O(\r_Clk_Count[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h001F)) 
    \r_Clk_Count[9]_i_1 
       (.I0(r_SM_Main[0]),
        .I1(r_SM_Main[1]),
        .I2(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I3(r_SM_Main[2]),
        .O(\r_Clk_Count[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_Clk_Count[9]_i_2 
       (.I0(r_SM_Main[2]),
        .O(\r_Clk_Count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \r_Clk_Count[9]_i_3 
       (.I0(\r_Clk_Count_reg_n_0_[9] ),
        .I1(\r_Clk_Count_reg_n_0_[8] ),
        .I2(\r_Clk_Count[9]_i_4__0_n_0 ),
        .I3(\r_Clk_Count_reg_n_0_[6] ),
        .I4(\r_Clk_Count_reg_n_0_[7] ),
        .O(\r_Clk_Count[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_Clk_Count[9]_i_4__0 
       (.I0(\r_Clk_Count_reg_n_0_[2] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(\r_Clk_Count_reg_n_0_[1] ),
        .I3(\r_Clk_Count_reg_n_0_[3] ),
        .I4(\r_Clk_Count_reg_n_0_[4] ),
        .I5(\r_Clk_Count_reg_n_0_[5] ),
        .O(\r_Clk_Count[9]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[0] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2_n_0 ),
        .D(\r_Clk_Count[0]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[0] ),
        .R(\r_Clk_Count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[1] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2_n_0 ),
        .D(\r_Clk_Count[1]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[1] ),
        .R(\r_Clk_Count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[2] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2_n_0 ),
        .D(\r_Clk_Count[2]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[2] ),
        .R(\r_Clk_Count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[3] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2_n_0 ),
        .D(\r_Clk_Count[3]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[3] ),
        .R(\r_Clk_Count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[4] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2_n_0 ),
        .D(\r_Clk_Count[4]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[4] ),
        .R(\r_Clk_Count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[5] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2_n_0 ),
        .D(\r_Clk_Count[5]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[5] ),
        .R(\r_Clk_Count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[6] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2_n_0 ),
        .D(\r_Clk_Count[6]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[6] ),
        .R(\r_Clk_Count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[7] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2_n_0 ),
        .D(\r_Clk_Count[7]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[7] ),
        .R(\r_Clk_Count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Clk_Count[8]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[9] 
       (.C(clk),
        .CE(\r_Clk_Count[9]_i_2_n_0 ),
        .D(\r_Clk_Count[9]_i_3_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[9] ),
        .R(\r_Clk_Count[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \r_TX_Data[7]_i_1 
       (.I0(U_tx_dv_reg),
        .I1(r_SM_Main[1]),
        .I2(r_SM_Main[2]),
        .I3(r_SM_Main[0]),
        .O(r_TX_Data));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[0] 
       (.C(clk),
        .CE(r_TX_Data),
        .D(i_fifo_dout[0]),
        .Q(\r_TX_Data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[1] 
       (.C(clk),
        .CE(r_TX_Data),
        .D(i_fifo_dout[1]),
        .Q(\r_TX_Data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[2] 
       (.C(clk),
        .CE(r_TX_Data),
        .D(i_fifo_dout[2]),
        .Q(\r_TX_Data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[3] 
       (.C(clk),
        .CE(r_TX_Data),
        .D(i_fifo_dout[3]),
        .Q(\r_TX_Data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[4] 
       (.C(clk),
        .CE(r_TX_Data),
        .D(i_fifo_dout[4]),
        .Q(\r_TX_Data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[5] 
       (.C(clk),
        .CE(r_TX_Data),
        .D(i_fifo_dout[5]),
        .Q(\r_TX_Data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[6] 
       (.C(clk),
        .CE(r_TX_Data),
        .D(i_fifo_dout[6]),
        .Q(\r_TX_Data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[7] 
       (.C(clk),
        .CE(r_TX_Data),
        .D(i_fifo_dout[7]),
        .Q(\r_TX_Data_reg_n_0_[7] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo2Uart" *) 
module zsys_fifo2Uart_0_1_fifo2Uart
   (o_UART_Tx,
    end_one_byte,
    o_fifo_rd_en,
    o_rst_fifo,
    o_serial_out,
    i_UART_Rx,
    clk,
    rst,
    i_fifo_dout,
    i_fifo_empty);
  output o_UART_Tx;
  output end_one_byte;
  output o_fifo_rd_en;
  output o_rst_fifo;
  output [7:0]o_serial_out;
  input i_UART_Rx;
  input clk;
  input rst;
  input [7:0]i_fifo_dout;
  input i_fifo_empty;

  wire \FSM_sequential_States_tx[2]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire [2:0]States_tx__0;
  wire U_tx_dv_i_1_n_0;
  wire U_tx_dv_reg_n_0;
  wire clk;
  wire [5:0]counter_delay_tx;
  wire counter_delay_tx0;
  wire \counter_delay_tx[0]_i_1_n_0 ;
  wire \counter_delay_tx[1]_i_1_n_0 ;
  wire \counter_delay_tx[2]_i_1_n_0 ;
  wire \counter_delay_tx[3]_i_1_n_0 ;
  wire \counter_delay_tx[4]_i_1_n_0 ;
  wire \counter_delay_tx[5]_i_2_n_0 ;
  wire \counter_delay_tx[5]_i_3_n_0 ;
  wire \counter_delay_tx[5]_i_4_n_0 ;
  wire end_one_byte;
  wire end_one_byte_i_1_n_0;
  wire i_UART_Rx;
  wire [7:0]i_fifo_dout;
  wire i_fifo_empty;
  wire o_UART_Tx;
  wire o_fifo_rd_en;
  wire o_rst_fifo;
  wire o_rst_fifo_i_1_n_0;
  wire [7:0]o_serial_out;
  wire rst;
  wire uart_tx_inst_n_1;
  wire uart_tx_inst_n_2;
  wire uart_tx_inst_n_3;
  wire uart_tx_inst_n_4;

  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \FSM_sequential_States_tx[2]_i_2 
       (.I0(counter_delay_tx[5]),
        .I1(counter_delay_tx[4]),
        .I2(counter_delay_tx[0]),
        .I3(counter_delay_tx[1]),
        .I4(counter_delay_tx[2]),
        .I5(counter_delay_tx[3]),
        .O(\FSM_sequential_States_tx[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "active_tx:010,sending:011,delay_next_state:100,done_byte:101,done_event:110,idle:000,read_one:001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_States_tx_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(uart_tx_inst_n_4),
        .Q(States_tx__0[0]));
  (* FSM_ENCODED_STATES = "active_tx:010,sending:011,delay_next_state:100,done_byte:101,done_event:110,idle:000,read_one:001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_States_tx_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(uart_tx_inst_n_3),
        .Q(States_tx__0[1]));
  (* FSM_ENCODED_STATES = "active_tx:010,sending:011,delay_next_state:100,done_byte:101,done_event:110,idle:000,read_one:001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_States_tx_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(uart_tx_inst_n_2),
        .Q(States_tx__0[2]));
  zsys_fifo2Uart_0_1_UART_RX UART_RX_inst
       (.clk(clk),
        .i_UART_Rx(i_UART_Rx),
        .o_serial_out(o_serial_out));
  LUT5 #(
    .INIT(32'hFFF70006)) 
    U_tx_dv_i_1
       (.I0(States_tx__0[0]),
        .I1(States_tx__0[1]),
        .I2(States_tx__0[2]),
        .I3(rst),
        .I4(U_tx_dv_reg_n_0),
        .O(U_tx_dv_i_1_n_0));
  FDRE U_tx_dv_reg
       (.C(clk),
        .CE(1'b1),
        .D(U_tx_dv_i_1_n_0),
        .Q(U_tx_dv_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_delay_tx[0]_i_1 
       (.I0(\counter_delay_tx[5]_i_3_n_0 ),
        .I1(counter_delay_tx[0]),
        .O(\counter_delay_tx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \counter_delay_tx[1]_i_1 
       (.I0(\counter_delay_tx[5]_i_3_n_0 ),
        .I1(counter_delay_tx[1]),
        .I2(counter_delay_tx[0]),
        .O(\counter_delay_tx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \counter_delay_tx[2]_i_1 
       (.I0(\counter_delay_tx[5]_i_3_n_0 ),
        .I1(counter_delay_tx[0]),
        .I2(counter_delay_tx[1]),
        .I3(counter_delay_tx[2]),
        .O(\counter_delay_tx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \counter_delay_tx[3]_i_1 
       (.I0(\counter_delay_tx[5]_i_3_n_0 ),
        .I1(counter_delay_tx[1]),
        .I2(counter_delay_tx[0]),
        .I3(counter_delay_tx[2]),
        .I4(counter_delay_tx[3]),
        .O(\counter_delay_tx[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \counter_delay_tx[4]_i_1 
       (.I0(\counter_delay_tx[5]_i_3_n_0 ),
        .I1(counter_delay_tx[4]),
        .I2(counter_delay_tx[1]),
        .I3(counter_delay_tx[0]),
        .I4(counter_delay_tx[2]),
        .I5(counter_delay_tx[3]),
        .O(\counter_delay_tx[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \counter_delay_tx[5]_i_1 
       (.I0(States_tx__0[2]),
        .I1(States_tx__0[0]),
        .I2(States_tx__0[1]),
        .I3(rst),
        .O(counter_delay_tx0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h28A0)) 
    \counter_delay_tx[5]_i_2 
       (.I0(\counter_delay_tx[5]_i_3_n_0 ),
        .I1(\counter_delay_tx[5]_i_4_n_0 ),
        .I2(counter_delay_tx[5]),
        .I3(counter_delay_tx[4]),
        .O(\counter_delay_tx[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \counter_delay_tx[5]_i_3 
       (.I0(States_tx__0[1]),
        .I1(States_tx__0[2]),
        .I2(\FSM_sequential_States_tx[2]_i_2_n_0 ),
        .O(\counter_delay_tx[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_delay_tx[5]_i_4 
       (.I0(counter_delay_tx[3]),
        .I1(counter_delay_tx[2]),
        .I2(counter_delay_tx[0]),
        .I3(counter_delay_tx[1]),
        .O(\counter_delay_tx[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_delay_tx_reg[0] 
       (.C(clk),
        .CE(counter_delay_tx0),
        .D(\counter_delay_tx[0]_i_1_n_0 ),
        .Q(counter_delay_tx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_delay_tx_reg[1] 
       (.C(clk),
        .CE(counter_delay_tx0),
        .D(\counter_delay_tx[1]_i_1_n_0 ),
        .Q(counter_delay_tx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_delay_tx_reg[2] 
       (.C(clk),
        .CE(counter_delay_tx0),
        .D(\counter_delay_tx[2]_i_1_n_0 ),
        .Q(counter_delay_tx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_delay_tx_reg[3] 
       (.C(clk),
        .CE(counter_delay_tx0),
        .D(\counter_delay_tx[3]_i_1_n_0 ),
        .Q(counter_delay_tx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_delay_tx_reg[4] 
       (.C(clk),
        .CE(counter_delay_tx0),
        .D(\counter_delay_tx[4]_i_1_n_0 ),
        .Q(counter_delay_tx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_delay_tx_reg[5] 
       (.C(clk),
        .CE(counter_delay_tx0),
        .D(\counter_delay_tx[5]_i_2_n_0 ),
        .Q(counter_delay_tx[5]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFA0008)) 
    end_one_byte_i_1
       (.I0(States_tx__0[2]),
        .I1(States_tx__0[0]),
        .I2(States_tx__0[1]),
        .I3(rst),
        .I4(end_one_byte),
        .O(end_one_byte_i_1_n_0));
  FDRE end_one_byte_reg
       (.C(clk),
        .CE(1'b1),
        .D(end_one_byte_i_1_n_0),
        .Q(end_one_byte),
        .R(1'b0));
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 F_read RD_EN" *) 
  FDRE o_fifo_rd_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(uart_tx_inst_n_1),
        .Q(o_fifo_rd_en),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    o_rst_fifo_i_1
       (.I0(o_rst_fifo),
        .I1(States_tx__0[1]),
        .I2(States_tx__0[0]),
        .I3(States_tx__0[2]),
        .O(o_rst_fifo_i_1_n_0));
  FDPE o_rst_fifo_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_rst_fifo_i_1_n_0),
        .PRE(rst),
        .Q(o_rst_fifo));
  zsys_fifo2Uart_0_1_UART_TX uart_tx_inst
       (.\FSM_sequential_States_tx_reg[0] (uart_tx_inst_n_4),
        .\FSM_sequential_States_tx_reg[1] (uart_tx_inst_n_3),
        .\FSM_sequential_States_tx_reg[2] (uart_tx_inst_n_2),
        .U_tx_dv_reg(U_tx_dv_reg_n_0),
        .clk(clk),
        .\counter_delay_tx_reg[5] (\FSM_sequential_States_tx[2]_i_2_n_0 ),
        .i_fifo_dout(i_fifo_dout),
        .i_fifo_empty(i_fifo_empty),
        .in0(States_tx__0),
        .o_UART_Tx(o_UART_Tx),
        .o_fifo_rd_en(o_fifo_rd_en),
        .o_fifo_rd_en_reg(uart_tx_inst_n_1),
        .out(States_tx__0),
        .rst(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
