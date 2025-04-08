// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Nov  4 16:09:20 2024
// Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top zsys_CPLD_ctrl_0_0 -prefix
//               zsys_CPLD_ctrl_0_0_ zsys_CPLD_ctrl_0_0_sim_netlist.v
// Design      : zsys_CPLD_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zsys_CPLD_ctrl_0_0_CPLD_comm_module
   (CPLD_SPI_SCLK,
    SR,
    CPLD_SPI_MOSI,
    CPLD_SPI_nCS,
    D,
    CPLD_Mux_sel,
    s00_axi_aclk,
    SPI_MISO,
    nCS_CPLD,
    s00_axi_aresetn,
    axi_wready_reg,
    axi_awready_reg,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    Q,
    SPI_WR_en,
    \mezz_mux_reg[2] );
  output CPLD_SPI_SCLK;
  output [0:0]SR;
  output CPLD_SPI_MOSI;
  output CPLD_SPI_nCS;
  output [14:0]D;
  output [2:0]CPLD_Mux_sel;
  input s00_axi_aclk;
  input SPI_MISO;
  input nCS_CPLD;
  input s00_axi_aresetn;
  input axi_wready_reg;
  input axi_awready_reg;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [14:0]s00_axi_wdata;
  input [13:0]Q;
  input SPI_WR_en;
  input [2:0]\mezz_mux_reg[2] ;

  wire [2:0]CPLD_Mux_sel;
  wire CPLD_SPI_MOSI;
  wire CPLD_SPI_SCLK;
  wire CPLD_SPI_nCS;
  (* RTL_KEEP = "yes" *) wire [1:0]CPLD_states_spi;
  wire [14:0]D;
  wire \FSM_sequential_CPLD_states_spi[0]_i_1_n_0 ;
  wire \FSM_sequential_CPLD_states_spi[1]_i_1_n_0 ;
  wire \FSM_sequential_CPLD_states_spi[1]_i_2_n_0 ;
  wire \FSM_sequential_CPLD_states_spi[1]_i_3_n_0 ;
  wire \FSM_sequential_SPI_states[0]_i_1_n_0 ;
  wire \FSM_sequential_SPI_states[1]_i_1_n_0 ;
  wire \FSM_sequential_SPI_states[1]_i_3_n_0 ;
  wire [13:0]Q;
  wire SPI_MISO;
  wire SPI_MOSI;
  wire SPI_MOSI_i_1_n_0;
  wire SPI_MOSI_i_2_n_0;
  wire SPI_MOSI_i_4_n_0;
  wire SPI_SCLK_i_1_n_0;
  wire [13:0]SPI_WRDATA;
  wire SPI_WRDATA0;
  wire \SPI_WRDATA_reg_n_0_[0] ;
  wire \SPI_WRDATA_reg_n_0_[10] ;
  wire \SPI_WRDATA_reg_n_0_[11] ;
  wire \SPI_WRDATA_reg_n_0_[12] ;
  wire \SPI_WRDATA_reg_n_0_[1] ;
  wire \SPI_WRDATA_reg_n_0_[2] ;
  wire \SPI_WRDATA_reg_n_0_[3] ;
  wire \SPI_WRDATA_reg_n_0_[4] ;
  wire \SPI_WRDATA_reg_n_0_[5] ;
  wire \SPI_WRDATA_reg_n_0_[6] ;
  wire \SPI_WRDATA_reg_n_0_[7] ;
  wire \SPI_WRDATA_reg_n_0_[8] ;
  wire \SPI_WRDATA_reg_n_0_[9] ;
  wire SPI_WR_en;
  wire SPI_bit_counter0;
  wire \SPI_bit_counter[0]_i_1_n_0 ;
  wire \SPI_bit_counter[1]_i_1_n_0 ;
  wire \SPI_bit_counter[2]_i_1_n_0 ;
  wire \SPI_bit_counter[3]_i_2_n_0 ;
  wire \SPI_bit_counter[3]_i_3_n_0 ;
  wire \SPI_bit_counter_reg_n_0_[0] ;
  wire \SPI_bit_counter_reg_n_0_[1] ;
  wire \SPI_bit_counter_reg_n_0_[2] ;
  wire \SPI_bit_counter_reg_n_0_[3] ;
  wire SPI_busy;
  wire SPI_busy_i_1_n_0;
  wire [2:0]SPI_counter;
  wire \SPI_counter[0]_i_1_n_0 ;
  wire \SPI_counter[1]_i_1_n_0 ;
  wire \SPI_counter[2]_i_1_n_0 ;
  wire SPI_nCS;
  wire SPI_nCS_i_1_n_0;
  wire SPI_states0;
  (* RTL_KEEP = "yes" *) wire [1:0]SPI_states__0;
  wire [0:0]SR;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire \count_wr[0]_i_1_n_0 ;
  wire \count_wr[1]_i_1_n_0 ;
  wire \count_wr[1]_i_2_n_0 ;
  wire \count_wr[1]_i_3_n_0 ;
  wire \count_wr[2]_i_1_n_0 ;
  wire \count_wr[2]_i_2_n_0 ;
  wire \count_wr[2]_i_3_n_0 ;
  wire \count_wr_reg_n_0_[0] ;
  wire \count_wr_reg_n_0_[1] ;
  wire \count_wr_reg_n_0_[2] ;
  wire [3:0]cpld_count_bit;
  wire \cpld_count_bit[3]_i_1_n_0 ;
  wire \cpld_count_bit_reg_n_0_[0] ;
  wire \cpld_count_bit_reg_n_0_[1] ;
  wire \cpld_count_bit_reg_n_0_[2] ;
  wire \cpld_count_bit_reg_n_0_[3] ;
  wire [13:0]cpld_data_rec;
  wire \cpld_data_rec[13]_i_1_n_0 ;
  wire \data_in[13]_i_1_n_0 ;
  wire \data_in[13]_i_2_n_0 ;
  wire \data_in_reg_n_0_[0] ;
  wire \data_in_reg_n_0_[10] ;
  wire \data_in_reg_n_0_[11] ;
  wire \data_in_reg_n_0_[12] ;
  wire \data_in_reg_n_0_[13] ;
  wire \data_in_reg_n_0_[1] ;
  wire \data_in_reg_n_0_[2] ;
  wire \data_in_reg_n_0_[3] ;
  wire \data_in_reg_n_0_[4] ;
  wire \data_in_reg_n_0_[5] ;
  wire \data_in_reg_n_0_[6] ;
  wire \data_in_reg_n_0_[7] ;
  wire \data_in_reg_n_0_[8] ;
  wire \data_in_reg_n_0_[9] ;
  wire flag_end_data_i_1_n_0;
  wire flag_end_data_reg_n_0;
  wire [2:0]\mezz_mux_reg[2] ;
  wire nCS_CPLD;
  wire p_0_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_awvalid;
  wire [14:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire start_SPI_com;
  wire start_SPI_com_i_1_n_0;
  wire start_SPI_com_i_2_n_0;
  wire start_SPI_com_i_3_n_0;
  wire start_SPI_com_i_4_n_0;
  wire wr_en;
  wire wr_en_1;
  wire wr_en_1_i_1_n_0;
  wire wr_en_i_1_n_0;
  wire wr_ready;
  wire wr_ready_i_1_n_0;
  wire wr_ready_i_2_n_0;

  LUT3 #(
    .INIT(8'h45)) 
    \FSM_sequential_CPLD_states_spi[0]_i_1 
       (.I0(CPLD_states_spi[0]),
        .I1(SPI_MISO),
        .I2(CPLD_states_spi[1]),
        .O(\FSM_sequential_CPLD_states_spi[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8DF8)) 
    \FSM_sequential_CPLD_states_spi[1]_i_1 
       (.I0(CPLD_states_spi[0]),
        .I1(\FSM_sequential_CPLD_states_spi[1]_i_3_n_0 ),
        .I2(CPLD_states_spi[1]),
        .I3(SPI_MISO),
        .O(\FSM_sequential_CPLD_states_spi[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h62)) 
    \FSM_sequential_CPLD_states_spi[1]_i_2 
       (.I0(CPLD_states_spi[0]),
        .I1(CPLD_states_spi[1]),
        .I2(SPI_MISO),
        .O(\FSM_sequential_CPLD_states_spi[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAAAA)) 
    \FSM_sequential_CPLD_states_spi[1]_i_3 
       (.I0(CPLD_states_spi[1]),
        .I1(\cpld_count_bit_reg_n_0_[3] ),
        .I2(\cpld_count_bit_reg_n_0_[0] ),
        .I3(\cpld_count_bit_reg_n_0_[1] ),
        .I4(\cpld_count_bit_reg_n_0_[2] ),
        .O(\FSM_sequential_CPLD_states_spi[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "receaving_data:01,end_bit:10,wait_start:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_CPLD_states_spi_reg[0] 
       (.C(CPLD_SPI_SCLK),
        .CE(\FSM_sequential_CPLD_states_spi[1]_i_1_n_0 ),
        .CLR(nCS_CPLD),
        .D(\FSM_sequential_CPLD_states_spi[0]_i_1_n_0 ),
        .Q(CPLD_states_spi[0]));
  (* FSM_ENCODED_STATES = "receaving_data:01,end_bit:10,wait_start:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_CPLD_states_spi_reg[1] 
       (.C(CPLD_SPI_SCLK),
        .CE(\FSM_sequential_CPLD_states_spi[1]_i_1_n_0 ),
        .CLR(nCS_CPLD),
        .D(\FSM_sequential_CPLD_states_spi[1]_i_2_n_0 ),
        .Q(CPLD_states_spi[1]));
  LUT6 #(
    .INIT(64'h0A0CFFFF0A0C0000)) 
    \FSM_sequential_SPI_states[0]_i_1 
       (.I0(flag_end_data_reg_n_0),
        .I1(start_SPI_com),
        .I2(SPI_states__0[0]),
        .I3(SPI_states__0[1]),
        .I4(SPI_states0),
        .I5(SPI_states__0[0]),
        .O(\FSM_sequential_SPI_states[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h38FF3800)) 
    \FSM_sequential_SPI_states[1]_i_1 
       (.I0(flag_end_data_reg_n_0),
        .I1(SPI_states__0[1]),
        .I2(SPI_states__0[0]),
        .I3(SPI_states0),
        .I4(SPI_states__0[1]),
        .O(\FSM_sequential_SPI_states[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAAEAAAAAA)) 
    \FSM_sequential_SPI_states[1]_i_2 
       (.I0(\FSM_sequential_SPI_states[1]_i_3_n_0 ),
        .I1(CPLD_SPI_SCLK),
        .I2(SPI_states__0[1]),
        .I3(SPI_MOSI_i_4_n_0),
        .I4(s00_axi_aresetn),
        .I5(SPI_nCS),
        .O(SPI_states0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \FSM_sequential_SPI_states[1]_i_3 
       (.I0(SPI_counter[2]),
        .I1(SPI_counter[1]),
        .I2(flag_end_data_reg_n_0),
        .I3(SPI_counter[0]),
        .I4(SPI_states__0[0]),
        .I5(s00_axi_aresetn),
        .O(\FSM_sequential_SPI_states[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "send_data:10,start_bit:01,idle:00,end_bit:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_SPI_states_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_SPI_states[0]_i_1_n_0 ),
        .Q(SPI_states__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "send_data:10,start_bit:01,idle:00,end_bit:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_SPI_states_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_SPI_states[1]_i_1_n_0 ),
        .Q(SPI_states__0[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0AC0FFFF0AC00000)) 
    SPI_MOSI_i_1
       (.I0(p_0_in),
        .I1(SPI_MOSI_i_2_n_0),
        .I2(SPI_states__0[0]),
        .I3(SPI_states__0[1]),
        .I4(SPI_MOSI),
        .I5(CPLD_SPI_MOSI),
        .O(SPI_MOSI_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    SPI_MOSI_i_2
       (.I0(SPI_counter[2]),
        .I1(SPI_counter[1]),
        .I2(SPI_counter[0]),
        .I3(CPLD_SPI_SCLK),
        .O(SPI_MOSI_i_2_n_0));
  LUT5 #(
    .INIT(32'hF4FFF00F)) 
    SPI_MOSI_i_3
       (.I0(CPLD_SPI_SCLK),
        .I1(\SPI_bit_counter[3]_i_3_n_0 ),
        .I2(SPI_states__0[0]),
        .I3(SPI_states__0[1]),
        .I4(SPI_MOSI_i_4_n_0),
        .O(SPI_MOSI));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    SPI_MOSI_i_4
       (.I0(SPI_counter[0]),
        .I1(SPI_counter[1]),
        .I2(SPI_counter[2]),
        .O(SPI_MOSI_i_4_n_0));
  FDCE SPI_MOSI_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(SPI_MOSI_i_1_n_0),
        .Q(CPLD_SPI_MOSI));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    SPI_SCLK_i_1
       (.I0(SPI_counter[0]),
        .I1(SPI_counter[2]),
        .I2(SPI_counter[1]),
        .I3(CPLD_SPI_SCLK),
        .O(SPI_SCLK_i_1_n_0));
  FDCE SPI_SCLK_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(SPI_SCLK_i_1_n_0),
        .Q(CPLD_SPI_SCLK));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[0]_i_1 
       (.I0(p_0_in),
        .I1(SPI_states__0[1]),
        .I2(Q[0]),
        .O(SPI_WRDATA[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[10]_i_1 
       (.I0(\SPI_WRDATA_reg_n_0_[9] ),
        .I1(SPI_states__0[1]),
        .I2(Q[10]),
        .O(SPI_WRDATA[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[11]_i_1 
       (.I0(\SPI_WRDATA_reg_n_0_[10] ),
        .I1(SPI_states__0[1]),
        .I2(Q[11]),
        .O(SPI_WRDATA[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[12]_i_1 
       (.I0(\SPI_WRDATA_reg_n_0_[11] ),
        .I1(SPI_states__0[1]),
        .I2(Q[12]),
        .O(SPI_WRDATA[12]));
  LUT5 #(
    .INIT(32'h0C800C00)) 
    \SPI_WRDATA[13]_i_1 
       (.I0(SPI_MOSI_i_2_n_0),
        .I1(s00_axi_aresetn),
        .I2(SPI_states__0[1]),
        .I3(SPI_states__0[0]),
        .I4(\SPI_bit_counter[3]_i_3_n_0 ),
        .O(SPI_WRDATA0));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[13]_i_2 
       (.I0(\SPI_WRDATA_reg_n_0_[12] ),
        .I1(SPI_states__0[1]),
        .I2(Q[13]),
        .O(SPI_WRDATA[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[1]_i_1 
       (.I0(\SPI_WRDATA_reg_n_0_[0] ),
        .I1(SPI_states__0[1]),
        .I2(Q[1]),
        .O(SPI_WRDATA[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[2]_i_1 
       (.I0(\SPI_WRDATA_reg_n_0_[1] ),
        .I1(SPI_states__0[1]),
        .I2(Q[2]),
        .O(SPI_WRDATA[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[3]_i_1 
       (.I0(\SPI_WRDATA_reg_n_0_[2] ),
        .I1(SPI_states__0[1]),
        .I2(Q[3]),
        .O(SPI_WRDATA[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[4]_i_1 
       (.I0(\SPI_WRDATA_reg_n_0_[3] ),
        .I1(SPI_states__0[1]),
        .I2(Q[4]),
        .O(SPI_WRDATA[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[5]_i_1 
       (.I0(\SPI_WRDATA_reg_n_0_[4] ),
        .I1(SPI_states__0[1]),
        .I2(Q[5]),
        .O(SPI_WRDATA[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[6]_i_1 
       (.I0(\SPI_WRDATA_reg_n_0_[5] ),
        .I1(SPI_states__0[1]),
        .I2(Q[6]),
        .O(SPI_WRDATA[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[7]_i_1 
       (.I0(\SPI_WRDATA_reg_n_0_[6] ),
        .I1(SPI_states__0[1]),
        .I2(Q[7]),
        .O(SPI_WRDATA[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[8]_i_1 
       (.I0(\SPI_WRDATA_reg_n_0_[7] ),
        .I1(SPI_states__0[1]),
        .I2(Q[8]),
        .O(SPI_WRDATA[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \SPI_WRDATA[9]_i_1 
       (.I0(\SPI_WRDATA_reg_n_0_[8] ),
        .I1(SPI_states__0[1]),
        .I2(Q[9]),
        .O(SPI_WRDATA[9]));
  FDRE \SPI_WRDATA_reg[0] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[0]),
        .Q(\SPI_WRDATA_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[10] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[10]),
        .Q(\SPI_WRDATA_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[11] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[11]),
        .Q(\SPI_WRDATA_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[12] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[12]),
        .Q(\SPI_WRDATA_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[13] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[13]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[1] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[1]),
        .Q(\SPI_WRDATA_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[2] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[2]),
        .Q(\SPI_WRDATA_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[3] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[3]),
        .Q(\SPI_WRDATA_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[4] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[4]),
        .Q(\SPI_WRDATA_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[5] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[5]),
        .Q(\SPI_WRDATA_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[6] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[6]),
        .Q(\SPI_WRDATA_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[7] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[7]),
        .Q(\SPI_WRDATA_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[8] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[8]),
        .Q(\SPI_WRDATA_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \SPI_WRDATA_reg[9] 
       (.C(s00_axi_aclk),
        .CE(SPI_WRDATA0),
        .D(SPI_WRDATA[9]),
        .Q(\SPI_WRDATA_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \SPI_bit_counter[0]_i_1 
       (.I0(SPI_states__0[1]),
        .I1(\SPI_bit_counter_reg_n_0_[0] ),
        .O(\SPI_bit_counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \SPI_bit_counter[1]_i_1 
       (.I0(\SPI_bit_counter_reg_n_0_[1] ),
        .I1(\SPI_bit_counter_reg_n_0_[0] ),
        .I2(SPI_states__0[1]),
        .O(\SPI_bit_counter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h60C0)) 
    \SPI_bit_counter[2]_i_1 
       (.I0(\SPI_bit_counter_reg_n_0_[1] ),
        .I1(\SPI_bit_counter_reg_n_0_[2] ),
        .I2(SPI_states__0[1]),
        .I3(\SPI_bit_counter_reg_n_0_[0] ),
        .O(\SPI_bit_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0D000500)) 
    \SPI_bit_counter[3]_i_1 
       (.I0(SPI_states__0[1]),
        .I1(SPI_MOSI_i_2_n_0),
        .I2(SPI_states__0[0]),
        .I3(s00_axi_aresetn),
        .I4(\SPI_bit_counter[3]_i_3_n_0 ),
        .O(SPI_bit_counter0));
  LUT5 #(
    .INIT(32'h7800F000)) 
    \SPI_bit_counter[3]_i_2 
       (.I0(\SPI_bit_counter_reg_n_0_[2] ),
        .I1(\SPI_bit_counter_reg_n_0_[1] ),
        .I2(\SPI_bit_counter_reg_n_0_[3] ),
        .I3(SPI_states__0[1]),
        .I4(\SPI_bit_counter_reg_n_0_[0] ),
        .O(\SPI_bit_counter[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \SPI_bit_counter[3]_i_3 
       (.I0(\SPI_bit_counter_reg_n_0_[2] ),
        .I1(\SPI_bit_counter_reg_n_0_[1] ),
        .I2(\SPI_bit_counter_reg_n_0_[3] ),
        .O(\SPI_bit_counter[3]_i_3_n_0 ));
  FDRE \SPI_bit_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(SPI_bit_counter0),
        .D(\SPI_bit_counter[0]_i_1_n_0 ),
        .Q(\SPI_bit_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \SPI_bit_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(SPI_bit_counter0),
        .D(\SPI_bit_counter[1]_i_1_n_0 ),
        .Q(\SPI_bit_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \SPI_bit_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(SPI_bit_counter0),
        .D(\SPI_bit_counter[2]_i_1_n_0 ),
        .Q(\SPI_bit_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \SPI_bit_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(SPI_bit_counter0),
        .D(\SPI_bit_counter[3]_i_2_n_0 ),
        .Q(\SPI_bit_counter_reg_n_0_[3] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    SPI_busy_i_1
       (.I0(SPI_states__0[0]),
        .I1(s00_axi_aresetn),
        .I2(SPI_states__0[1]),
        .I3(SPI_busy),
        .O(SPI_busy_i_1_n_0));
  FDRE SPI_busy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SPI_busy_i_1_n_0),
        .Q(SPI_busy),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \SPI_counter[0]_i_1 
       (.I0(SPI_counter[0]),
        .O(\SPI_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \SPI_counter[1]_i_1 
       (.I0(SPI_counter[2]),
        .I1(SPI_counter[0]),
        .I2(SPI_counter[1]),
        .O(\SPI_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h58)) 
    \SPI_counter[2]_i_1 
       (.I0(SPI_counter[0]),
        .I1(SPI_counter[1]),
        .I2(SPI_counter[2]),
        .O(\SPI_counter[2]_i_1_n_0 ));
  FDCE \SPI_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SPI_counter[0]_i_1_n_0 ),
        .Q(SPI_counter[0]));
  FDCE \SPI_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SPI_counter[1]_i_1_n_0 ),
        .Q(SPI_counter[1]));
  FDCE \SPI_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\SPI_counter[2]_i_1_n_0 ),
        .Q(SPI_counter[2]));
  LUT5 #(
    .INIT(32'h8BFF8B00)) 
    SPI_nCS_i_1
       (.I0(CPLD_SPI_SCLK),
        .I1(SPI_states__0[1]),
        .I2(start_SPI_com),
        .I3(SPI_nCS),
        .I4(CPLD_SPI_nCS),
        .O(SPI_nCS_i_1_n_0));
  LUT6 #(
    .INIT(64'h080000000000FFFF)) 
    SPI_nCS_i_2
       (.I0(SPI_counter[2]),
        .I1(CPLD_SPI_SCLK),
        .I2(SPI_counter[1]),
        .I3(SPI_counter[0]),
        .I4(SPI_states__0[1]),
        .I5(SPI_states__0[0]),
        .O(SPI_nCS));
  FDPE SPI_nCS_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SPI_nCS_i_1_n_0),
        .PRE(SR),
        .Q(CPLD_SPI_nCS));
  LUT6 #(
    .INIT(64'hFF00AA54FF00AAAA)) 
    \count_wr[0]_i_1 
       (.I0(\count_wr[1]_i_2_n_0 ),
        .I1(\count_wr_reg_n_0_[1] ),
        .I2(\count_wr_reg_n_0_[2] ),
        .I3(\count_wr_reg_n_0_[0] ),
        .I4(\count_wr[1]_i_3_n_0 ),
        .I5(\count_wr[2]_i_3_n_0 ),
        .O(\count_wr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCC9CCC55)) 
    \count_wr[1]_i_1 
       (.I0(\count_wr[1]_i_2_n_0 ),
        .I1(\count_wr_reg_n_0_[1] ),
        .I2(\count_wr_reg_n_0_[0] ),
        .I3(\count_wr[1]_i_3_n_0 ),
        .I4(\count_wr[2]_i_3_n_0 ),
        .O(\count_wr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \count_wr[1]_i_2 
       (.I0(SPI_counter[2]),
        .I1(SPI_counter[1]),
        .I2(CPLD_SPI_SCLK),
        .O(\count_wr[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \count_wr[1]_i_3 
       (.I0(SPI_busy),
        .I1(s00_axi_aresetn),
        .O(\count_wr[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC8CCCCCCC00CC)) 
    \count_wr[2]_i_1 
       (.I0(\count_wr[2]_i_2_n_0 ),
        .I1(\count_wr_reg_n_0_[2] ),
        .I2(\count_wr_reg_n_0_[0] ),
        .I3(s00_axi_aresetn),
        .I4(SPI_busy),
        .I5(\count_wr[2]_i_3_n_0 ),
        .O(\count_wr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h57FF)) 
    \count_wr[2]_i_2 
       (.I0(CPLD_SPI_SCLK),
        .I1(SPI_counter[1]),
        .I2(SPI_counter[2]),
        .I3(\count_wr_reg_n_0_[1] ),
        .O(\count_wr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \count_wr[2]_i_3 
       (.I0(wr_en_1),
        .I1(wr_en),
        .O(\count_wr[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_wr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_wr[0]_i_1_n_0 ),
        .Q(\count_wr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_wr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_wr[1]_i_1_n_0 ),
        .Q(\count_wr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_wr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_wr[2]_i_1_n_0 ),
        .Q(\count_wr_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \cpld_count_bit[0]_i_1 
       (.I0(CPLD_states_spi[0]),
        .I1(\cpld_count_bit_reg_n_0_[0] ),
        .O(cpld_count_bit[0]));
  LUT5 #(
    .INIT(32'h00AA2A00)) 
    \cpld_count_bit[1]_i_1 
       (.I0(CPLD_states_spi[0]),
        .I1(\cpld_count_bit_reg_n_0_[3] ),
        .I2(\cpld_count_bit_reg_n_0_[2] ),
        .I3(\cpld_count_bit_reg_n_0_[0] ),
        .I4(\cpld_count_bit_reg_n_0_[1] ),
        .O(cpld_count_bit[1]));
  LUT5 #(
    .INIT(32'h0AA020A0)) 
    \cpld_count_bit[2]_i_1 
       (.I0(CPLD_states_spi[0]),
        .I1(\cpld_count_bit_reg_n_0_[3] ),
        .I2(\cpld_count_bit_reg_n_0_[2] ),
        .I3(\cpld_count_bit_reg_n_0_[0] ),
        .I4(\cpld_count_bit_reg_n_0_[1] ),
        .O(cpld_count_bit[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \cpld_count_bit[3]_i_1 
       (.I0(CPLD_states_spi[1]),
        .O(\cpld_count_bit[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h28880888)) 
    \cpld_count_bit[3]_i_2 
       (.I0(CPLD_states_spi[0]),
        .I1(\cpld_count_bit_reg_n_0_[3] ),
        .I2(\cpld_count_bit_reg_n_0_[2] ),
        .I3(\cpld_count_bit_reg_n_0_[0] ),
        .I4(\cpld_count_bit_reg_n_0_[1] ),
        .O(cpld_count_bit[3]));
  FDCE \cpld_count_bit_reg[0] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_count_bit[3]_i_1_n_0 ),
        .CLR(nCS_CPLD),
        .D(cpld_count_bit[0]),
        .Q(\cpld_count_bit_reg_n_0_[0] ));
  FDCE \cpld_count_bit_reg[1] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_count_bit[3]_i_1_n_0 ),
        .CLR(nCS_CPLD),
        .D(cpld_count_bit[1]),
        .Q(\cpld_count_bit_reg_n_0_[1] ));
  FDCE \cpld_count_bit_reg[2] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_count_bit[3]_i_1_n_0 ),
        .CLR(nCS_CPLD),
        .D(cpld_count_bit[2]),
        .Q(\cpld_count_bit_reg_n_0_[2] ));
  FDCE \cpld_count_bit_reg[3] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_count_bit[3]_i_1_n_0 ),
        .CLR(nCS_CPLD),
        .D(cpld_count_bit[3]),
        .Q(\cpld_count_bit_reg_n_0_[3] ));
  LUT4 #(
    .INIT(16'h0004)) 
    \cpld_data_rec[13]_i_1 
       (.I0(SPI_MISO),
        .I1(CPLD_states_spi[1]),
        .I2(CPLD_states_spi[0]),
        .I3(nCS_CPLD),
        .O(\cpld_data_rec[13]_i_1_n_0 ));
  FDRE \cpld_data_rec_reg[0] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[0] ),
        .Q(cpld_data_rec[0]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[10] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[10] ),
        .Q(cpld_data_rec[10]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[11] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[11] ),
        .Q(cpld_data_rec[11]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[12] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[12] ),
        .Q(cpld_data_rec[12]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[13] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[13] ),
        .Q(cpld_data_rec[13]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[1] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[1] ),
        .Q(cpld_data_rec[1]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[2] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[2] ),
        .Q(cpld_data_rec[2]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[3] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[3] ),
        .Q(cpld_data_rec[3]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[4] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[4] ),
        .Q(cpld_data_rec[4]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[5] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[5] ),
        .Q(cpld_data_rec[5]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[6] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[6] ),
        .Q(cpld_data_rec[6]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[7] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[7] ),
        .Q(cpld_data_rec[7]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[8] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[8] ),
        .Q(cpld_data_rec[8]),
        .R(1'b0));
  FDRE \cpld_data_rec_reg[9] 
       (.C(CPLD_SPI_SCLK),
        .CE(\cpld_data_rec[13]_i_1_n_0 ),
        .D(\data_in_reg_n_0_[9] ),
        .Q(cpld_data_rec[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    \data_in[13]_i_1 
       (.I0(CPLD_states_spi[1]),
        .I1(nCS_CPLD),
        .I2(CPLD_states_spi[0]),
        .O(\data_in[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_in[13]_i_2 
       (.I0(nCS_CPLD),
        .I1(CPLD_states_spi[1]),
        .O(\data_in[13]_i_2_n_0 ));
  FDRE \data_in_reg[0] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(SPI_MISO),
        .Q(\data_in_reg_n_0_[0] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[10] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[9] ),
        .Q(\data_in_reg_n_0_[10] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[11] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[10] ),
        .Q(\data_in_reg_n_0_[11] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[12] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[11] ),
        .Q(\data_in_reg_n_0_[12] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[13] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[12] ),
        .Q(\data_in_reg_n_0_[13] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[1] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[0] ),
        .Q(\data_in_reg_n_0_[1] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[2] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[1] ),
        .Q(\data_in_reg_n_0_[2] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[3] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[2] ),
        .Q(\data_in_reg_n_0_[3] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[4] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[3] ),
        .Q(\data_in_reg_n_0_[4] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[5] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[4] ),
        .Q(\data_in_reg_n_0_[5] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[6] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[5] ),
        .Q(\data_in_reg_n_0_[6] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[7] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[6] ),
        .Q(\data_in_reg_n_0_[7] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[8] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[7] ),
        .Q(\data_in_reg_n_0_[8] ),
        .R(\data_in[13]_i_1_n_0 ));
  FDRE \data_in_reg[9] 
       (.C(CPLD_SPI_SCLK),
        .CE(\data_in[13]_i_2_n_0 ),
        .D(\data_in_reg_n_0_[8] ),
        .Q(\data_in_reg_n_0_[9] ),
        .R(\data_in[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAA00000200)) 
    flag_end_data_i_1
       (.I0(SPI_states__0[1]),
        .I1(\SPI_bit_counter[3]_i_3_n_0 ),
        .I2(\SPI_bit_counter_reg_n_0_[0] ),
        .I3(CPLD_SPI_SCLK),
        .I4(SPI_states__0[0]),
        .I5(flag_end_data_reg_n_0),
        .O(flag_end_data_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    flag_end_data_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(flag_end_data_i_1_n_0),
        .Q(flag_end_data_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \o_Mux_sel[2]_i_1 
       (.I0(s00_axi_aresetn),
        .O(SR));
  FDCE \o_Mux_sel_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\mezz_mux_reg[2] [0]),
        .Q(CPLD_Mux_sel[0]));
  FDCE \o_Mux_sel_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\mezz_mux_reg[2] [1]),
        .Q(CPLD_Mux_sel[1]));
  FDCE \o_Mux_sel_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\mezz_mux_reg[2] [2]),
        .Q(CPLD_Mux_sel[2]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[0]_i_1 
       (.I0(wr_ready),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[10]_i_1 
       (.I0(cpld_data_rec[9]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[11]_i_1 
       (.I0(cpld_data_rec[10]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[12]_i_1 
       (.I0(cpld_data_rec[11]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[13]_i_1 
       (.I0(cpld_data_rec[12]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[14]_i_2 
       (.I0(cpld_data_rec[13]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[1]_i_1 
       (.I0(cpld_data_rec[0]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[2]_i_1 
       (.I0(cpld_data_rec[1]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[3]_i_1 
       (.I0(cpld_data_rec[2]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[4]_i_1 
       (.I0(cpld_data_rec[3]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[5]_i_1 
       (.I0(cpld_data_rec[4]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[6]_i_1 
       (.I0(cpld_data_rec[5]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[7]_i_2 
       (.I0(cpld_data_rec[6]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[8]_i_1 
       (.I0(cpld_data_rec[7]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \slv_reg1[9]_i_1 
       (.I0(cpld_data_rec[8]),
        .I1(axi_wready_reg),
        .I2(axi_awready_reg),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wdata[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F040F0F0)) 
    start_SPI_com_i_1
       (.I0(wr_en_1),
        .I1(wr_en),
        .I2(start_SPI_com_i_2_n_0),
        .I3(start_SPI_com_i_3_n_0),
        .I4(s00_axi_aresetn),
        .I5(SPI_busy),
        .O(start_SPI_com_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00550054)) 
    start_SPI_com_i_2
       (.I0(\count_wr[1]_i_2_n_0 ),
        .I1(\count_wr_reg_n_0_[1] ),
        .I2(\count_wr_reg_n_0_[2] ),
        .I3(\count_wr[1]_i_3_n_0 ),
        .I4(start_SPI_com_i_4_n_0),
        .I5(start_SPI_com),
        .O(start_SPI_com_i_2_n_0));
  LUT6 #(
    .INIT(64'hDFDFDFFFFFFFFFFF)) 
    start_SPI_com_i_3
       (.I0(\count_wr_reg_n_0_[0] ),
        .I1(\count_wr_reg_n_0_[2] ),
        .I2(\count_wr_reg_n_0_[1] ),
        .I3(SPI_counter[2]),
        .I4(SPI_counter[1]),
        .I5(CPLD_SPI_SCLK),
        .O(start_SPI_com_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    start_SPI_com_i_4
       (.I0(\count_wr_reg_n_0_[0] ),
        .I1(wr_en),
        .I2(wr_en_1),
        .O(start_SPI_com_i_4_n_0));
  FDRE start_SPI_com_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(start_SPI_com_i_1_n_0),
        .Q(start_SPI_com),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    wr_en_1_i_1
       (.I0(wr_en),
        .I1(s00_axi_aresetn),
        .I2(SPI_busy),
        .I3(wr_en_1),
        .O(wr_en_1_i_1_n_0));
  FDRE wr_en_1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(wr_en_1_i_1_n_0),
        .Q(wr_en_1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    wr_en_i_1
       (.I0(wr_en),
        .I1(SPI_busy),
        .I2(SPI_WR_en),
        .O(wr_en_i_1_n_0));
  FDCE wr_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(wr_en_i_1_n_0),
        .Q(wr_en));
  LUT6 #(
    .INIT(64'hBF33BF3FB033B030)) 
    wr_ready_i_1
       (.I0(CPLD_SPI_SCLK),
        .I1(SPI_states__0[0]),
        .I2(wr_ready_i_2_n_0),
        .I3(SPI_states__0[1]),
        .I4(s00_axi_aresetn),
        .I5(wr_ready),
        .O(wr_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    wr_ready_i_2
       (.I0(SPI_counter[2]),
        .I1(SPI_states__0[0]),
        .I2(SPI_counter[0]),
        .I3(SPI_counter[1]),
        .I4(CPLD_SPI_SCLK),
        .I5(s00_axi_aresetn),
        .O(wr_ready_i_2_n_0));
  FDRE wr_ready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(wr_ready_i_1_n_0),
        .Q(wr_ready),
        .R(1'b0));
endmodule

module zsys_CPLD_ctrl_0_0_CPLD_ctrl_v1_0
   (CPLD_SPI_SCLK,
    S_AXI_AWREADY,
    CPLD_Mux_sel,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    CPLD_SPI_MOSI,
    CPLD_SPI_nCS,
    s00_axi_bvalid,
    SPI_MISO,
    nCS_CPLD,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output CPLD_SPI_SCLK;
  output S_AXI_AWREADY;
  output [2:0]CPLD_Mux_sel;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output CPLD_SPI_MOSI;
  output CPLD_SPI_nCS;
  output s00_axi_bvalid;
  input SPI_MISO;
  input nCS_CPLD;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input s00_axi_aresetn;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [2:0]CPLD_Mux_sel;
  wire CPLD_SPI_MOSI;
  wire CPLD_SPI_SCLK;
  wire CPLD_SPI_nCS;
  wire SPI_MISO;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire nCS_CPLD;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  zsys_CPLD_ctrl_0_0_CPLD_ctrl_v1_0_S00_AXI CPLD_ctrl_v1_0_S00_AXI_inst
       (.CLK(CPLD_SPI_SCLK),
        .CPLD_Mux_sel(CPLD_Mux_sel),
        .CPLD_SPI_MOSI(CPLD_SPI_MOSI),
        .CPLD_SPI_nCS(CPLD_SPI_nCS),
        .SPI_MISO(SPI_MISO),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .nCS_CPLD(nCS_CPLD),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module zsys_CPLD_ctrl_0_0_CPLD_ctrl_v1_0_S00_AXI
   (CLK,
    S_AXI_AWREADY,
    CPLD_Mux_sel,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    CPLD_SPI_MOSI,
    CPLD_SPI_nCS,
    s00_axi_bvalid,
    SPI_MISO,
    nCS_CPLD,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output CLK;
  output S_AXI_AWREADY;
  output [2:0]CPLD_Mux_sel;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output CPLD_SPI_MOSI;
  output CPLD_SPI_nCS;
  output s00_axi_bvalid;
  input SPI_MISO;
  input nCS_CPLD;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input s00_axi_aresetn;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire CLK;
  wire [2:0]CPLD_Mux_sel;
  wire CPLD_SPI_MOSI;
  wire CPLD_SPI_nCS;
  wire SPI_MISO;
  wire SPI_WR_en;
  wire [13:0]SPI_data;
  wire SPI_data_0;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire i_rst;
  wire [2:0]mezz_mux;
  wire nCS_CPLD;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[14]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire uut_n_10;
  wire uut_n_11;
  wire uut_n_12;
  wire uut_n_13;
  wire uut_n_14;
  wire uut_n_15;
  wire uut_n_16;
  wire uut_n_17;
  wire uut_n_18;
  wire uut_n_4;
  wire uut_n_5;
  wire uut_n_6;
  wire uut_n_7;
  wire uut_n_8;
  wire uut_n_9;

  FDRE SPI_WR_en_reg
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[14] ),
        .Q(SPI_WR_en),
        .R(1'b0));
  FDRE \SPI_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[0] ),
        .Q(SPI_data[0]),
        .R(1'b0));
  FDRE \SPI_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[10] ),
        .Q(SPI_data[10]),
        .R(1'b0));
  FDRE \SPI_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[11] ),
        .Q(SPI_data[11]),
        .R(1'b0));
  FDRE \SPI_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[12] ),
        .Q(SPI_data[12]),
        .R(1'b0));
  FDRE \SPI_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[13] ),
        .Q(SPI_data[13]),
        .R(1'b0));
  FDRE \SPI_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[1] ),
        .Q(SPI_data[1]),
        .R(1'b0));
  FDRE \SPI_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[2] ),
        .Q(SPI_data[2]),
        .R(1'b0));
  FDRE \SPI_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[3] ),
        .Q(SPI_data[3]),
        .R(1'b0));
  FDRE \SPI_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[4] ),
        .Q(SPI_data[4]),
        .R(1'b0));
  FDRE \SPI_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[5] ),
        .Q(SPI_data[5]),
        .R(1'b0));
  FDRE \SPI_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[6] ),
        .Q(SPI_data[6]),
        .R(1'b0));
  FDRE \SPI_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[7] ),
        .Q(SPI_data[7]),
        .R(1'b0));
  FDRE \SPI_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[8] ),
        .Q(SPI_data[8]),
        .R(1'b0));
  FDRE \SPI_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[9] ),
        .Q(SPI_data[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(i_rst));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(i_rst));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(i_rst));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(S_AXI_AWREADY),
        .I5(S_AXI_WREADY),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(i_rst));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(\slv_reg0_reg_n_0_[0] ),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(\slv_reg0_reg_n_0_[10] ),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(\slv_reg0_reg_n_0_[11] ),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(\slv_reg0_reg_n_0_[12] ),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(\slv_reg0_reg_n_0_[13] ),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(\slv_reg0_reg_n_0_[14] ),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(\slv_reg0_reg_n_0_[15] ),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(\slv_reg0_reg_n_0_[16] ),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(\slv_reg0_reg_n_0_[17] ),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(\slv_reg0_reg_n_0_[18] ),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(\slv_reg0_reg_n_0_[19] ),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(\slv_reg0_reg_n_0_[1] ),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(\slv_reg0_reg_n_0_[20] ),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(\slv_reg0_reg_n_0_[21] ),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(\slv_reg0_reg_n_0_[22] ),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(\slv_reg0_reg_n_0_[23] ),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(\slv_reg0_reg_n_0_[24] ),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(\slv_reg0_reg_n_0_[25] ),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(\slv_reg0_reg_n_0_[26] ),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(\slv_reg0_reg_n_0_[27] ),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(\slv_reg0_reg_n_0_[28] ),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(\slv_reg0_reg_n_0_[29] ),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(\slv_reg0_reg_n_0_[2] ),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg1[31]),
        .I1(\slv_reg0_reg_n_0_[31] ),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(\slv_reg0_reg_n_0_[3] ),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(\slv_reg0_reg_n_0_[4] ),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(\slv_reg0_reg_n_0_[5] ),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(\slv_reg0_reg_n_0_[6] ),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(\slv_reg0_reg_n_0_[7] ),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(\slv_reg0_reg_n_0_[8] ),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(\slv_reg0_reg_n_0_[9] ),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(i_rst));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(i_rst));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(i_rst));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(i_rst));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(i_rst));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(i_rst));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(i_rst));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(i_rst));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(i_rst));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(i_rst));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(i_rst));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(i_rst));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(i_rst));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(i_rst));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(i_rst));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(i_rst));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(i_rst));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(i_rst));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(i_rst));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(i_rst));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(i_rst));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(i_rst));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(i_rst));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(i_rst));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(i_rst));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(i_rst));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(i_rst));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(i_rst));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(i_rst));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(i_rst));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(i_rst));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(i_rst));
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \mezz_mux[2]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_aresetn),
        .O(SPI_data_0));
  FDRE \mezz_mux_reg[0] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[15] ),
        .Q(mezz_mux[0]),
        .R(1'b0));
  FDRE \mezz_mux_reg[1] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[16] ),
        .Q(mezz_mux[1]),
        .R(1'b0));
  FDRE \mezz_mux_reg[2] 
       (.C(s00_axi_aclk),
        .CE(SPI_data_0),
        .D(\slv_reg0_reg_n_0_[17] ),
        .Q(mezz_mux[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg0[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(i_rst));
  LUT4 #(
    .INIT(16'hFF08)) 
    \slv_reg1[14]_i_1 
       (.I0(p_0_in[0]),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg1[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \slv_reg1[15]_i_1 
       (.I0(s00_axi_wdata[15]),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .I4(p_0_in[0]),
        .I5(slv_reg1[15]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg1[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg1[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(s00_axi_wstrb[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \slv_reg1[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(uut_n_18),
        .Q(slv_reg1[0]),
        .R(i_rst));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[14]_i_1_n_0 ),
        .D(uut_n_8),
        .Q(slv_reg1[10]),
        .R(i_rst));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[14]_i_1_n_0 ),
        .D(uut_n_7),
        .Q(slv_reg1[11]),
        .R(i_rst));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[14]_i_1_n_0 ),
        .D(uut_n_6),
        .Q(slv_reg1[12]),
        .R(i_rst));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[14]_i_1_n_0 ),
        .D(uut_n_5),
        .Q(slv_reg1[13]),
        .R(i_rst));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[14]_i_1_n_0 ),
        .D(uut_n_4),
        .Q(slv_reg1[14]),
        .R(i_rst));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg1[15]_i_1_n_0 ),
        .Q(slv_reg1[15]),
        .R(i_rst));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(i_rst));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(i_rst));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(i_rst));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(i_rst));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(uut_n_17),
        .Q(slv_reg1[1]),
        .R(i_rst));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(i_rst));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(i_rst));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(i_rst));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(i_rst));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(i_rst));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(i_rst));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(i_rst));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(i_rst));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(i_rst));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(i_rst));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(uut_n_16),
        .Q(slv_reg1[2]),
        .R(i_rst));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(i_rst));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(i_rst));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(uut_n_15),
        .Q(slv_reg1[3]),
        .R(i_rst));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(uut_n_14),
        .Q(slv_reg1[4]),
        .R(i_rst));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(uut_n_13),
        .Q(slv_reg1[5]),
        .R(i_rst));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(uut_n_12),
        .Q(slv_reg1[6]),
        .R(i_rst));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(uut_n_11),
        .Q(slv_reg1[7]),
        .R(i_rst));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[14]_i_1_n_0 ),
        .D(uut_n_10),
        .Q(slv_reg1[8]),
        .R(i_rst));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[14]_i_1_n_0 ),
        .D(uut_n_9),
        .Q(slv_reg1[9]),
        .R(i_rst));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg2[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg2[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg2[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg2[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(i_rst));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(i_rst));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(i_rst));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(i_rst));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(i_rst));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(i_rst));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(i_rst));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(i_rst));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(i_rst));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(i_rst));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(i_rst));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(i_rst));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(i_rst));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(i_rst));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(i_rst));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(i_rst));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(i_rst));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(i_rst));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(i_rst));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(i_rst));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(i_rst));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(i_rst));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(i_rst));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(i_rst));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(i_rst));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(i_rst));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(i_rst));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(i_rst));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(i_rst));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(i_rst));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(i_rst));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(i_rst));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg3[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg3[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg3[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg3[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(i_rst));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(i_rst));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(i_rst));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(i_rst));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(i_rst));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(i_rst));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(i_rst));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(i_rst));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(i_rst));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(i_rst));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(i_rst));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(i_rst));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(i_rst));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(i_rst));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(i_rst));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(i_rst));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(i_rst));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(i_rst));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(i_rst));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(i_rst));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(i_rst));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(i_rst));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(i_rst));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(i_rst));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(i_rst));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(i_rst));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(i_rst));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(i_rst));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(i_rst));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(i_rst));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(i_rst));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(i_rst));
  zsys_CPLD_ctrl_0_0_CPLD_comm_module uut
       (.CPLD_Mux_sel(CPLD_Mux_sel),
        .CPLD_SPI_MOSI(CPLD_SPI_MOSI),
        .CPLD_SPI_SCLK(CLK),
        .CPLD_SPI_nCS(CPLD_SPI_nCS),
        .D({uut_n_4,uut_n_5,uut_n_6,uut_n_7,uut_n_8,uut_n_9,uut_n_10,uut_n_11,uut_n_12,uut_n_13,uut_n_14,uut_n_15,uut_n_16,uut_n_17,uut_n_18}),
        .Q(SPI_data),
        .SPI_MISO(SPI_MISO),
        .SPI_WR_en(SPI_WR_en),
        .SR(i_rst),
        .axi_awready_reg(S_AXI_AWREADY),
        .axi_wready_reg(S_AXI_WREADY),
        .\mezz_mux_reg[2] (mezz_mux),
        .nCS_CPLD(nCS_CPLD),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_wdata(s00_axi_wdata[14:0]),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "zsys_CPLD_ctrl_0_0,CPLD_ctrl_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "CPLD_ctrl_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_CPLD_ctrl_0_0
   (CPLD_Mux_sel,
    CPLD_SPI_MOSI,
    CPLD_SPI_SCLK,
    CPLD_SPI_nCS,
    SPI_MISO,
    nCS_CPLD,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [2:0]CPLD_Mux_sel;
  output CPLD_SPI_MOSI;
  output CPLD_SPI_SCLK;
  output CPLD_SPI_nCS;
  input SPI_MISO;
  input nCS_CPLD;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire [2:0]CPLD_Mux_sel;
  wire CPLD_SPI_MOSI;
  wire CPLD_SPI_SCLK;
  wire CPLD_SPI_nCS;
  wire SPI_MISO;
  wire nCS_CPLD;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  zsys_CPLD_ctrl_0_0_CPLD_ctrl_v1_0 U0
       (.CPLD_Mux_sel(CPLD_Mux_sel),
        .CPLD_SPI_MOSI(CPLD_SPI_MOSI),
        .CPLD_SPI_SCLK(CPLD_SPI_SCLK),
        .CPLD_SPI_nCS(CPLD_SPI_nCS),
        .SPI_MISO(SPI_MISO),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .nCS_CPLD(nCS_CPLD),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
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
