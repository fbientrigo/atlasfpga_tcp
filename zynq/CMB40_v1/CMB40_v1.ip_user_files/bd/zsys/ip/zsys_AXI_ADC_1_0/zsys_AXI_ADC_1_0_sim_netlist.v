// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Dec 13 18:27:00 2024
// Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top zsys_AXI_ADC_1_0 -prefix
//               zsys_AXI_ADC_1_0_ zsys_AXI_ADC_1_0_sim_netlist.v
// Design      : zsys_AXI_ADC_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zsys_AXI_ADC_1_0_ADC_ctrl
   (o_debug,
    s00_axi_aclk,
    SR,
    s00_axi_aresetn,
    write_reg_reg,
    Q,
    \pointer_tbr_reg[7] );
  output [7:0]o_debug;
  input s00_axi_aclk;
  input [0:0]SR;
  input s00_axi_aresetn;
  input write_reg_reg;
  input [15:0]Q;
  input [7:0]\pointer_tbr_reg[7] ;

  wire [0:2]L;
  wire [15:0]Q;
  wire [0:0]SR;
  wire \action_state[0]_i_1_n_0 ;
  wire \action_state[1]_i_1_n_0 ;
  wire \adc_action_ctrl_state_reg_n_0_[2] ;
  wire [7:0]o_debug;
  wire [7:0]\pointer_tbr_reg[7] ;
  wire [7:0]reg_addrss;
  wire reset;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire spi_core_n_4;
  wire spi_core_n_6;
  wire spi_core_n_7;
  wire [15:0]spi_data_i;
  wire spi_data_i0;
  wire write_reg_reg;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \action_state[0]_i_1 
       (.I0(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I1(s00_axi_aresetn),
        .I2(o_debug[5]),
        .O(\action_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \action_state[1]_i_1 
       (.I0(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I1(s00_axi_aresetn),
        .I2(o_debug[6]),
        .O(\action_state[1]_i_1_n_0 ));
  FDRE \action_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\action_state[0]_i_1_n_0 ),
        .Q(o_debug[5]),
        .R(1'b0));
  FDRE \action_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\action_state[1]_i_1_n_0 ),
        .Q(o_debug[6]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \adc_action_ctrl_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(spi_core_n_4),
        .Q(\adc_action_ctrl_state_reg_n_0_[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_debug[11]_INST_0 
       (.I0(reset),
        .O(o_debug[7]));
  FDCE \prev_start_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(L[2]),
        .Q(L[1]));
  FDCE \prev_start_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(L[1]),
        .Q(L[0]));
  FDCE ready_i_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(spi_core_n_7),
        .Q(o_debug[0]));
  FDRE \reg_addrss_reg[0] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(\pointer_tbr_reg[7] [0]),
        .Q(reg_addrss[0]),
        .R(1'b0));
  FDRE \reg_addrss_reg[1] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(\pointer_tbr_reg[7] [1]),
        .Q(reg_addrss[1]),
        .R(1'b0));
  FDRE \reg_addrss_reg[2] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(\pointer_tbr_reg[7] [2]),
        .Q(reg_addrss[2]),
        .R(1'b0));
  FDRE \reg_addrss_reg[3] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(\pointer_tbr_reg[7] [3]),
        .Q(reg_addrss[3]),
        .R(1'b0));
  FDRE \reg_addrss_reg[4] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(\pointer_tbr_reg[7] [4]),
        .Q(reg_addrss[4]),
        .R(1'b0));
  FDRE \reg_addrss_reg[5] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(\pointer_tbr_reg[7] [5]),
        .Q(reg_addrss[5]),
        .R(1'b0));
  FDRE \reg_addrss_reg[6] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(\pointer_tbr_reg[7] [6]),
        .Q(reg_addrss[6]),
        .R(1'b0));
  FDRE \reg_addrss_reg[7] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(\pointer_tbr_reg[7] [7]),
        .Q(reg_addrss[7]),
        .R(1'b0));
  FDPE reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset));
  zsys_AXI_ADC_1_0_SPI_core_v2 spi_core
       (.AR(o_debug[3]),
        .D({reg_addrss,spi_data_i}),
        .E(spi_data_i0),
        .L(L),
        .\adc_action_ctrl_state_reg[2] (spi_core_n_4),
        .\adc_action_ctrl_state_reg[2]_0 (\adc_action_ctrl_state_reg_n_0_[2] ),
        .o_SCLK(o_debug[2]),
        .o_debug({o_debug[4],o_debug[1]}),
        .ready_i_reg(spi_core_n_7),
        .reset(reset),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .spi_start_reg(spi_core_n_6),
        .write_reg_reg(write_reg_reg));
  FDRE \spi_data_i_reg[0] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[0]),
        .Q(spi_data_i[0]),
        .R(1'b0));
  FDRE \spi_data_i_reg[10] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[10]),
        .Q(spi_data_i[10]),
        .R(1'b0));
  FDRE \spi_data_i_reg[11] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[11]),
        .Q(spi_data_i[11]),
        .R(1'b0));
  FDRE \spi_data_i_reg[12] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[12]),
        .Q(spi_data_i[12]),
        .R(1'b0));
  FDRE \spi_data_i_reg[13] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[13]),
        .Q(spi_data_i[13]),
        .R(1'b0));
  FDRE \spi_data_i_reg[14] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[14]),
        .Q(spi_data_i[14]),
        .R(1'b0));
  FDRE \spi_data_i_reg[15] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[15]),
        .Q(spi_data_i[15]),
        .R(1'b0));
  FDRE \spi_data_i_reg[1] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[1]),
        .Q(spi_data_i[1]),
        .R(1'b0));
  FDRE \spi_data_i_reg[2] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[2]),
        .Q(spi_data_i[2]),
        .R(1'b0));
  FDRE \spi_data_i_reg[3] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[3]),
        .Q(spi_data_i[3]),
        .R(1'b0));
  FDRE \spi_data_i_reg[4] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[4]),
        .Q(spi_data_i[4]),
        .R(1'b0));
  FDRE \spi_data_i_reg[5] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[5]),
        .Q(spi_data_i[5]),
        .R(1'b0));
  FDRE \spi_data_i_reg[6] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[6]),
        .Q(spi_data_i[6]),
        .R(1'b0));
  FDRE \spi_data_i_reg[7] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[7]),
        .Q(spi_data_i[7]),
        .R(1'b0));
  FDRE \spi_data_i_reg[8] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[8]),
        .Q(spi_data_i[8]),
        .R(1'b0));
  FDRE \spi_data_i_reg[9] 
       (.C(s00_axi_aclk),
        .CE(spi_data_i0),
        .D(Q[9]),
        .Q(spi_data_i[9]),
        .R(1'b0));
  FDCE spi_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(spi_core_n_6),
        .Q(L[2]));
endmodule

module zsys_AXI_ADC_1_0_ADC_readout_3
   (SR,
    o_data_out_ch0,
    o_data_out_ch1,
    o_data_out_ch2,
    o_data_out_ch3,
    o_data_out_ch4,
    o_data_out_ch5,
    o_data_out_ch6,
    o_data_out_ch7,
    i_Lclk,
    CLKB,
    i_ADclk,
    i_data_in_ch0_p,
    i_data_in_ch0_n,
    i_data_in_ch1_p,
    i_data_in_ch1_n,
    i_data_in_ch2_p,
    i_data_in_ch2_n,
    i_data_in_ch3_p,
    i_data_in_ch3_n,
    i_data_in_ch4_p,
    i_data_in_ch4_n,
    i_data_in_ch5_p,
    i_data_in_ch5_n,
    i_data_in_ch6_p,
    i_data_in_ch6_n,
    i_data_in_ch7_p,
    i_data_in_ch7_n,
    s00_axi_aresetn);
  output [0:0]SR;
  output [15:0]o_data_out_ch0;
  output [15:0]o_data_out_ch1;
  output [15:0]o_data_out_ch2;
  output [15:0]o_data_out_ch3;
  output [15:0]o_data_out_ch4;
  output [15:0]o_data_out_ch5;
  output [15:0]o_data_out_ch6;
  output [15:0]o_data_out_ch7;
  input i_Lclk;
  input CLKB;
  input i_ADclk;
  input i_data_in_ch0_p;
  input i_data_in_ch0_n;
  input i_data_in_ch1_p;
  input i_data_in_ch1_n;
  input i_data_in_ch2_p;
  input i_data_in_ch2_n;
  input i_data_in_ch3_p;
  input i_data_in_ch3_n;
  input i_data_in_ch4_p;
  input i_data_in_ch4_n;
  input i_data_in_ch5_p;
  input i_data_in_ch5_n;
  input i_data_in_ch6_p;
  input i_data_in_ch6_n;
  input i_data_in_ch7_p;
  input i_data_in_ch7_n;
  input s00_axi_aresetn;

  wire BITSLIP;
  wire CLKB;
  wire Q1;
  wire Q2;
  wire Q3;
  wire Q4;
  wire Q5;
  wire Q6;
  wire Q7;
  wire [0:0]SR;
  wire bitslip_even_i_1_n_0;
  wire bitslip_even_reg_n_0;
  wire bitslip_odd_i_1_n_0;
  wire flag1;
  wire flag1_i_1_n_0;
  wire flag1_i_2_n_0;
  wire flag2;
  wire flag2_i_1_n_0;
  wire flag2_i_2_n_0;
  wire i_ADclk;
  wire i_Lclk;
  wire i_data_in_ch0_n;
  wire i_data_in_ch0_p;
  wire i_data_in_ch1_n;
  wire i_data_in_ch1_p;
  wire i_data_in_ch2_n;
  wire i_data_in_ch2_p;
  wire i_data_in_ch3_n;
  wire i_data_in_ch3_p;
  wire i_data_in_ch4_n;
  wire i_data_in_ch4_p;
  wire i_data_in_ch5_n;
  wire i_data_in_ch5_p;
  wire i_data_in_ch6_n;
  wire i_data_in_ch6_p;
  wire i_data_in_ch7_n;
  wire i_data_in_ch7_p;
  wire iserdes_frame_p_odd_n_1;
  wire iserdes_frame_p_odd_n_2;
  wire iserdes_frame_p_odd_n_3;
  wire iserdes_frame_p_odd_n_4;
  wire iserdes_frame_p_odd_n_5;
  wire iserdes_frame_p_odd_n_6;
  wire iserdes_frame_p_odd_n_7;
  wire [15:0]o_data_out_ch0;
  wire [15:0]o_data_out_ch1;
  wire [15:0]o_data_out_ch2;
  wire [15:0]o_data_out_ch3;
  wire [15:0]o_data_out_ch4;
  wire [15:0]o_data_out_ch5;
  wire [15:0]o_data_out_ch6;
  wire [15:0]o_data_out_ch7;
  wire s00_axi_aresetn;
  wire \t_wait1[0]_i_1_n_0 ;
  wire \t_wait1[1]_i_1_n_0 ;
  wire \t_wait1_reg_n_0_[0] ;
  wire \t_wait1_reg_n_0_[1] ;
  wire \t_wait2[0]_i_1_n_0 ;
  wire \t_wait2[1]_i_1_n_0 ;
  wire \t_wait2_reg_n_0_[0] ;
  wire \t_wait2_reg_n_0_[1] ;
  wire NLW_iserdes0_even_O_UNCONNECTED;
  wire NLW_iserdes0_even_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes0_even_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes0_odd_O_UNCONNECTED;
  wire NLW_iserdes0_odd_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes0_odd_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes1_n_O_UNCONNECTED;
  wire NLW_iserdes1_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes1_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes1_p_O_UNCONNECTED;
  wire NLW_iserdes1_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes1_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes2_n_O_UNCONNECTED;
  wire NLW_iserdes2_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes2_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes2_p_O_UNCONNECTED;
  wire NLW_iserdes2_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes2_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes3_n_O_UNCONNECTED;
  wire NLW_iserdes3_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes3_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes3_p_O_UNCONNECTED;
  wire NLW_iserdes3_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes3_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes4_n_O_UNCONNECTED;
  wire NLW_iserdes4_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes4_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes4_p_O_UNCONNECTED;
  wire NLW_iserdes4_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes4_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes5_n_O_UNCONNECTED;
  wire NLW_iserdes5_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes5_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes5_p_O_UNCONNECTED;
  wire NLW_iserdes5_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes5_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes6_n_O_UNCONNECTED;
  wire NLW_iserdes6_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes6_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes6_p_O_UNCONNECTED;
  wire NLW_iserdes6_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes6_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes7_n_O_UNCONNECTED;
  wire NLW_iserdes7_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes7_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes7_p_O_UNCONNECTED;
  wire NLW_iserdes7_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes7_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes_frame_n_even_O_UNCONNECTED;
  wire NLW_iserdes_frame_n_even_Q8_UNCONNECTED;
  wire NLW_iserdes_frame_n_even_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes_frame_n_even_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes_frame_p_odd_O_UNCONNECTED;
  wire NLW_iserdes_frame_p_odd_Q8_UNCONNECTED;
  wire NLW_iserdes_frame_p_odd_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes_frame_p_odd_SHIFTOUT2_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFF0EEEE0000EEEE)) 
    bitslip_even_i_1
       (.I0(Q7),
        .I1(flag2_i_2_n_0),
        .I2(\t_wait2_reg_n_0_[0] ),
        .I3(\t_wait2_reg_n_0_[1] ),
        .I4(flag2),
        .I5(bitslip_even_reg_n_0),
        .O(bitslip_even_i_1_n_0));
  FDCE bitslip_even_reg
       (.C(i_ADclk),
        .CE(1'b1),
        .CLR(SR),
        .D(bitslip_even_i_1_n_0),
        .Q(bitslip_even_reg_n_0));
  LUT6 #(
    .INIT(64'hFFF0DDDD0000DDDD)) 
    bitslip_odd_i_1
       (.I0(iserdes_frame_p_odd_n_5),
        .I1(flag1_i_2_n_0),
        .I2(\t_wait1_reg_n_0_[0] ),
        .I3(\t_wait1_reg_n_0_[1] ),
        .I4(flag1),
        .I5(BITSLIP),
        .O(bitslip_odd_i_1_n_0));
  FDCE bitslip_odd_reg
       (.C(i_ADclk),
        .CE(1'b1),
        .CLR(SR),
        .D(bitslip_odd_i_1_n_0),
        .Q(BITSLIP));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBFB0BFBF)) 
    flag1_i_1
       (.I0(\t_wait1_reg_n_0_[0] ),
        .I1(\t_wait1_reg_n_0_[1] ),
        .I2(flag1),
        .I3(flag1_i_2_n_0),
        .I4(iserdes_frame_p_odd_n_5),
        .O(flag1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    flag1_i_2
       (.I0(iserdes_frame_p_odd_n_4),
        .I1(iserdes_frame_p_odd_n_3),
        .I2(iserdes_frame_p_odd_n_7),
        .I3(iserdes_frame_p_odd_n_1),
        .I4(iserdes_frame_p_odd_n_2),
        .I5(iserdes_frame_p_odd_n_6),
        .O(flag1_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    flag1_reg
       (.C(i_ADclk),
        .CE(1'b1),
        .CLR(SR),
        .D(flag1_i_1_n_0),
        .Q(flag1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hBFBFBFB0)) 
    flag2_i_1
       (.I0(\t_wait2_reg_n_0_[0] ),
        .I1(\t_wait2_reg_n_0_[1] ),
        .I2(flag2),
        .I3(flag2_i_2_n_0),
        .I4(Q7),
        .O(flag2_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    flag2_i_2
       (.I0(Q5),
        .I1(Q1),
        .I2(Q3),
        .I3(Q2),
        .I4(Q4),
        .I5(Q6),
        .O(flag2_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    flag2_reg
       (.C(i_ADclk),
        .CE(1'b1),
        .CLR(SR),
        .D(flag2_i_1_n_0),
        .Q(flag2));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes0_even
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch0_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes0_even_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch0[8]),
        .Q2(o_data_out_ch0[9]),
        .Q3(o_data_out_ch0[10]),
        .Q4(o_data_out_ch0[11]),
        .Q5(o_data_out_ch0[12]),
        .Q6(o_data_out_ch0[13]),
        .Q7(o_data_out_ch0[14]),
        .Q8(o_data_out_ch0[15]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes0_even_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes0_even_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes0_odd
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch0_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes0_odd_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch0[0]),
        .Q2(o_data_out_ch0[1]),
        .Q3(o_data_out_ch0[2]),
        .Q4(o_data_out_ch0[3]),
        .Q5(o_data_out_ch0[4]),
        .Q6(o_data_out_ch0[5]),
        .Q7(o_data_out_ch0[6]),
        .Q8(o_data_out_ch0[7]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes0_odd_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes0_odd_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes1_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch1_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes1_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch1[8]),
        .Q2(o_data_out_ch1[9]),
        .Q3(o_data_out_ch1[10]),
        .Q4(o_data_out_ch1[11]),
        .Q5(o_data_out_ch1[12]),
        .Q6(o_data_out_ch1[13]),
        .Q7(o_data_out_ch1[14]),
        .Q8(o_data_out_ch1[15]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes1_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes1_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes1_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch1_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes1_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch1[0]),
        .Q2(o_data_out_ch1[1]),
        .Q3(o_data_out_ch1[2]),
        .Q4(o_data_out_ch1[3]),
        .Q5(o_data_out_ch1[4]),
        .Q6(o_data_out_ch1[5]),
        .Q7(o_data_out_ch1[6]),
        .Q8(o_data_out_ch1[7]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes1_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes1_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes2_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch2_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes2_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch2[8]),
        .Q2(o_data_out_ch2[9]),
        .Q3(o_data_out_ch2[10]),
        .Q4(o_data_out_ch2[11]),
        .Q5(o_data_out_ch2[12]),
        .Q6(o_data_out_ch2[13]),
        .Q7(o_data_out_ch2[14]),
        .Q8(o_data_out_ch2[15]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes2_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes2_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes2_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch2_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes2_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch2[0]),
        .Q2(o_data_out_ch2[1]),
        .Q3(o_data_out_ch2[2]),
        .Q4(o_data_out_ch2[3]),
        .Q5(o_data_out_ch2[4]),
        .Q6(o_data_out_ch2[5]),
        .Q7(o_data_out_ch2[6]),
        .Q8(o_data_out_ch2[7]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes2_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes2_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes3_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch3_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes3_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch3[8]),
        .Q2(o_data_out_ch3[9]),
        .Q3(o_data_out_ch3[10]),
        .Q4(o_data_out_ch3[11]),
        .Q5(o_data_out_ch3[12]),
        .Q6(o_data_out_ch3[13]),
        .Q7(o_data_out_ch3[14]),
        .Q8(o_data_out_ch3[15]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes3_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes3_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes3_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch3_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes3_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch3[0]),
        .Q2(o_data_out_ch3[1]),
        .Q3(o_data_out_ch3[2]),
        .Q4(o_data_out_ch3[3]),
        .Q5(o_data_out_ch3[4]),
        .Q6(o_data_out_ch3[5]),
        .Q7(o_data_out_ch3[6]),
        .Q8(o_data_out_ch3[7]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes3_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes3_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes4_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch4_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes4_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch4[8]),
        .Q2(o_data_out_ch4[9]),
        .Q3(o_data_out_ch4[10]),
        .Q4(o_data_out_ch4[11]),
        .Q5(o_data_out_ch4[12]),
        .Q6(o_data_out_ch4[13]),
        .Q7(o_data_out_ch4[14]),
        .Q8(o_data_out_ch4[15]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes4_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes4_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes4_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch4_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes4_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch4[0]),
        .Q2(o_data_out_ch4[1]),
        .Q3(o_data_out_ch4[2]),
        .Q4(o_data_out_ch4[3]),
        .Q5(o_data_out_ch4[4]),
        .Q6(o_data_out_ch4[5]),
        .Q7(o_data_out_ch4[6]),
        .Q8(o_data_out_ch4[7]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes4_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes4_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes5_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch5_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes5_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch5[8]),
        .Q2(o_data_out_ch5[9]),
        .Q3(o_data_out_ch5[10]),
        .Q4(o_data_out_ch5[11]),
        .Q5(o_data_out_ch5[12]),
        .Q6(o_data_out_ch5[13]),
        .Q7(o_data_out_ch5[14]),
        .Q8(o_data_out_ch5[15]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes5_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes5_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes5_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch5_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes5_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch5[0]),
        .Q2(o_data_out_ch5[1]),
        .Q3(o_data_out_ch5[2]),
        .Q4(o_data_out_ch5[3]),
        .Q5(o_data_out_ch5[4]),
        .Q6(o_data_out_ch5[5]),
        .Q7(o_data_out_ch5[6]),
        .Q8(o_data_out_ch5[7]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes5_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes5_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes6_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch6_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes6_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch6[8]),
        .Q2(o_data_out_ch6[9]),
        .Q3(o_data_out_ch6[10]),
        .Q4(o_data_out_ch6[11]),
        .Q5(o_data_out_ch6[12]),
        .Q6(o_data_out_ch6[13]),
        .Q7(o_data_out_ch6[14]),
        .Q8(o_data_out_ch6[15]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes6_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes6_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes6_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch6_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes6_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch6[0]),
        .Q2(o_data_out_ch6[1]),
        .Q3(o_data_out_ch6[2]),
        .Q4(o_data_out_ch6[3]),
        .Q5(o_data_out_ch6[4]),
        .Q6(o_data_out_ch6[5]),
        .Q7(o_data_out_ch6[6]),
        .Q8(o_data_out_ch6[7]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes6_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes6_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes7_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch7_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes7_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch7[8]),
        .Q2(o_data_out_ch7[9]),
        .Q3(o_data_out_ch7[10]),
        .Q4(o_data_out_ch7[11]),
        .Q5(o_data_out_ch7[12]),
        .Q6(o_data_out_ch7[13]),
        .Q7(o_data_out_ch7[14]),
        .Q8(o_data_out_ch7[15]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes7_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes7_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes7_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch7_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes7_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch7[0]),
        .Q2(o_data_out_ch7[1]),
        .Q3(o_data_out_ch7[2]),
        .Q4(o_data_out_ch7[3]),
        .Q5(o_data_out_ch7[4]),
        .Q6(o_data_out_ch7[5]),
        .Q7(o_data_out_ch7[6]),
        .Q8(o_data_out_ch7[7]),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes7_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes7_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b1),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes_frame_n_even
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_ADclk),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes_frame_n_even_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(Q1),
        .Q2(Q2),
        .Q3(Q3),
        .Q4(Q4),
        .Q5(Q5),
        .Q6(Q6),
        .Q7(Q7),
        .Q8(NLW_iserdes_frame_n_even_Q8_UNCONNECTED),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes_frame_n_even_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes_frame_n_even_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes_frame_p_odd
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_ADclk),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes_frame_p_odd_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(iserdes_frame_p_odd_n_1),
        .Q2(iserdes_frame_p_odd_n_2),
        .Q3(iserdes_frame_p_odd_n_3),
        .Q4(iserdes_frame_p_odd_n_4),
        .Q5(iserdes_frame_p_odd_n_5),
        .Q6(iserdes_frame_p_odd_n_6),
        .Q7(iserdes_frame_p_odd_n_7),
        .Q8(NLW_iserdes_frame_p_odd_Q8_UNCONNECTED),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes_frame_p_odd_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes_frame_p_odd_SHIFTOUT2_UNCONNECTED));
  LUT1 #(
    .INIT(2'h1)) 
    ready_i_i_2
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT3 #(
    .INIT(8'h34)) 
    \t_wait1[0]_i_1 
       (.I0(\t_wait1_reg_n_0_[1] ),
        .I1(flag1),
        .I2(\t_wait1_reg_n_0_[0] ),
        .O(\t_wait1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \t_wait1[1]_i_1 
       (.I0(\t_wait1_reg_n_0_[0] ),
        .I1(flag1),
        .I2(\t_wait1_reg_n_0_[1] ),
        .O(\t_wait1[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \t_wait1_reg[0] 
       (.C(i_ADclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\t_wait1[0]_i_1_n_0 ),
        .Q(\t_wait1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \t_wait1_reg[1] 
       (.C(i_ADclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\t_wait1[1]_i_1_n_0 ),
        .Q(\t_wait1_reg_n_0_[1] ));
  LUT3 #(
    .INIT(8'h34)) 
    \t_wait2[0]_i_1 
       (.I0(\t_wait2_reg_n_0_[1] ),
        .I1(flag2),
        .I2(\t_wait2_reg_n_0_[0] ),
        .O(\t_wait2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \t_wait2[1]_i_1 
       (.I0(\t_wait2_reg_n_0_[0] ),
        .I1(flag2),
        .I2(\t_wait2_reg_n_0_[1] ),
        .O(\t_wait2[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \t_wait2_reg[0] 
       (.C(i_ADclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\t_wait2[0]_i_1_n_0 ),
        .Q(\t_wait2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \t_wait2_reg[1] 
       (.C(i_ADclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\t_wait2[1]_i_1_n_0 ),
        .Q(\t_wait2_reg_n_0_[1] ));
endmodule

module zsys_AXI_ADC_1_0_AXI_ADC_v3
   (o_data_out_ch0,
    o_data_out_ch1,
    o_data_out_ch2,
    o_data_out_ch3,
    o_data_out_ch4,
    o_data_out_ch5,
    o_data_out_ch6,
    o_data_out_ch7,
    o_debug,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    s00_axi_rdata,
    i_Lclk,
    CLKB,
    i_ADclk,
    i_data_in_ch0_p,
    i_data_in_ch0_n,
    i_data_in_ch1_p,
    i_data_in_ch1_n,
    i_data_in_ch2_p,
    i_data_in_ch2_n,
    i_data_in_ch3_p,
    i_data_in_ch3_n,
    i_data_in_ch4_p,
    i_data_in_ch4_n,
    i_data_in_ch5_p,
    i_data_in_ch5_n,
    i_data_in_ch6_p,
    i_data_in_ch6_n,
    i_data_in_ch7_p,
    i_data_in_ch7_n,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output [15:0]o_data_out_ch0;
  output [15:0]o_data_out_ch1;
  output [15:0]o_data_out_ch2;
  output [15:0]o_data_out_ch3;
  output [15:0]o_data_out_ch4;
  output [15:0]o_data_out_ch5;
  output [15:0]o_data_out_ch6;
  output [15:0]o_data_out_ch7;
  output [8:0]o_debug;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [31:0]s00_axi_rdata;
  input i_Lclk;
  input CLKB;
  input i_ADclk;
  input i_data_in_ch0_p;
  input i_data_in_ch0_n;
  input i_data_in_ch1_p;
  input i_data_in_ch1_n;
  input i_data_in_ch2_p;
  input i_data_in_ch2_n;
  input i_data_in_ch3_p;
  input i_data_in_ch3_n;
  input i_data_in_ch4_p;
  input i_data_in_ch4_n;
  input i_data_in_ch5_p;
  input i_data_in_ch5_n;
  input i_data_in_ch6_p;
  input i_data_in_ch6_n;
  input i_data_in_ch7_p;
  input i_data_in_ch7_n;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire CLKB;
  wire i_ADclk;
  wire i_Lclk;
  wire i_data_in_ch0_n;
  wire i_data_in_ch0_p;
  wire i_data_in_ch1_n;
  wire i_data_in_ch1_p;
  wire i_data_in_ch2_n;
  wire i_data_in_ch2_p;
  wire i_data_in_ch3_n;
  wire i_data_in_ch3_p;
  wire i_data_in_ch4_n;
  wire i_data_in_ch4_p;
  wire i_data_in_ch5_n;
  wire i_data_in_ch5_p;
  wire i_data_in_ch6_n;
  wire i_data_in_ch6_p;
  wire i_data_in_ch7_n;
  wire i_data_in_ch7_p;
  wire [15:0]o_data_out_ch0;
  wire [15:0]o_data_out_ch1;
  wire [15:0]o_data_out_ch2;
  wire [15:0]o_data_out_ch3;
  wire [15:0]o_data_out_ch4;
  wire [15:0]o_data_out_ch5;
  wire [15:0]o_data_out_ch6;
  wire [15:0]o_data_out_ch7;
  wire [8:0]o_debug;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
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

  zsys_AXI_ADC_1_0_AXI_ADC_v3_0_S00_AXI AXI_ADC_v3_0_S00_AXI_inst
       (.CLKB(CLKB),
        .i_ADclk(i_ADclk),
        .i_Lclk(i_Lclk),
        .i_data_in_ch0_n(i_data_in_ch0_n),
        .i_data_in_ch0_p(i_data_in_ch0_p),
        .i_data_in_ch1_n(i_data_in_ch1_n),
        .i_data_in_ch1_p(i_data_in_ch1_p),
        .i_data_in_ch2_n(i_data_in_ch2_n),
        .i_data_in_ch2_p(i_data_in_ch2_p),
        .i_data_in_ch3_n(i_data_in_ch3_n),
        .i_data_in_ch3_p(i_data_in_ch3_p),
        .i_data_in_ch4_n(i_data_in_ch4_n),
        .i_data_in_ch4_p(i_data_in_ch4_p),
        .i_data_in_ch5_n(i_data_in_ch5_n),
        .i_data_in_ch5_p(i_data_in_ch5_p),
        .i_data_in_ch6_n(i_data_in_ch6_n),
        .i_data_in_ch6_p(i_data_in_ch6_p),
        .i_data_in_ch7_n(i_data_in_ch7_n),
        .i_data_in_ch7_p(i_data_in_ch7_p),
        .o_data_out_ch0(o_data_out_ch0),
        .o_data_out_ch1(o_data_out_ch1),
        .o_data_out_ch2(o_data_out_ch2),
        .o_data_out_ch3(o_data_out_ch3),
        .o_data_out_ch4(o_data_out_ch4),
        .o_data_out_ch5(o_data_out_ch5),
        .o_data_out_ch6(o_data_out_ch6),
        .o_data_out_ch7(o_data_out_ch7),
        .o_debug(o_debug),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module zsys_AXI_ADC_1_0_AXI_ADC_v3_0_S00_AXI
   (o_data_out_ch0,
    o_data_out_ch1,
    o_data_out_ch2,
    o_data_out_ch3,
    o_data_out_ch4,
    o_data_out_ch5,
    o_data_out_ch6,
    o_data_out_ch7,
    o_debug,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    s00_axi_rdata,
    i_Lclk,
    CLKB,
    i_ADclk,
    i_data_in_ch0_p,
    i_data_in_ch0_n,
    i_data_in_ch1_p,
    i_data_in_ch1_n,
    i_data_in_ch2_p,
    i_data_in_ch2_n,
    i_data_in_ch3_p,
    i_data_in_ch3_n,
    i_data_in_ch4_p,
    i_data_in_ch4_n,
    i_data_in_ch5_p,
    i_data_in_ch5_n,
    i_data_in_ch6_p,
    i_data_in_ch6_n,
    i_data_in_ch7_p,
    i_data_in_ch7_n,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output [15:0]o_data_out_ch0;
  output [15:0]o_data_out_ch1;
  output [15:0]o_data_out_ch2;
  output [15:0]o_data_out_ch3;
  output [15:0]o_data_out_ch4;
  output [15:0]o_data_out_ch5;
  output [15:0]o_data_out_ch6;
  output [15:0]o_data_out_ch7;
  output [8:0]o_debug;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [31:0]s00_axi_rdata;
  input i_Lclk;
  input CLKB;
  input i_ADclk;
  input i_data_in_ch0_p;
  input i_data_in_ch0_n;
  input i_data_in_ch1_p;
  input i_data_in_ch1_n;
  input i_data_in_ch2_p;
  input i_data_in_ch2_n;
  input i_data_in_ch3_p;
  input i_data_in_ch3_n;
  input i_data_in_ch4_p;
  input i_data_in_ch4_n;
  input i_data_in_ch5_p;
  input i_data_in_ch5_n;
  input i_data_in_ch6_p;
  input i_data_in_ch6_n;
  input i_data_in_ch7_p;
  input i_data_in_ch7_n;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire CLKB;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire i_ADclk;
  wire i_Lclk;
  wire i_data_in_ch0_n;
  wire i_data_in_ch0_p;
  wire i_data_in_ch1_n;
  wire i_data_in_ch1_p;
  wire i_data_in_ch2_n;
  wire i_data_in_ch2_p;
  wire i_data_in_ch3_n;
  wire i_data_in_ch3_p;
  wire i_data_in_ch4_n;
  wire i_data_in_ch4_p;
  wire i_data_in_ch5_n;
  wire i_data_in_ch5_p;
  wire i_data_in_ch6_n;
  wire i_data_in_ch6_p;
  wire i_data_in_ch7_n;
  wire i_data_in_ch7_p;
  wire i_rst;
  wire [15:0]o_data_out_ch0;
  wire [15:0]o_data_out_ch1;
  wire [15:0]o_data_out_ch2;
  wire [15:0]o_data_out_ch3;
  wire [15:0]o_data_out_ch4;
  wire [15:0]o_data_out_ch5;
  wire [15:0]o_data_out_ch6;
  wire [15:0]o_data_out_ch7;
  wire [8:0]o_debug;
  wire [7:0]pointer_tbr;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
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
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
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
  wire [15:0]wr_value;
  wire write_reg;
  wire write_reg_i_1_n_0;

  zsys_AXI_ADC_1_0_ADC_ctrl Inst_ADC
       (.Q(wr_value),
        .SR(i_rst),
        .o_debug({o_debug[8:2],o_debug[0]}),
        .\pointer_tbr_reg[7] (pointer_tbr),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .write_reg_reg(o_debug[1]));
  zsys_AXI_ADC_1_0_ADC_readout_3 Inst_ADC_readout_12bit
       (.CLKB(CLKB),
        .SR(i_rst),
        .i_ADclk(i_ADclk),
        .i_Lclk(i_Lclk),
        .i_data_in_ch0_n(i_data_in_ch0_n),
        .i_data_in_ch0_p(i_data_in_ch0_p),
        .i_data_in_ch1_n(i_data_in_ch1_n),
        .i_data_in_ch1_p(i_data_in_ch1_p),
        .i_data_in_ch2_n(i_data_in_ch2_n),
        .i_data_in_ch2_p(i_data_in_ch2_p),
        .i_data_in_ch3_n(i_data_in_ch3_n),
        .i_data_in_ch3_p(i_data_in_ch3_p),
        .i_data_in_ch4_n(i_data_in_ch4_n),
        .i_data_in_ch4_p(i_data_in_ch4_p),
        .i_data_in_ch5_n(i_data_in_ch5_n),
        .i_data_in_ch5_p(i_data_in_ch5_p),
        .i_data_in_ch6_n(i_data_in_ch6_n),
        .i_data_in_ch6_p(i_data_in_ch6_p),
        .i_data_in_ch7_n(i_data_in_ch7_n),
        .i_data_in_ch7_p(i_data_in_ch7_p),
        .o_data_out_ch0(o_data_out_ch0),
        .o_data_out_ch1(o_data_out_ch1),
        .o_data_out_ch2(o_data_out_ch2),
        .o_data_out_ch3(o_data_out_ch3),
        .o_data_out_ch4(o_data_out_ch4),
        .o_data_out_ch5(o_data_out_ch5),
        .o_data_out_ch6(o_data_out_ch6),
        .o_data_out_ch7(o_data_out_ch7),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awready),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awready),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(i_rst));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(i_rst));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awready),
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
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg1_reg_n_0_[11] ),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg1_reg_n_0_[12] ),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg1_reg_n_0_[13] ),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg1_reg_n_0_[14] ),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg1_reg_n_0_[15] ),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg1_reg_n_0_[16] ),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg1_reg_n_0_[17] ),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg1_reg_n_0_[18] ),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg1_reg_n_0_[19] ),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg1_reg_n_0_[1] ),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg1_reg_n_0_[20] ),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg1_reg_n_0_[21] ),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg1_reg_n_0_[22] ),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg1_reg_n_0_[23] ),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg1_reg_n_0_[25] ),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg1_reg_n_0_[29] ),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_2 
       (.I0(\slv_reg1_reg_n_0_[31] ),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg1_reg_n_0_[3] ),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg1_reg_n_0_[4] ),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg1_reg_n_0_[5] ),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg1_reg_n_0_[7] ),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg1_reg_n_0_[9] ),
        .I1(slv_reg0[9]),
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(i_rst));
  FDRE \pointer_tbr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[16] ),
        .Q(pointer_tbr[0]),
        .R(1'b0));
  FDRE \pointer_tbr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[17] ),
        .Q(pointer_tbr[1]),
        .R(1'b0));
  FDRE \pointer_tbr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[18] ),
        .Q(pointer_tbr[2]),
        .R(1'b0));
  FDRE \pointer_tbr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[19] ),
        .Q(pointer_tbr[3]),
        .R(1'b0));
  FDRE \pointer_tbr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[20] ),
        .Q(pointer_tbr[4]),
        .R(1'b0));
  FDRE \pointer_tbr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[21] ),
        .Q(pointer_tbr[5]),
        .R(1'b0));
  FDRE \pointer_tbr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[22] ),
        .Q(pointer_tbr[6]),
        .R(1'b0));
  FDRE \pointer_tbr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[23] ),
        .Q(pointer_tbr[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg0[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg0[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg0[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_wready),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg0[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(i_rst));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(i_rst));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(i_rst));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(i_rst));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(i_rst));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(i_rst));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(i_rst));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(i_rst));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(i_rst));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(i_rst));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(i_rst));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(i_rst));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(i_rst));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(i_rst));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(i_rst));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(i_rst));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(i_rst));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(i_rst));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(i_rst));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(i_rst));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(i_rst));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(i_rst));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(i_rst));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(i_rst));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(i_rst));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(i_rst));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(i_rst));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(i_rst));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(i_rst));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(i_rst));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(i_rst));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(i_rst));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(i_rst));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
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
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
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
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \wr_value[15]_i_1 
       (.I0(s00_axi_awready),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_aresetn),
        .O(write_reg));
  FDRE \wr_value_reg[0] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[0] ),
        .Q(wr_value[0]),
        .R(1'b0));
  FDRE \wr_value_reg[10] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[10] ),
        .Q(wr_value[10]),
        .R(1'b0));
  FDRE \wr_value_reg[11] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[11] ),
        .Q(wr_value[11]),
        .R(1'b0));
  FDRE \wr_value_reg[12] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[12] ),
        .Q(wr_value[12]),
        .R(1'b0));
  FDRE \wr_value_reg[13] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[13] ),
        .Q(wr_value[13]),
        .R(1'b0));
  FDRE \wr_value_reg[14] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[14] ),
        .Q(wr_value[14]),
        .R(1'b0));
  FDRE \wr_value_reg[15] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[15] ),
        .Q(wr_value[15]),
        .R(1'b0));
  FDRE \wr_value_reg[1] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[1] ),
        .Q(wr_value[1]),
        .R(1'b0));
  FDRE \wr_value_reg[2] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[2] ),
        .Q(wr_value[2]),
        .R(1'b0));
  FDRE \wr_value_reg[3] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[3] ),
        .Q(wr_value[3]),
        .R(1'b0));
  FDRE \wr_value_reg[4] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[4] ),
        .Q(wr_value[4]),
        .R(1'b0));
  FDRE \wr_value_reg[5] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[5] ),
        .Q(wr_value[5]),
        .R(1'b0));
  FDRE \wr_value_reg[6] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[6] ),
        .Q(wr_value[6]),
        .R(1'b0));
  FDRE \wr_value_reg[7] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[7] ),
        .Q(wr_value[7]),
        .R(1'b0));
  FDRE \wr_value_reg[8] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[8] ),
        .Q(wr_value[8]),
        .R(1'b0));
  FDRE \wr_value_reg[9] 
       (.C(s00_axi_aclk),
        .CE(write_reg),
        .D(\slv_reg1_reg_n_0_[9] ),
        .Q(wr_value[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    write_reg_i_1
       (.I0(slv_reg0[1]),
        .I1(write_reg),
        .I2(o_debug[1]),
        .O(write_reg_i_1_n_0));
  FDRE write_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(write_reg_i_1_n_0),
        .Q(o_debug[1]),
        .R(1'b0));
endmodule

module zsys_AXI_ADC_1_0_SPI_core_v2
   (o_SCLK,
    AR,
    o_debug,
    \adc_action_ctrl_state_reg[2] ,
    E,
    spi_start_reg,
    ready_i_reg,
    s00_axi_aclk,
    L,
    reset,
    s00_axi_aresetn,
    write_reg_reg,
    \adc_action_ctrl_state_reg[2]_0 ,
    D);
  output o_SCLK;
  output [0:0]AR;
  output [1:0]o_debug;
  output \adc_action_ctrl_state_reg[2] ;
  output [0:0]E;
  output spi_start_reg;
  output ready_i_reg;
  input s00_axi_aclk;
  input [0:2]L;
  input reset;
  input s00_axi_aresetn;
  input write_reg_reg;
  input \adc_action_ctrl_state_reg[2]_0 ;
  input [23:0]D;

  wire [0:0]AR;
  wire [23:0]D;
  wire [0:0]E;
  wire \FSM_sequential_sm_master[0]_i_1_n_0 ;
  wire \FSM_sequential_sm_master[0]_i_2_n_0 ;
  wire \FSM_sequential_sm_master[1]_i_1_n_0 ;
  wire \FSM_sequential_sm_master[1]_i_2_n_0 ;
  wire [0:2]L;
  wire MOSI01_out;
  wire MOSI_i_10_n_0;
  wire MOSI_i_1_n_0;
  wire MOSI_i_2_n_0;
  wire MOSI_i_3_n_0;
  wire MOSI_i_5_n_0;
  wire MOSI_i_6_n_0;
  wire MOSI_i_7_n_0;
  wire MOSI_i_8_n_0;
  wire MOSI_i_9_n_0;
  wire \adc_action_ctrl_state_reg[2] ;
  wire \adc_action_ctrl_state_reg[2]_0 ;
  wire \bit_cntr[4]_i_1_n_0 ;
  wire [4:0]bit_cntr_reg__0;
  wire \core_state[0]_i_1_n_0 ;
  wire data_i0;
  wire \data_i_reg_n_0_[0] ;
  wire \data_i_reg_n_0_[10] ;
  wire \data_i_reg_n_0_[11] ;
  wire \data_i_reg_n_0_[12] ;
  wire \data_i_reg_n_0_[13] ;
  wire \data_i_reg_n_0_[14] ;
  wire \data_i_reg_n_0_[15] ;
  wire \data_i_reg_n_0_[16] ;
  wire \data_i_reg_n_0_[17] ;
  wire \data_i_reg_n_0_[18] ;
  wire \data_i_reg_n_0_[19] ;
  wire \data_i_reg_n_0_[1] ;
  wire \data_i_reg_n_0_[20] ;
  wire \data_i_reg_n_0_[21] ;
  wire \data_i_reg_n_0_[22] ;
  wire \data_i_reg_n_0_[23] ;
  wire \data_i_reg_n_0_[2] ;
  wire \data_i_reg_n_0_[3] ;
  wire \data_i_reg_n_0_[4] ;
  wire \data_i_reg_n_0_[5] ;
  wire \data_i_reg_n_0_[6] ;
  wire \data_i_reg_n_0_[7] ;
  wire \data_i_reg_n_0_[8] ;
  wire \data_i_reg_n_0_[9] ;
  wire free_i_i_1_n_0;
  wire nCS_i_i_1_n_0;
  wire o_SCLK;
  wire [1:0]o_debug;
  wire [4:0]p_0_in;
  wire ready_i_reg;
  wire reset;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \scl_cntr[0]_i_1_n_0 ;
  wire \scl_cntr[1]_i_1_n_0 ;
  wire \scl_cntr[2]_i_1_n_0 ;
  wire \scl_cntr[3]_i_1_n_0 ;
  wire \scl_cntr[4]_i_1_n_0 ;
  wire \scl_cntr_reg_n_0_[0] ;
  wire \scl_cntr_reg_n_0_[1] ;
  wire \scl_cntr_reg_n_0_[2] ;
  wire \scl_cntr_reg_n_0_[3] ;
  wire \scl_cntr_reg_n_0_[4] ;
  wire sclk_i_i_1_n_0;
  wire sclk_i_prev;
  (* RTL_KEEP = "yes" *) wire [1:0]sm_master;
  wire spi_free;
  wire spi_start_reg;
  wire write_reg_reg;

  LUT6 #(
    .INIT(64'h00D5FFFF00D50000)) 
    \FSM_sequential_sm_master[0]_i_1 
       (.I0(sm_master[1]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[3]),
        .I3(sm_master[0]),
        .I4(\FSM_sequential_sm_master[0]_i_2_n_0 ),
        .I5(sm_master[0]),
        .O(\FSM_sequential_sm_master[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FSM_sequential_sm_master[0]_i_2 
       (.I0(L[2]),
        .I1(spi_free),
        .I2(sm_master[0]),
        .I3(sm_master[1]),
        .O(\FSM_sequential_sm_master[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0FF70FF0)) 
    \FSM_sequential_sm_master[1]_i_1 
       (.I0(L[2]),
        .I1(spi_free),
        .I2(sm_master[0]),
        .I3(sm_master[1]),
        .I4(sm_master[1]),
        .O(\FSM_sequential_sm_master[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_sm_master[1]_i_2 
       (.I0(reset),
        .I1(s00_axi_aresetn),
        .O(\FSM_sequential_sm_master[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "st_idle:00,st_start:01,st_stop:11,st_write_add:10" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_sm_master_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_sm_master[1]_i_2_n_0 ),
        .D(\FSM_sequential_sm_master[0]_i_1_n_0 ),
        .Q(sm_master[0]));
  (* FSM_ENCODED_STATES = "st_idle:00,st_start:01,st_stop:11,st_write_add:10" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_sm_master_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_sm_master[1]_i_2_n_0 ),
        .D(\FSM_sequential_sm_master[1]_i_1_n_0 ),
        .Q(sm_master[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    MOSI_i_1
       (.I0(MOSI_i_2_n_0),
        .I1(bit_cntr_reg__0[4]),
        .I2(MOSI_i_3_n_0),
        .I3(MOSI01_out),
        .I4(o_debug[0]),
        .O(MOSI_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_10
       (.I0(\data_i_reg_n_0_[12] ),
        .I1(\data_i_reg_n_0_[13] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[14] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[15] ),
        .O(MOSI_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_2
       (.I0(MOSI_i_5_n_0),
        .I1(MOSI_i_6_n_0),
        .I2(bit_cntr_reg__0[3]),
        .I3(MOSI_i_7_n_0),
        .I4(bit_cntr_reg__0[2]),
        .I5(MOSI_i_8_n_0),
        .O(MOSI_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_3
       (.I0(MOSI_i_9_n_0),
        .I1(MOSI_i_10_n_0),
        .I2(bit_cntr_reg__0[3]),
        .I3(MOSI_i_5_n_0),
        .I4(bit_cntr_reg__0[2]),
        .I5(MOSI_i_6_n_0),
        .O(MOSI_i_3_n_0));
  LUT5 #(
    .INIT(32'h00001500)) 
    MOSI_i_4
       (.I0(o_SCLK),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[3]),
        .I3(sclk_i_prev),
        .I4(AR),
        .O(MOSI01_out));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_5
       (.I0(\data_i_reg_n_0_[16] ),
        .I1(\data_i_reg_n_0_[17] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[18] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[19] ),
        .O(MOSI_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_6
       (.I0(\data_i_reg_n_0_[20] ),
        .I1(\data_i_reg_n_0_[21] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[22] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[23] ),
        .O(MOSI_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_7
       (.I0(\data_i_reg_n_0_[0] ),
        .I1(\data_i_reg_n_0_[1] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[2] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[3] ),
        .O(MOSI_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_8
       (.I0(\data_i_reg_n_0_[4] ),
        .I1(\data_i_reg_n_0_[5] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[6] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[7] ),
        .O(MOSI_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_9
       (.I0(\data_i_reg_n_0_[8] ),
        .I1(\data_i_reg_n_0_[9] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[10] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[11] ),
        .O(MOSI_i_9_n_0));
  FDRE MOSI_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(MOSI_i_1_n_0),
        .Q(o_debug[0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFDFFFDAAAA0000)) 
    \adc_action_ctrl_state[2]_i_1 
       (.I0(spi_free),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[0]),
        .I4(write_reg_reg),
        .I5(\adc_action_ctrl_state_reg[2]_0 ),
        .O(\adc_action_ctrl_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00001FFF)) 
    \bit_cntr[0]_i_1 
       (.I0(bit_cntr_reg__0[1]),
        .I1(bit_cntr_reg__0[2]),
        .I2(bit_cntr_reg__0[3]),
        .I3(bit_cntr_reg__0[4]),
        .I4(bit_cntr_reg__0[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'h0770)) 
    \bit_cntr[1]_i_1 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h07707070)) 
    \bit_cntr[2]_i_1 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[2]),
        .I3(bit_cntr_reg__0[1]),
        .I4(bit_cntr_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3444444C)) 
    \bit_cntr[3]_i_1 
       (.I0(bit_cntr_reg__0[4]),
        .I1(bit_cntr_reg__0[3]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[0]),
        .I4(bit_cntr_reg__0[2]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_cntr[4]_i_1 
       (.I0(o_SCLK),
        .I1(sclk_i_prev),
        .O(\bit_cntr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h4002AAAA)) 
    \bit_cntr[4]_i_2 
       (.I0(bit_cntr_reg__0[4]),
        .I1(bit_cntr_reg__0[2]),
        .I2(bit_cntr_reg__0[0]),
        .I3(bit_cntr_reg__0[1]),
        .I4(bit_cntr_reg__0[3]),
        .O(p_0_in[4]));
  FDCE \bit_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\bit_cntr[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(bit_cntr_reg__0[0]));
  FDCE \bit_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\bit_cntr[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(bit_cntr_reg__0[1]));
  FDCE \bit_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\bit_cntr[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(bit_cntr_reg__0[2]));
  FDCE \bit_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\bit_cntr[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(bit_cntr_reg__0[3]));
  FDCE \bit_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\bit_cntr[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(bit_cntr_reg__0[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \core_state[0]_i_1 
       (.I0(sm_master[0]),
        .I1(s00_axi_aresetn),
        .I2(reset),
        .I3(o_debug[1]),
        .O(\core_state[0]_i_1_n_0 ));
  FDRE \core_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\core_state[0]_i_1_n_0 ),
        .Q(o_debug[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \data_i[23]_i_1 
       (.I0(L[2]),
        .I1(sm_master[1]),
        .I2(s00_axi_aresetn),
        .I3(reset),
        .I4(sm_master[0]),
        .I5(spi_free),
        .O(data_i0));
  FDRE \data_i_reg[0] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[0]),
        .Q(\data_i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_i_reg[10] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[10]),
        .Q(\data_i_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_i_reg[11] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[11]),
        .Q(\data_i_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_i_reg[12] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[12]),
        .Q(\data_i_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_i_reg[13] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[13]),
        .Q(\data_i_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_i_reg[14] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[14]),
        .Q(\data_i_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_i_reg[15] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[15]),
        .Q(\data_i_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_i_reg[16] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[16]),
        .Q(\data_i_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_i_reg[17] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[17]),
        .Q(\data_i_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_i_reg[18] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[18]),
        .Q(\data_i_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_i_reg[19] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[19]),
        .Q(\data_i_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_i_reg[1] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[1]),
        .Q(\data_i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_i_reg[20] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[20]),
        .Q(\data_i_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_i_reg[21] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[21]),
        .Q(\data_i_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_i_reg[22] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[22]),
        .Q(\data_i_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_i_reg[23] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[23]),
        .Q(\data_i_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_i_reg[2] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[2]),
        .Q(\data_i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_i_reg[3] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[3]),
        .Q(\data_i_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_i_reg[4] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[4]),
        .Q(\data_i_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_i_reg[5] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[5]),
        .Q(\data_i_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_i_reg[6] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[6]),
        .Q(\data_i_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_i_reg[7] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[7]),
        .Q(\data_i_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_i_reg[8] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[8]),
        .Q(\data_i_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_i_reg[9] 
       (.C(s00_axi_aclk),
        .CE(data_i0),
        .D(D[9]),
        .Q(\data_i_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFD03)) 
    free_i_i_1
       (.I0(L[2]),
        .I1(sm_master[1]),
        .I2(sm_master[0]),
        .I3(spi_free),
        .O(free_i_i_1_n_0));
  FDCE free_i_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_sm_master[1]_i_2_n_0 ),
        .D(free_i_i_1_n_0),
        .Q(spi_free));
  LUT5 #(
    .INIT(32'hFFDF2010)) 
    nCS_i_i_1
       (.I0(sm_master[0]),
        .I1(reset),
        .I2(s00_axi_aresetn),
        .I3(sm_master[1]),
        .I4(AR),
        .O(nCS_i_i_1_n_0));
  FDRE nCS_i_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(nCS_i_i_1_n_0),
        .Q(AR),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h10)) 
    ready_i_i_1
       (.I0(write_reg_reg),
        .I1(\adc_action_ctrl_state_reg[2]_0 ),
        .I2(spi_free),
        .O(ready_i_reg));
  LUT4 #(
    .INIT(16'h001F)) 
    \scl_cntr[0]_i_1 
       (.I0(\scl_cntr_reg_n_0_[3] ),
        .I1(\scl_cntr_reg_n_0_[2] ),
        .I2(\scl_cntr_reg_n_0_[4] ),
        .I3(\scl_cntr_reg_n_0_[0] ),
        .O(\scl_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h001F1F00)) 
    \scl_cntr[1]_i_1 
       (.I0(\scl_cntr_reg_n_0_[3] ),
        .I1(\scl_cntr_reg_n_0_[2] ),
        .I2(\scl_cntr_reg_n_0_[4] ),
        .I3(\scl_cntr_reg_n_0_[1] ),
        .I4(\scl_cntr_reg_n_0_[0] ),
        .O(\scl_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h07303030)) 
    \scl_cntr[2]_i_1 
       (.I0(\scl_cntr_reg_n_0_[3] ),
        .I1(\scl_cntr_reg_n_0_[4] ),
        .I2(\scl_cntr_reg_n_0_[2] ),
        .I3(\scl_cntr_reg_n_0_[1] ),
        .I4(\scl_cntr_reg_n_0_[0] ),
        .O(\scl_cntr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h14444444)) 
    \scl_cntr[3]_i_1 
       (.I0(\scl_cntr_reg_n_0_[4] ),
        .I1(\scl_cntr_reg_n_0_[3] ),
        .I2(\scl_cntr_reg_n_0_[2] ),
        .I3(\scl_cntr_reg_n_0_[0] ),
        .I4(\scl_cntr_reg_n_0_[1] ),
        .O(\scl_cntr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40002222)) 
    \scl_cntr[4]_i_1 
       (.I0(\scl_cntr_reg_n_0_[4] ),
        .I1(\scl_cntr_reg_n_0_[3] ),
        .I2(\scl_cntr_reg_n_0_[1] ),
        .I3(\scl_cntr_reg_n_0_[0] ),
        .I4(\scl_cntr_reg_n_0_[2] ),
        .O(\scl_cntr[4]_i_1_n_0 ));
  FDCE \scl_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\scl_cntr[0]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[0] ));
  FDCE \scl_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\scl_cntr[1]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[1] ));
  FDCE \scl_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\scl_cntr[2]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[2] ));
  FDCE \scl_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\scl_cntr[3]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[3] ));
  FDCE \scl_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\scl_cntr[4]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[4] ));
  LUT5 #(
    .INIT(32'hFFC803C8)) 
    sclk_i_i_1
       (.I0(\scl_cntr_reg_n_0_[1] ),
        .I1(\scl_cntr_reg_n_0_[3] ),
        .I2(\scl_cntr_reg_n_0_[2] ),
        .I3(\scl_cntr_reg_n_0_[4] ),
        .I4(o_SCLK),
        .O(sclk_i_i_1_n_0));
  FDPE sclk_i_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(o_SCLK),
        .PRE(AR),
        .Q(sclk_i_prev));
  FDPE sclk_i_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sclk_i_i_1_n_0),
        .PRE(AR),
        .Q(o_SCLK));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spi_data_i[15]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(write_reg_reg),
        .I2(\adc_action_ctrl_state_reg[2]_0 ),
        .I3(spi_free),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    spi_start_i_1
       (.I0(\adc_action_ctrl_state_reg[2]_0 ),
        .I1(write_reg_reg),
        .I2(spi_free),
        .O(spi_start_reg));
endmodule

(* CHECK_LICENSE_TYPE = "zsys_AXI_ADC_1_0,AXI_ADC_v3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "AXI_ADC_v3,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_AXI_ADC_1_0
   (i_MISO,
    o_MOSI,
    o_SCLK,
    o_nCS,
    o_ADC_nrst,
    o_debug,
    i_ADclk,
    i_Lclk,
    i_data_in_ch0_p,
    i_data_in_ch0_n,
    i_data_in_ch1_p,
    i_data_in_ch1_n,
    i_data_in_ch2_p,
    i_data_in_ch2_n,
    i_data_in_ch3_p,
    i_data_in_ch3_n,
    i_data_in_ch4_p,
    i_data_in_ch4_n,
    i_data_in_ch5_p,
    i_data_in_ch5_n,
    i_data_in_ch6_p,
    i_data_in_ch6_n,
    i_data_in_ch7_p,
    i_data_in_ch7_n,
    o_data_out_ch0,
    o_data_out_ch1,
    o_data_out_ch2,
    o_data_out_ch3,
    o_data_out_ch4,
    o_data_out_ch5,
    o_data_out_ch6,
    o_data_out_ch7,
    o_data_clk,
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
  input i_MISO;
  output o_MOSI;
  output o_SCLK;
  output o_nCS;
  output o_ADC_nrst;
  output [11:0]o_debug;
  input i_ADclk;
  input i_Lclk;
  input i_data_in_ch0_p;
  input i_data_in_ch0_n;
  input i_data_in_ch1_p;
  input i_data_in_ch1_n;
  input i_data_in_ch2_p;
  input i_data_in_ch2_n;
  input i_data_in_ch3_p;
  input i_data_in_ch3_n;
  input i_data_in_ch4_p;
  input i_data_in_ch4_n;
  input i_data_in_ch5_p;
  input i_data_in_ch5_n;
  input i_data_in_ch6_p;
  input i_data_in_ch6_n;
  input i_data_in_ch7_p;
  input i_data_in_ch7_n;
  output [15:0]o_data_out_ch0;
  output [15:0]o_data_out_ch1;
  output [15:0]o_data_out_ch2;
  output [15:0]o_data_out_ch3;
  output [15:0]o_data_out_ch4;
  output [15:0]o_data_out_ch5;
  output [15:0]o_data_out_ch6;
  output [15:0]o_data_out_ch7;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 o_data_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME o_data_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_AXI_ADC_1_0_o_data_clk" *) output o_data_clk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [3:0]s00_axi_awaddr;
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
  wire i_ADclk;
  wire i_Lclk;
  wire i_MISO;
  wire i_data_in_ch0_n;
  wire i_data_in_ch0_p;
  wire i_data_in_ch1_n;
  wire i_data_in_ch1_p;
  wire i_data_in_ch2_n;
  wire i_data_in_ch2_p;
  wire i_data_in_ch3_n;
  wire i_data_in_ch3_p;
  wire i_data_in_ch4_n;
  wire i_data_in_ch4_p;
  wire i_data_in_ch5_n;
  wire i_data_in_ch5_p;
  wire i_data_in_ch6_n;
  wire i_data_in_ch6_p;
  wire i_data_in_ch7_n;
  wire i_data_in_ch7_p;
  wire o_SCLK;
  wire [15:0]o_data_out_ch0;
  wire [15:0]o_data_out_ch1;
  wire [15:0]o_data_out_ch2;
  wire [15:0]o_data_out_ch3;
  wire [15:0]o_data_out_ch4;
  wire [15:0]o_data_out_ch5;
  wire [15:0]o_data_out_ch6;
  wire [15:0]o_data_out_ch7;
  wire [11:0]\^o_debug ;
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

  assign o_ADC_nrst = \^o_debug [11];
  assign o_MOSI = \^o_debug [5];
  assign o_data_clk = i_ADclk;
  assign o_debug[11:7] = \^o_debug [11:7];
  assign o_debug[6] = o_SCLK;
  assign o_debug[5] = \^o_debug [5];
  assign o_debug[4] = i_MISO;
  assign o_debug[2] = \^o_debug [2];
  assign o_debug[0] = \^o_debug [0];
  assign o_nCS = \^o_debug [7];
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  zsys_AXI_ADC_1_0_AXI_ADC_v3 U0
       (.CLKB(i_Lclk),
        .i_ADclk(i_ADclk),
        .i_Lclk(i_Lclk),
        .i_data_in_ch0_n(i_data_in_ch0_n),
        .i_data_in_ch0_p(i_data_in_ch0_p),
        .i_data_in_ch1_n(i_data_in_ch1_n),
        .i_data_in_ch1_p(i_data_in_ch1_p),
        .i_data_in_ch2_n(i_data_in_ch2_n),
        .i_data_in_ch2_p(i_data_in_ch2_p),
        .i_data_in_ch3_n(i_data_in_ch3_n),
        .i_data_in_ch3_p(i_data_in_ch3_p),
        .i_data_in_ch4_n(i_data_in_ch4_n),
        .i_data_in_ch4_p(i_data_in_ch4_p),
        .i_data_in_ch5_n(i_data_in_ch5_n),
        .i_data_in_ch5_p(i_data_in_ch5_p),
        .i_data_in_ch6_n(i_data_in_ch6_n),
        .i_data_in_ch6_p(i_data_in_ch6_p),
        .i_data_in_ch7_n(i_data_in_ch7_n),
        .i_data_in_ch7_p(i_data_in_ch7_p),
        .o_data_out_ch0(o_data_out_ch0),
        .o_data_out_ch1(o_data_out_ch1),
        .o_data_out_ch2(o_data_out_ch2),
        .o_data_out_ch3(o_data_out_ch3),
        .o_data_out_ch4(o_data_out_ch4),
        .o_data_out_ch5(o_data_out_ch5),
        .o_data_out_ch6(o_data_out_ch6),
        .o_data_out_ch7(o_data_out_ch7),
        .o_debug({\^o_debug [11:7],o_SCLK,\^o_debug [5],\^o_debug [2],\^o_debug [0]}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
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
