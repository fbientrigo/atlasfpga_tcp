// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jun 26 16:46:33 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top zsys_dac_i2c_0_0 -prefix
//               zsys_dac_i2c_0_0_ zsys_dac_i2c_0_0_sim_netlist.v
// Design      : zsys_dac_i2c_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zsys_dac_i2c_0_0_dac_i2c_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    Fail_ACL_i2c,
    s00_axi_rdata,
    scl_o,
    s00_axi_rvalid,
    sda_t,
    sda_o,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    sda_i,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output Fail_ACL_i2c;
  output [31:0]s00_axi_rdata;
  output scl_o;
  output s00_axi_rvalid;
  output sda_t;
  output sda_o;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input sda_i;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire Fail_ACL_i2c;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
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
  wire scl_o;
  wire sda_i;
  wire sda_o;
  wire sda_t;

  zsys_dac_i2c_0_0_dac_i2c_v1_0_S00_AXI dac_i2c_v1_0_S00_AXI_inst
       (.Fail_ACL_i2c(Fail_ACL_i2c),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
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
        .s00_axi_wvalid(s00_axi_wvalid),
        .scl_o(scl_o),
        .sda_i(sda_i),
        .sda_o(sda_o),
        .sda_t(sda_t));
endmodule

module zsys_dac_i2c_0_0_dac_i2c_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    Fail_ACL_i2c,
    s00_axi_rdata,
    scl_o,
    s00_axi_rvalid,
    sda_t,
    sda_o,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    sda_i,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output Fail_ACL_i2c;
  output [31:0]s00_axi_rdata;
  output scl_o;
  output s00_axi_rvalid;
  output sda_t;
  output sda_o;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input sda_i;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire ADDR0_se;
  wire Fail_ACL_i2c;
  wire Fail_ack_axi;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire active_o;
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
  wire [7:0]command_access_byte_i;
  wire \data_byte_i_reg_n_0_[0] ;
  wire \data_byte_i_reg_n_0_[1] ;
  wire \data_byte_i_reg_n_0_[2] ;
  wire \data_byte_i_reg_n_0_[3] ;
  wire ena_read0_out;
  wire [7:0]p_0_in;
  wire [31:0]reg_data_out;
  wire rst_i;
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
  wire scl_o;
  wire sda_i;
  wire sda_o;
  wire sda_t;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
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
  wire \slv_reg1[0]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[1]_i_1_n_0 ;
  wire \slv_reg1[1]_i_2_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;
  wire update_dac;

  FDRE ADDR0_se_reg
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg0_reg_n_0_[2] ),
        .Q(ADDR0_se),
        .R(1'b0));
  FDRE Fail_ack_axi_reg
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(Fail_ACL_i2c),
        .Q(Fail_ack_axi),
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
        .S(rst_i));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(rst_i));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
        .R(rst_i));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(rst_i));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(rst_i));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
        .R(rst_i));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_WREADY),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(rst_i));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(\slv_reg0_reg_n_0_[0] ),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[0] ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(\slv_reg0_reg_n_0_[10] ),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(\slv_reg0_reg_n_0_[11] ),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(\slv_reg0_reg_n_0_[12] ),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(\slv_reg0_reg_n_0_[13] ),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(\slv_reg0_reg_n_0_[14] ),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(\slv_reg0_reg_n_0_[15] ),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(\slv_reg0_reg_n_0_[16] ),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(\slv_reg0_reg_n_0_[17] ),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(\slv_reg0_reg_n_0_[18] ),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(\slv_reg0_reg_n_0_[19] ),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(\slv_reg0_reg_n_0_[1] ),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[1] ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(\slv_reg0_reg_n_0_[20] ),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(\slv_reg0_reg_n_0_[21] ),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(\slv_reg0_reg_n_0_[22] ),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(\slv_reg0_reg_n_0_[23] ),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(\slv_reg0_reg_n_0_[24] ),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(\slv_reg0_reg_n_0_[25] ),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(\slv_reg0_reg_n_0_[26] ),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(\slv_reg0_reg_n_0_[27] ),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(\slv_reg0_reg_n_0_[28] ),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(\slv_reg0_reg_n_0_[29] ),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(\slv_reg0_reg_n_0_[2] ),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[30] ),
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
        .I5(\slv_reg2_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(\slv_reg0_reg_n_0_[3] ),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(\slv_reg0_reg_n_0_[4] ),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[4] ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(\slv_reg0_reg_n_0_[5] ),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[5] ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(\slv_reg0_reg_n_0_[6] ),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(\slv_reg0_reg_n_0_[7] ),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[7] ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(\slv_reg0_reg_n_0_[8] ),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[8] ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(\slv_reg0_reg_n_0_[9] ),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[9] ),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(rst_i));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(rst_i));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(rst_i));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(rst_i));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(rst_i));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(rst_i));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(rst_i));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(rst_i));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(rst_i));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(rst_i));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(rst_i));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(rst_i));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(rst_i));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(rst_i));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(rst_i));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(rst_i));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(rst_i));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(rst_i));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(rst_i));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(rst_i));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(rst_i));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(rst_i));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(rst_i));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(rst_i));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(rst_i));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(rst_i));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(rst_i));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(rst_i));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(rst_i));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(rst_i));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(rst_i));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(rst_i));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
        .R(rst_i));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(rst_i));
  FDRE \command_access_byte_i_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[0] ),
        .Q(command_access_byte_i[0]),
        .R(1'b0));
  FDRE \command_access_byte_i_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[1] ),
        .Q(command_access_byte_i[1]),
        .R(1'b0));
  FDRE \command_access_byte_i_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[2] ),
        .Q(command_access_byte_i[2]),
        .R(1'b0));
  FDRE \command_access_byte_i_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[3] ),
        .Q(command_access_byte_i[3]),
        .R(1'b0));
  FDRE \command_access_byte_i_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[4] ),
        .Q(command_access_byte_i[4]),
        .R(1'b0));
  FDRE \command_access_byte_i_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[5] ),
        .Q(command_access_byte_i[5]),
        .R(1'b0));
  FDRE \command_access_byte_i_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[6] ),
        .Q(command_access_byte_i[6]),
        .R(1'b0));
  FDRE \command_access_byte_i_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[7] ),
        .Q(command_access_byte_i[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \data_byte_i[11]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_awvalid),
        .O(ena_read0_out));
  FDRE \data_byte_i_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[8] ),
        .Q(\data_byte_i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_byte_i_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[18] ),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \data_byte_i_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[19] ),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE \data_byte_i_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[9] ),
        .Q(\data_byte_i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_byte_i_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[10] ),
        .Q(\data_byte_i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_byte_i_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[11] ),
        .Q(\data_byte_i_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_byte_i_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[12] ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \data_byte_i_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[13] ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \data_byte_i_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[14] ),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \data_byte_i_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[15] ),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \data_byte_i_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[16] ),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \data_byte_i_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg2_reg_n_0_[17] ),
        .Q(p_0_in[5]),
        .R(1'b0));
  zsys_dac_i2c_0_0_i2c_control inst_i2c_control
       (.ADDR0_se(ADDR0_se),
        .Fail_ACL_i2c(Fail_ACL_i2c),
        .Q({p_0_in,\data_byte_i_reg_n_0_[3] ,\data_byte_i_reg_n_0_[2] ,\data_byte_i_reg_n_0_[1] ,\data_byte_i_reg_n_0_[0] }),
        .SR(rst_i),
        .active_o(active_o),
        .\command_access_byte_i_reg[7] (command_access_byte_i),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl_o(scl_o),
        .sda_i(sda_i),
        .sda_o(sda_o),
        .sda_t(sda_t),
        .update_dac(update_dac));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg0[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(slv_reg_wren__2),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg0[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(slv_reg_wren__2),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg0[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(slv_reg_wren__2),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg0[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(slv_reg_wren__2),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(rst_i));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(rst_i));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \slv_reg1[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(slv_reg_wren__2),
        .I2(Fail_ack_axi),
        .I3(\slv_reg1[1]_i_2_n_0 ),
        .I4(slv_reg1[0]),
        .O(\slv_reg1[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(slv_reg_wren__2),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \slv_reg1[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(slv_reg_wren__2),
        .I2(active_o),
        .I3(\slv_reg1[1]_i_2_n_0 ),
        .I4(slv_reg1[1]),
        .O(\slv_reg1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08FF)) 
    \slv_reg1[1]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[3]),
        .I3(slv_reg_wren__2),
        .O(\slv_reg1[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(slv_reg_wren__2),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(slv_reg_wren__2),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(slv_reg_wren__2),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg1[0]_i_1_n_0 ),
        .Q(slv_reg1[0]),
        .R(rst_i));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(rst_i));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(rst_i));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(rst_i));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(rst_i));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(rst_i));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(rst_i));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(rst_i));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(rst_i));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(rst_i));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(rst_i));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg1[1]_i_1_n_0 ),
        .Q(slv_reg1[1]),
        .R(rst_i));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(rst_i));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(rst_i));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(rst_i));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(rst_i));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(rst_i));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(rst_i));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(rst_i));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(rst_i));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(rst_i));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(rst_i));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(rst_i));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(rst_i));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(rst_i));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(rst_i));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(rst_i));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(rst_i));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(rst_i));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(rst_i));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(rst_i));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(rst_i));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(slv_reg_wren__2),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(slv_reg_wren__2),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(slv_reg_wren__2),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg2[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(slv_reg_wren__2),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(rst_i));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(rst_i));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(slv_reg_wren__2),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(slv_reg_wren__2),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(slv_reg_wren__2),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(slv_reg_wren__2),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(rst_i));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(rst_i));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(rst_i));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(rst_i));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(rst_i));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(rst_i));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(rst_i));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(rst_i));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(rst_i));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(rst_i));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(rst_i));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(rst_i));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(rst_i));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(rst_i));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(rst_i));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(rst_i));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(rst_i));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(rst_i));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(rst_i));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(rst_i));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(rst_i));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(rst_i));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(rst_i));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(rst_i));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(rst_i));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(rst_i));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(rst_i));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(rst_i));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(rst_i));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(rst_i));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(rst_i));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(rst_i));
  FDRE update_dac_reg
       (.C(s00_axi_aclk),
        .CE(ena_read0_out),
        .D(\slv_reg0_reg_n_0_[1] ),
        .Q(update_dac),
        .R(1'b0));
endmodule

module zsys_dac_i2c_0_0_i2c_control
   (scl_o,
    sda_t,
    SR,
    sda_o,
    Fail_ACL_i2c,
    active_o,
    s00_axi_aclk,
    s00_axi_aresetn,
    sda_i,
    ADDR0_se,
    update_dac,
    Q,
    \command_access_byte_i_reg[7] );
  output scl_o;
  output sda_t;
  output [0:0]SR;
  output sda_o;
  output Fail_ACL_i2c;
  output active_o;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input sda_i;
  input ADDR0_se;
  input update_dac;
  input [11:0]Q;
  input [7:0]\command_access_byte_i_reg[7] ;

  wire ADDR0_se;
  wire Fail_ACK_i_2_n_0;
  wire Fail_ACL_i2c;
  wire [11:0]Q;
  wire [0:0]SR;
  wire active_o;
  wire active_o_i_1__0_n_0;
  wire [7:0]ca_byte;
  wire ca_byte0;
  wire [7:0]\command_access_byte_i_reg[7] ;
  wire dac_inst_n_10;
  wire dac_inst_n_11;
  wire dac_inst_n_12;
  wire dac_inst_n_13;
  wire dac_inst_n_14;
  wire dac_inst_n_15;
  wire dac_inst_n_16;
  wire dac_inst_n_5;
  wire dac_inst_n_6;
  wire dac_inst_n_7;
  wire dac_inst_n_8;
  wire dac_inst_n_9;
  wire [7:0]data;
  wire data0;
  wire \data[0]_i_1_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[7]_i_2_n_0 ;
  wire [7:4]data_lsb;
  wire [7:0]data_msb;
  wire flag_addr_reg_n_0;
  wire flag_ca_reg_n_0;
  wire flag_data1_i_3_n_0;
  wire flag_data1_reg_n_0;
  wire flag_data2_reg_n_0;
  wire flag_finish_i_2_n_0;
  wire flag_finish_reg_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]i2c_states;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire scl_o;
  wire sda_i;
  wire sda_o;
  wire sda_t;
  wire start_com_reg_n_0;
  wire stop_com_reg_n_0;
  wire update_dac;
  wire update_dac21_in;
  wire update_dac_i_3_n_0;
  wire update_dac_reg_n_0;

  (* FSM_ENCODED_STATES = "i2c_start:001,i2c_sending:010,i2c_stop:011,i2c_idle:000,iSTATE:100" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_i2c_states_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(dac_inst_n_16),
        .Q(i2c_states[0]));
  (* FSM_ENCODED_STATES = "i2c_start:001,i2c_sending:010,i2c_stop:011,i2c_idle:000,iSTATE:100" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_i2c_states_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(dac_inst_n_15),
        .Q(i2c_states[1]));
  (* FSM_ENCODED_STATES = "i2c_start:001,i2c_sending:010,i2c_stop:011,i2c_idle:000,iSTATE:100" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_i2c_states_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(dac_inst_n_14),
        .Q(i2c_states[2]));
  LUT2 #(
    .INIT(4'hE)) 
    Fail_ACK_i_2
       (.I0(i2c_states[0]),
        .I1(i2c_states[2]),
        .O(Fail_ACK_i_2_n_0));
  FDCE Fail_ACK_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(dac_inst_n_13),
        .Q(Fail_ACL_i2c));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    active_o_i_1__0
       (.I0(i2c_states[2]),
        .I1(i2c_states[0]),
        .I2(i2c_states[1]),
        .I3(s00_axi_aresetn),
        .I4(active_o),
        .O(active_o_i_1__0_n_0));
  FDRE active_o_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(active_o_i_1__0_n_0),
        .Q(active_o),
        .R(1'b0));
  FDRE \ca_byte_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(\command_access_byte_i_reg[7] [0]),
        .Q(ca_byte[0]),
        .R(1'b0));
  FDRE \ca_byte_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(\command_access_byte_i_reg[7] [1]),
        .Q(ca_byte[1]),
        .R(1'b0));
  FDRE \ca_byte_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(\command_access_byte_i_reg[7] [2]),
        .Q(ca_byte[2]),
        .R(1'b0));
  FDRE \ca_byte_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(\command_access_byte_i_reg[7] [3]),
        .Q(ca_byte[3]),
        .R(1'b0));
  FDRE \ca_byte_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(\command_access_byte_i_reg[7] [4]),
        .Q(ca_byte[4]),
        .R(1'b0));
  FDRE \ca_byte_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(\command_access_byte_i_reg[7] [5]),
        .Q(ca_byte[5]),
        .R(1'b0));
  FDRE \ca_byte_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(\command_access_byte_i_reg[7] [6]),
        .Q(ca_byte[6]),
        .R(1'b0));
  FDRE \ca_byte_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(\command_access_byte_i_reg[7] [7]),
        .Q(ca_byte[7]),
        .R(1'b0));
  zsys_dac_i2c_0_0_i2c_dac dac_inst
       (.E(data0),
        .\FSM_sequential_i2c_states_reg[0]_0 (dac_inst_n_16),
        .\FSM_sequential_i2c_states_reg[0]_1 (flag_data1_i_3_n_0),
        .\FSM_sequential_i2c_states_reg[0]_2 (Fail_ACK_i_2_n_0),
        .\FSM_sequential_i2c_states_reg[1]_0 (dac_inst_n_15),
        .\FSM_sequential_i2c_states_reg[2]_0 (dac_inst_n_14),
        .\FSM_sequential_i2c_states_reg[2]_1 (update_dac_i_3_n_0),
        .Fail_ACK_reg(dac_inst_n_13),
        .Fail_ACL_i2c(Fail_ACL_i2c),
        .Q(data),
        .flag_addr_reg(dac_inst_n_7),
        .flag_addr_reg_0(flag_addr_reg_n_0),
        .flag_ca_reg(dac_inst_n_6),
        .flag_ca_reg_0(flag_ca_reg_n_0),
        .flag_ca_reg_1(flag_finish_i_2_n_0),
        .flag_data1_reg(dac_inst_n_5),
        .flag_data1_reg_0(flag_data1_reg_n_0),
        .flag_data2_reg(dac_inst_n_10),
        .flag_data2_reg_0(flag_data2_reg_n_0),
        .flag_finish_reg(dac_inst_n_8),
        .flag_finish_reg_0(flag_finish_reg_n_0),
        .i2c_fail_ACK_reg_0(SR),
        .in0(i2c_states),
        .out(i2c_states),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl_o(scl_o),
        .sda_i(sda_i),
        .sda_o(sda_o),
        .sda_t(sda_t),
        .start_com_reg(dac_inst_n_11),
        .start_com_reg_0(start_com_reg_n_0),
        .stop_com_reg(dac_inst_n_12),
        .stop_com_reg_0(stop_com_reg_n_0),
        .update_dac(update_dac),
        .update_dac21_in(update_dac21_in),
        .update_dac_reg(dac_inst_n_9),
        .update_dac_reg_0(update_dac_reg_n_0));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \data[0]_i_1 
       (.I0(data_msb[0]),
        .I1(flag_data1_reg_n_0),
        .I2(ca_byte[0]),
        .I3(flag_addr_reg_n_0),
        .I4(flag_ca_reg_n_0),
        .O(\data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \data[1]_i_1 
       (.I0(data_msb[1]),
        .I1(flag_data1_reg_n_0),
        .I2(ca_byte[1]),
        .I3(flag_addr_reg_n_0),
        .I4(flag_ca_reg_n_0),
        .O(\data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00CCAAAAF0CCAAAA)) 
    \data[2]_i_1 
       (.I0(ADDR0_se),
        .I1(ca_byte[2]),
        .I2(data_msb[2]),
        .I3(flag_ca_reg_n_0),
        .I4(flag_addr_reg_n_0),
        .I5(flag_data1_reg_n_0),
        .O(\data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h2200F000)) 
    \data[3]_i_1 
       (.I0(data_msb[3]),
        .I1(flag_data1_reg_n_0),
        .I2(ca_byte[3]),
        .I3(flag_addr_reg_n_0),
        .I4(flag_ca_reg_n_0),
        .O(\data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE4FFE4FFFFFF00FF)) 
    \data[4]_i_1 
       (.I0(flag_data1_reg_n_0),
        .I1(data_msb[4]),
        .I2(data_lsb[4]),
        .I3(flag_addr_reg_n_0),
        .I4(ca_byte[4]),
        .I5(flag_ca_reg_n_0),
        .O(\data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA00CA000A00CA00)) 
    \data[5]_i_1 
       (.I0(ca_byte[5]),
        .I1(data_msb[5]),
        .I2(flag_ca_reg_n_0),
        .I3(flag_addr_reg_n_0),
        .I4(flag_data1_reg_n_0),
        .I5(data_lsb[5]),
        .O(\data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA00CA000A00CA00)) 
    \data[6]_i_1 
       (.I0(ca_byte[6]),
        .I1(data_msb[6]),
        .I2(flag_ca_reg_n_0),
        .I3(flag_addr_reg_n_0),
        .I4(flag_data1_reg_n_0),
        .I5(data_lsb[6]),
        .O(\data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE4FFE4FFFFFF00FF)) 
    \data[7]_i_2 
       (.I0(flag_data1_reg_n_0),
        .I1(data_msb[7]),
        .I2(data_lsb[7]),
        .I3(flag_addr_reg_n_0),
        .I4(ca_byte[7]),
        .I5(flag_ca_reg_n_0),
        .O(\data[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \data_lsb[7]_i_1 
       (.I0(i2c_states[1]),
        .I1(s00_axi_aresetn),
        .I2(i2c_states[2]),
        .I3(i2c_states[0]),
        .O(ca_byte0));
  FDRE \data_lsb_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(Q[0]),
        .Q(data_lsb[4]),
        .R(1'b0));
  FDRE \data_lsb_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(Q[1]),
        .Q(data_lsb[5]),
        .R(1'b0));
  FDRE \data_lsb_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(Q[2]),
        .Q(data_lsb[6]),
        .R(1'b0));
  FDRE \data_lsb_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(Q[3]),
        .Q(data_lsb[7]),
        .R(1'b0));
  FDRE \data_msb_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(Q[4]),
        .Q(data_msb[0]),
        .R(1'b0));
  FDRE \data_msb_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(Q[5]),
        .Q(data_msb[1]),
        .R(1'b0));
  FDRE \data_msb_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(Q[6]),
        .Q(data_msb[2]),
        .R(1'b0));
  FDRE \data_msb_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(Q[7]),
        .Q(data_msb[3]),
        .R(1'b0));
  FDRE \data_msb_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(Q[8]),
        .Q(data_msb[4]),
        .R(1'b0));
  FDRE \data_msb_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(Q[9]),
        .Q(data_msb[5]),
        .R(1'b0));
  FDRE \data_msb_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(Q[10]),
        .Q(data_msb[6]),
        .R(1'b0));
  FDRE \data_msb_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ca_byte0),
        .D(Q[11]),
        .Q(data_msb[7]),
        .R(1'b0));
  FDRE \data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(data0),
        .D(\data[0]_i_1_n_0 ),
        .Q(data[0]),
        .R(1'b0));
  FDRE \data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(data0),
        .D(\data[1]_i_1_n_0 ),
        .Q(data[1]),
        .R(1'b0));
  FDRE \data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(data0),
        .D(\data[2]_i_1_n_0 ),
        .Q(data[2]),
        .R(1'b0));
  FDRE \data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(data0),
        .D(\data[3]_i_1_n_0 ),
        .Q(data[3]),
        .R(1'b0));
  FDRE \data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(data0),
        .D(\data[4]_i_1_n_0 ),
        .Q(data[4]),
        .R(1'b0));
  FDRE \data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(data0),
        .D(\data[5]_i_1_n_0 ),
        .Q(data[5]),
        .R(1'b0));
  FDRE \data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(data0),
        .D(\data[6]_i_1_n_0 ),
        .Q(data[6]),
        .R(1'b0));
  FDRE \data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(data0),
        .D(\data[7]_i_2_n_0 ),
        .Q(data[7]),
        .R(1'b0));
  FDRE flag_addr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(dac_inst_n_7),
        .Q(flag_addr_reg_n_0),
        .R(1'b0));
  FDRE flag_ca_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(dac_inst_n_6),
        .Q(flag_ca_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0010)) 
    flag_data1_i_3
       (.I0(i2c_states[0]),
        .I1(i2c_states[2]),
        .I2(s00_axi_aresetn),
        .I3(i2c_states[1]),
        .O(flag_data1_i_3_n_0));
  FDRE flag_data1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(dac_inst_n_5),
        .Q(flag_data1_reg_n_0),
        .R(1'b0));
  FDRE flag_data2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(dac_inst_n_10),
        .Q(flag_data2_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    flag_finish_i_2
       (.I0(flag_ca_reg_n_0),
        .I1(flag_addr_reg_n_0),
        .I2(flag_data1_reg_n_0),
        .O(flag_finish_i_2_n_0));
  FDRE flag_finish_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(dac_inst_n_8),
        .Q(flag_finish_reg_n_0),
        .R(1'b0));
  FDRE start_com_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(dac_inst_n_11),
        .Q(start_com_reg_n_0),
        .R(1'b0));
  FDRE stop_com_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(dac_inst_n_12),
        .Q(stop_com_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    update_dac_i_2
       (.I0(flag_data1_reg_n_0),
        .I1(flag_addr_reg_n_0),
        .I2(flag_ca_reg_n_0),
        .I3(flag_data2_reg_n_0),
        .O(update_dac21_in));
  LUT3 #(
    .INIT(8'h02)) 
    update_dac_i_3
       (.I0(s00_axi_aresetn),
        .I1(i2c_states[2]),
        .I2(i2c_states[0]),
        .O(update_dac_i_3_n_0));
  FDRE update_dac_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(dac_inst_n_9),
        .Q(update_dac_reg_n_0),
        .R(1'b0));
endmodule

module zsys_dac_i2c_0_0_i2c_dac
   (scl_o,
    sda_t,
    i2c_fail_ACK_reg_0,
    sda_o,
    E,
    flag_data1_reg,
    flag_ca_reg,
    flag_addr_reg,
    flag_finish_reg,
    update_dac_reg,
    flag_data2_reg,
    start_com_reg,
    stop_com_reg,
    Fail_ACK_reg,
    \FSM_sequential_i2c_states_reg[2]_0 ,
    \FSM_sequential_i2c_states_reg[1]_0 ,
    \FSM_sequential_i2c_states_reg[0]_0 ,
    s00_axi_aclk,
    s00_axi_aresetn,
    update_dac_reg_0,
    sda_i,
    out,
    flag_data1_reg_0,
    flag_addr_reg_0,
    flag_ca_reg_0,
    flag_data2_reg_0,
    start_com_reg_0,
    stop_com_reg_0,
    update_dac,
    \FSM_sequential_i2c_states_reg[0]_1 ,
    flag_ca_reg_1,
    flag_finish_reg_0,
    update_dac21_in,
    \FSM_sequential_i2c_states_reg[2]_1 ,
    \FSM_sequential_i2c_states_reg[0]_2 ,
    Fail_ACL_i2c,
    in0,
    Q);
  output scl_o;
  output sda_t;
  output i2c_fail_ACK_reg_0;
  output sda_o;
  output [0:0]E;
  output flag_data1_reg;
  output flag_ca_reg;
  output flag_addr_reg;
  output flag_finish_reg;
  output update_dac_reg;
  output flag_data2_reg;
  output start_com_reg;
  output stop_com_reg;
  output Fail_ACK_reg;
  output \FSM_sequential_i2c_states_reg[2]_0 ;
  output \FSM_sequential_i2c_states_reg[1]_0 ;
  output \FSM_sequential_i2c_states_reg[0]_0 ;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input update_dac_reg_0;
  input sda_i;
  input [2:0]out;
  input flag_data1_reg_0;
  input flag_addr_reg_0;
  input flag_ca_reg_0;
  input flag_data2_reg_0;
  input start_com_reg_0;
  input stop_com_reg_0;
  input update_dac;
  input \FSM_sequential_i2c_states_reg[0]_1 ;
  input flag_ca_reg_1;
  input flag_finish_reg_0;
  input update_dac21_in;
  input \FSM_sequential_i2c_states_reg[2]_1 ;
  input \FSM_sequential_i2c_states_reg[0]_2 ;
  input Fail_ACL_i2c;
  input [2:0]in0;
  input [7:0]Q;

  wire Data_byte0;
  wire \Data_byte_reg_n_0_[0] ;
  wire \Data_byte_reg_n_0_[1] ;
  wire \Data_byte_reg_n_0_[2] ;
  wire \Data_byte_reg_n_0_[3] ;
  wire \Data_byte_reg_n_0_[4] ;
  wire \Data_byte_reg_n_0_[5] ;
  wire \Data_byte_reg_n_0_[6] ;
  wire \Data_byte_reg_n_0_[7] ;
  wire [0:0]E;
  wire \FSM_sequential_i2c_states[0]_i_1_n_0 ;
  wire \FSM_sequential_i2c_states[0]_i_2_n_0 ;
  wire \FSM_sequential_i2c_states[1]_i_1_n_0 ;
  wire \FSM_sequential_i2c_states[1]_i_2_n_0 ;
  wire \FSM_sequential_i2c_states[1]_i_3_n_0 ;
  wire \FSM_sequential_i2c_states[2]_i_1_n_0 ;
  wire \FSM_sequential_i2c_states[2]_i_2__0_n_0 ;
  wire \FSM_sequential_i2c_states[2]_i_2_n_0 ;
  wire \FSM_sequential_i2c_states[2]_i_3__0_n_0 ;
  wire \FSM_sequential_i2c_states[2]_i_3_n_0 ;
  wire \FSM_sequential_i2c_states[2]_i_4_n_0 ;
  wire \FSM_sequential_i2c_states[2]_i_5_n_0 ;
  wire \FSM_sequential_i2c_states[2]_i_6_n_0 ;
  wire \FSM_sequential_i2c_states[2]_i_7_n_0 ;
  wire \FSM_sequential_i2c_states[2]_i_8_n_0 ;
  wire \FSM_sequential_i2c_states_reg[0]_0 ;
  wire \FSM_sequential_i2c_states_reg[0]_1 ;
  wire \FSM_sequential_i2c_states_reg[0]_2 ;
  wire \FSM_sequential_i2c_states_reg[1]_0 ;
  wire \FSM_sequential_i2c_states_reg[2]_0 ;
  wire \FSM_sequential_i2c_states_reg[2]_1 ;
  wire Fail_ACK_reg;
  wire Fail_ACL_i2c;
  wire [7:0]Q;
  wire [10:0]SCLK_counter;
  wire SCLK_counter0;
  wire \SCLK_counter[10]_i_3_n_0 ;
  wire \SCLK_counter[10]_i_4_n_0 ;
  wire \SCLK_counter[10]_i_5_n_0 ;
  wire \SCLK_counter[10]_i_6_n_0 ;
  wire \SCLK_counter[10]_i_7_n_0 ;
  wire \SCLK_counter[10]_i_8_n_0 ;
  wire \SCLK_counter[10]_i_9_n_0 ;
  wire \SCLK_counter[5]_i_2_n_0 ;
  wire \SCLK_counter[9]_i_2_n_0 ;
  wire \SCLK_counter_reg_n_0_[0] ;
  wire \SCLK_counter_reg_n_0_[10] ;
  wire \SCLK_counter_reg_n_0_[1] ;
  wire \SCLK_counter_reg_n_0_[2] ;
  wire \SCLK_counter_reg_n_0_[3] ;
  wire \SCLK_counter_reg_n_0_[4] ;
  wire \SCLK_counter_reg_n_0_[5] ;
  wire \SCLK_counter_reg_n_0_[6] ;
  wire \SCLK_counter_reg_n_0_[7] ;
  wire \SCLK_counter_reg_n_0_[8] ;
  wire \SCLK_counter_reg_n_0_[9] ;
  wire SDA_t0__7;
  wire SDA_t_i_1_n_0;
  wire SDA_t_i_2_n_0;
  wire SDA_t_i_4_n_0;
  wire SDA_t_i_5_n_0;
  wire SDA_t_i_6_n_0;
  wire SDA_t_i_7_n_0;
  wire [10:0]ack_counter;
  wire ack_counter0;
  wire \ack_counter[10]_i_10_n_0 ;
  wire \ack_counter[10]_i_11_n_0 ;
  wire \ack_counter[10]_i_4_n_0 ;
  wire \ack_counter[10]_i_5_n_0 ;
  wire \ack_counter[10]_i_6_n_0 ;
  wire \ack_counter[10]_i_7_n_0 ;
  wire \ack_counter[10]_i_8_n_0 ;
  wire \ack_counter[10]_i_9_n_0 ;
  wire \ack_counter[5]_i_2_n_0 ;
  wire \ack_counter[9]_i_2_n_0 ;
  wire \ack_counter_reg_n_0_[0] ;
  wire \ack_counter_reg_n_0_[10] ;
  wire \ack_counter_reg_n_0_[1] ;
  wire \ack_counter_reg_n_0_[2] ;
  wire \ack_counter_reg_n_0_[3] ;
  wire \ack_counter_reg_n_0_[4] ;
  wire \ack_counter_reg_n_0_[5] ;
  wire \ack_counter_reg_n_0_[6] ;
  wire \ack_counter_reg_n_0_[7] ;
  wire \ack_counter_reg_n_0_[8] ;
  wire \ack_counter_reg_n_0_[9] ;
  wire active_o_i_1_n_0;
  wire active_o_i_2_n_0;
  wire active_o_i_3_n_0;
  wire active_o_i_4_n_0;
  wire active_o_o;
  wire clk_delay1_i_1_n_0;
  wire clk_delay1_reg_n_0;
  wire \data[7]_i_3_n_0 ;
  wire flag_addr_reg;
  wire flag_addr_reg_0;
  wire flag_ca_reg;
  wire flag_ca_reg_0;
  wire flag_ca_reg_1;
  wire flag_data1_i_2_n_0;
  wire flag_data1_reg;
  wire flag_data1_reg_0;
  wire flag_data2_reg;
  wire flag_data2_reg_0;
  wire flag_finish_reg;
  wire flag_finish_reg_0;
  wire freq_counter0;
  wire \freq_counter[0]_i_1_n_0 ;
  wire \freq_counter[10]_i_1_n_0 ;
  wire \freq_counter[10]_i_3_n_0 ;
  wire \freq_counter[10]_i_4_n_0 ;
  wire \freq_counter[10]_i_5_n_0 ;
  wire \freq_counter[10]_i_6_n_0 ;
  wire \freq_counter[10]_i_7_n_0 ;
  wire \freq_counter[1]_i_1_n_0 ;
  wire \freq_counter[2]_i_1_n_0 ;
  wire \freq_counter[3]_i_1_n_0 ;
  wire \freq_counter[4]_i_1_n_0 ;
  wire \freq_counter[5]_i_1_n_0 ;
  wire \freq_counter[6]_i_1_n_0 ;
  wire \freq_counter[6]_i_2_n_0 ;
  wire \freq_counter[7]_i_1_n_0 ;
  wire \freq_counter[8]_i_1_n_0 ;
  wire \freq_counter[9]_i_1_n_0 ;
  wire \freq_counter_reg_n_0_[0] ;
  wire \freq_counter_reg_n_0_[10] ;
  wire \freq_counter_reg_n_0_[1] ;
  wire \freq_counter_reg_n_0_[2] ;
  wire \freq_counter_reg_n_0_[3] ;
  wire \freq_counter_reg_n_0_[4] ;
  wire \freq_counter_reg_n_0_[5] ;
  wire \freq_counter_reg_n_0_[6] ;
  wire \freq_counter_reg_n_0_[7] ;
  wire \freq_counter_reg_n_0_[8] ;
  wire \freq_counter_reg_n_0_[9] ;
  wire i2c_busy;
  wire i2c_busy_i_1_n_0;
  wire i2c_busy_i_2_n_0;
  wire i2c_fail;
  wire i2c_fail_ACK0__10;
  wire i2c_fail_ACK_i_1_n_0;
  wire i2c_fail_ACK_reg_0;
  (* RTL_KEEP = "yes" *) wire [2:0]i2c_states;
  wire [2:0]in0;
  wire o_sclk_i_1_n_0;
  wire o_sclk_i_2_n_0;
  wire o_sclk_i_3_n_0;
  wire o_sclk_i_4_n_0;
  wire o_sclk_i_5_n_0;
  wire o_sclk_i_6_n_0;
  wire o_sclk_i_7_n_0;
  wire o_sda;
  wire o_sda_i_11_n_0;
  wire o_sda_i_12_n_0;
  wire o_sda_i_13_n_0;
  wire o_sda_i_14_n_0;
  wire o_sda_i_15_n_0;
  wire o_sda_i_16_n_0;
  wire o_sda_i_1_n_0;
  wire o_sda_i_3_n_0;
  wire o_sda_i_4_n_0;
  wire o_sda_i_6_n_0;
  wire o_sda_i_7_n_0;
  wire o_sda_i_8_n_0;
  wire o_sda_i_9_n_0;
  wire o_sda_reg_i_10_n_0;
  wire [2:0]out;
  wire rec_ack_ok_i_1_n_0;
  wire rec_ack_ok_i_2_n_0;
  wire rec_ack_ok_i_3_n_0;
  wire rec_ack_ok_i_4_n_0;
  wire rec_ack_ok_reg_n_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire scl_o;
  wire sda_i;
  wire sda_o;
  wire sda_t;
  wire start_com_reg;
  wire start_com_reg_0;
  wire stop_com_reg;
  wire stop_com_reg_0;
  wire update_dac;
  wire update_dac21_in;
  wire update_dac_reg;
  wire update_dac_reg_0;

  LUT5 #(
    .INIT(32'h00000008)) 
    \Data_byte[7]_i_1 
       (.I0(update_dac_reg_0),
        .I1(s00_axi_aresetn),
        .I2(i2c_states[1]),
        .I3(i2c_states[0]),
        .I4(i2c_states[2]),
        .O(Data_byte0));
  FDRE \Data_byte_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Data_byte0),
        .D(Q[0]),
        .Q(\Data_byte_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \Data_byte_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Data_byte0),
        .D(Q[1]),
        .Q(\Data_byte_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \Data_byte_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Data_byte0),
        .D(Q[2]),
        .Q(\Data_byte_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \Data_byte_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Data_byte0),
        .D(Q[3]),
        .Q(\Data_byte_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \Data_byte_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Data_byte0),
        .D(Q[4]),
        .Q(\Data_byte_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \Data_byte_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Data_byte0),
        .D(Q[5]),
        .Q(\Data_byte_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \Data_byte_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Data_byte0),
        .D(Q[6]),
        .Q(\Data_byte_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \Data_byte_reg[7] 
       (.C(s00_axi_aclk),
        .CE(Data_byte0),
        .D(Q[7]),
        .Q(\Data_byte_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBABBBABA8A888A8A)) 
    \FSM_sequential_i2c_states[0]_i_1 
       (.I0(\FSM_sequential_i2c_states[0]_i_2_n_0 ),
        .I1(\FSM_sequential_i2c_states[2]_i_4_n_0 ),
        .I2(\FSM_sequential_i2c_states[2]_i_5_n_0 ),
        .I3(i2c_states[0]),
        .I4(SDA_t_i_2_n_0),
        .I5(i2c_states[0]),
        .O(\FSM_sequential_i2c_states[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00EFFFFF00EF0000)) 
    \FSM_sequential_i2c_states[0]_i_1__0 
       (.I0(flag_finish_reg_0),
        .I1(i2c_fail),
        .I2(out[1]),
        .I3(\FSM_sequential_i2c_states_reg[0]_2 ),
        .I4(\FSM_sequential_i2c_states[2]_i_2__0_n_0 ),
        .I5(in0[0]),
        .O(\FSM_sequential_i2c_states_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h000F30AF000F30A0)) 
    \FSM_sequential_i2c_states[0]_i_2 
       (.I0(o_sclk_i_6_n_0),
        .I1(\FSM_sequential_i2c_states[2]_i_8_n_0 ),
        .I2(i2c_states[2]),
        .I3(i2c_states[0]),
        .I4(i2c_states[1]),
        .I5(update_dac_reg_0),
        .O(\FSM_sequential_i2c_states[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABA8A888A8A)) 
    \FSM_sequential_i2c_states[1]_i_1 
       (.I0(\FSM_sequential_i2c_states[1]_i_2_n_0 ),
        .I1(\FSM_sequential_i2c_states[2]_i_4_n_0 ),
        .I2(\FSM_sequential_i2c_states[2]_i_5_n_0 ),
        .I3(i2c_states[0]),
        .I4(SDA_t_i_2_n_0),
        .I5(i2c_states[1]),
        .O(\FSM_sequential_i2c_states[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06FF0600)) 
    \FSM_sequential_i2c_states[1]_i_1__0 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(\FSM_sequential_i2c_states[2]_i_2__0_n_0 ),
        .I4(in0[1]),
        .O(\FSM_sequential_i2c_states_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBAFAFAFFBA)) 
    \FSM_sequential_i2c_states[1]_i_2 
       (.I0(\FSM_sequential_i2c_states[1]_i_3_n_0 ),
        .I1(i2c_fail_ACK0__10),
        .I2(i2c_states[1]),
        .I3(i2c_states[0]),
        .I4(i2c_states[2]),
        .I5(active_o_i_2_n_0),
        .O(\FSM_sequential_i2c_states[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_sequential_i2c_states[1]_i_3 
       (.I0(update_dac_reg_0),
        .I1(stop_com_reg_0),
        .I2(start_com_reg_0),
        .I3(i2c_states[1]),
        .I4(i2c_states[2]),
        .O(\FSM_sequential_i2c_states[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFE0EEE0E0)) 
    \FSM_sequential_i2c_states[2]_i_1 
       (.I0(\FSM_sequential_i2c_states[2]_i_2_n_0 ),
        .I1(\FSM_sequential_i2c_states[2]_i_3_n_0 ),
        .I2(\FSM_sequential_i2c_states[2]_i_4_n_0 ),
        .I3(\FSM_sequential_i2c_states[2]_i_5_n_0 ),
        .I4(\FSM_sequential_i2c_states[2]_i_6_n_0 ),
        .I5(i2c_states[2]),
        .O(\FSM_sequential_i2c_states[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \FSM_sequential_i2c_states[2]_i_1__0 
       (.I0(out[1]),
        .I1(active_o_o),
        .I2(out[2]),
        .I3(out[0]),
        .I4(\FSM_sequential_i2c_states[2]_i_2__0_n_0 ),
        .I5(in0[2]),
        .O(\FSM_sequential_i2c_states_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h55FC0F00)) 
    \FSM_sequential_i2c_states[2]_i_2 
       (.I0(active_o_i_2_n_0),
        .I1(i2c_fail_ACK0__10),
        .I2(i2c_states[0]),
        .I3(i2c_states[2]),
        .I4(i2c_states[1]),
        .O(\FSM_sequential_i2c_states[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF32)) 
    \FSM_sequential_i2c_states[2]_i_2__0 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(update_dac),
        .I3(out[2]),
        .I4(\FSM_sequential_i2c_states[2]_i_3__0_n_0 ),
        .O(\FSM_sequential_i2c_states[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00001010)) 
    \FSM_sequential_i2c_states[2]_i_3 
       (.I0(i2c_states[0]),
        .I1(update_dac_reg_0),
        .I2(\FSM_sequential_i2c_states[2]_i_7_n_0 ),
        .I3(\FSM_sequential_i2c_states[2]_i_8_n_0 ),
        .I4(i2c_states[1]),
        .I5(i2c_states[2]),
        .O(\FSM_sequential_i2c_states[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55550C00)) 
    \FSM_sequential_i2c_states[2]_i_3__0 
       (.I0(active_o_o),
        .I1(i2c_busy),
        .I2(start_com_reg_0),
        .I3(out[0]),
        .I4(out[1]),
        .O(\FSM_sequential_i2c_states[2]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h2F2B)) 
    \FSM_sequential_i2c_states[2]_i_4 
       (.I0(i2c_states[2]),
        .I1(i2c_states[0]),
        .I2(i2c_states[1]),
        .I3(SDA_t0__7),
        .O(\FSM_sequential_i2c_states[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_i2c_states[2]_i_5 
       (.I0(i2c_states[2]),
        .I1(i2c_states[1]),
        .O(\FSM_sequential_i2c_states[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \FSM_sequential_i2c_states[2]_i_6 
       (.I0(i2c_states[0]),
        .I1(rec_ack_ok_reg_n_0),
        .I2(SDA_t_i_4_n_0),
        .O(\FSM_sequential_i2c_states[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_i2c_states[2]_i_7 
       (.I0(start_com_reg_0),
        .I1(stop_com_reg_0),
        .O(\FSM_sequential_i2c_states[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    \FSM_sequential_i2c_states[2]_i_8 
       (.I0(active_o_i_3_n_0),
        .I1(\freq_counter_reg_n_0_[3] ),
        .I2(\freq_counter_reg_n_0_[2] ),
        .I3(\freq_counter_reg_n_0_[9] ),
        .I4(\freq_counter_reg_n_0_[10] ),
        .O(\FSM_sequential_i2c_states[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "ms_ack:010,ms_send_data:001,ms_start:100,ms_fail:011,ms_stop:110,ms_end_ok:101,ms_idle:000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_i2c_states_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(i2c_fail_ACK_reg_0),
        .D(\FSM_sequential_i2c_states[0]_i_1_n_0 ),
        .Q(i2c_states[0]));
  (* FSM_ENCODED_STATES = "ms_ack:010,ms_send_data:001,ms_start:100,ms_fail:011,ms_stop:110,ms_end_ok:101,ms_idle:000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_i2c_states_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(i2c_fail_ACK_reg_0),
        .D(\FSM_sequential_i2c_states[1]_i_1_n_0 ),
        .Q(i2c_states[1]));
  (* FSM_ENCODED_STATES = "ms_ack:010,ms_send_data:001,ms_start:100,ms_fail:011,ms_stop:110,ms_end_ok:101,ms_idle:000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_i2c_states_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(i2c_fail_ACK_reg_0),
        .D(\FSM_sequential_i2c_states[2]_i_1_n_0 ),
        .Q(i2c_states[2]));
  LUT5 #(
    .INIT(32'hFFFF4440)) 
    Fail_ACK_i_1
       (.I0(\FSM_sequential_i2c_states_reg[0]_2 ),
        .I1(out[1]),
        .I2(i2c_fail),
        .I3(flag_finish_reg_0),
        .I4(Fail_ACL_i2c),
        .O(Fail_ACK_reg));
  LUT3 #(
    .INIT(8'h04)) 
    \SCLK_counter[0]_i_1 
       (.I0(i2c_states[2]),
        .I1(i2c_states[0]),
        .I2(\SCLK_counter_reg_n_0_[0] ),
        .O(SCLK_counter[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0404040C)) 
    \SCLK_counter[10]_i_1 
       (.I0(i2c_states[1]),
        .I1(s00_axi_aresetn),
        .I2(i2c_states[0]),
        .I3(i2c_states[2]),
        .I4(SDA_t_i_2_n_0),
        .I5(\SCLK_counter[10]_i_3_n_0 ),
        .O(SCLK_counter0));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \SCLK_counter[10]_i_2 
       (.I0(\SCLK_counter_reg_n_0_[8] ),
        .I1(\SCLK_counter[10]_i_4_n_0 ),
        .I2(\SCLK_counter_reg_n_0_[7] ),
        .I3(\SCLK_counter_reg_n_0_[9] ),
        .I4(\SCLK_counter[10]_i_5_n_0 ),
        .I5(\SCLK_counter_reg_n_0_[10] ),
        .O(SCLK_counter[10]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \SCLK_counter[10]_i_3 
       (.I0(\SCLK_counter_reg_n_0_[5] ),
        .I1(\SCLK_counter_reg_n_0_[4] ),
        .I2(\SCLK_counter_reg_n_0_[7] ),
        .I3(\SCLK_counter_reg_n_0_[6] ),
        .I4(\SCLK_counter[10]_i_6_n_0 ),
        .I5(\SCLK_counter[10]_i_7_n_0 ),
        .O(\SCLK_counter[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \SCLK_counter[10]_i_4 
       (.I0(\SCLK_counter_reg_n_0_[6] ),
        .I1(\SCLK_counter_reg_n_0_[5] ),
        .I2(\SCLK_counter_reg_n_0_[4] ),
        .I3(\SCLK_counter_reg_n_0_[3] ),
        .I4(\SCLK_counter[5]_i_2_n_0 ),
        .I5(\SCLK_counter_reg_n_0_[2] ),
        .O(\SCLK_counter[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \SCLK_counter[10]_i_5 
       (.I0(i2c_states[0]),
        .I1(i2c_states[2]),
        .O(\SCLK_counter[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \SCLK_counter[10]_i_6 
       (.I0(\SCLK_counter[10]_i_8_n_0 ),
        .I1(\SCLK_counter[10]_i_9_n_0 ),
        .I2(\SCLK_counter_reg_n_0_[8] ),
        .I3(\SCLK_counter_reg_n_0_[9] ),
        .I4(\SCLK_counter_reg_n_0_[10] ),
        .I5(i2c_states[2]),
        .O(\SCLK_counter[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \SCLK_counter[10]_i_7 
       (.I0(\SCLK_counter_reg_n_0_[0] ),
        .I1(\SCLK_counter_reg_n_0_[1] ),
        .I2(\SCLK_counter_reg_n_0_[2] ),
        .I3(\SCLK_counter_reg_n_0_[3] ),
        .O(\SCLK_counter[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SCLK_counter[10]_i_8 
       (.I0(scl_o),
        .I1(clk_delay1_reg_n_0),
        .O(\SCLK_counter[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \SCLK_counter[10]_i_9 
       (.I0(s00_axi_aresetn),
        .I1(i2c_states[1]),
        .O(\SCLK_counter[10]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0220)) 
    \SCLK_counter[1]_i_1 
       (.I0(i2c_states[0]),
        .I1(i2c_states[2]),
        .I2(\SCLK_counter_reg_n_0_[0] ),
        .I3(\SCLK_counter_reg_n_0_[1] ),
        .O(SCLK_counter[1]));
  LUT5 #(
    .INIT(32'h07000800)) 
    \SCLK_counter[2]_i_1 
       (.I0(\SCLK_counter_reg_n_0_[1] ),
        .I1(\SCLK_counter_reg_n_0_[0] ),
        .I2(i2c_states[2]),
        .I3(i2c_states[0]),
        .I4(\SCLK_counter_reg_n_0_[2] ),
        .O(SCLK_counter[2]));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \SCLK_counter[3]_i_1 
       (.I0(\SCLK_counter_reg_n_0_[0] ),
        .I1(\SCLK_counter_reg_n_0_[1] ),
        .I2(\SCLK_counter_reg_n_0_[2] ),
        .I3(i2c_states[2]),
        .I4(i2c_states[0]),
        .I5(\SCLK_counter_reg_n_0_[3] ),
        .O(SCLK_counter[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \SCLK_counter[4]_i_1 
       (.I0(\SCLK_counter_reg_n_0_[2] ),
        .I1(\SCLK_counter_reg_n_0_[1] ),
        .I2(\SCLK_counter_reg_n_0_[0] ),
        .I3(\SCLK_counter_reg_n_0_[3] ),
        .I4(\SCLK_counter[10]_i_5_n_0 ),
        .I5(\SCLK_counter_reg_n_0_[4] ),
        .O(SCLK_counter[4]));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \SCLK_counter[5]_i_1 
       (.I0(\SCLK_counter_reg_n_0_[4] ),
        .I1(\SCLK_counter_reg_n_0_[3] ),
        .I2(\SCLK_counter[5]_i_2_n_0 ),
        .I3(\SCLK_counter_reg_n_0_[2] ),
        .I4(\SCLK_counter[10]_i_5_n_0 ),
        .I5(\SCLK_counter_reg_n_0_[5] ),
        .O(SCLK_counter[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \SCLK_counter[5]_i_2 
       (.I0(\SCLK_counter_reg_n_0_[1] ),
        .I1(\SCLK_counter_reg_n_0_[0] ),
        .O(\SCLK_counter[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2010)) 
    \SCLK_counter[6]_i_1 
       (.I0(\SCLK_counter[9]_i_2_n_0 ),
        .I1(i2c_states[2]),
        .I2(i2c_states[0]),
        .I3(\SCLK_counter_reg_n_0_[6] ),
        .O(SCLK_counter[6]));
  LUT5 #(
    .INIT(32'h0D000200)) 
    \SCLK_counter[7]_i_1 
       (.I0(\SCLK_counter_reg_n_0_[6] ),
        .I1(\SCLK_counter[9]_i_2_n_0 ),
        .I2(i2c_states[2]),
        .I3(i2c_states[0]),
        .I4(\SCLK_counter_reg_n_0_[7] ),
        .O(SCLK_counter[7]));
  LUT6 #(
    .INIT(64'h00BF000000400000)) 
    \SCLK_counter[8]_i_1 
       (.I0(\SCLK_counter[9]_i_2_n_0 ),
        .I1(\SCLK_counter_reg_n_0_[6] ),
        .I2(\SCLK_counter_reg_n_0_[7] ),
        .I3(i2c_states[2]),
        .I4(i2c_states[0]),
        .I5(\SCLK_counter_reg_n_0_[8] ),
        .O(SCLK_counter[8]));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \SCLK_counter[9]_i_1 
       (.I0(\SCLK_counter_reg_n_0_[7] ),
        .I1(\SCLK_counter_reg_n_0_[6] ),
        .I2(\SCLK_counter[9]_i_2_n_0 ),
        .I3(\SCLK_counter_reg_n_0_[8] ),
        .I4(\SCLK_counter[10]_i_5_n_0 ),
        .I5(\SCLK_counter_reg_n_0_[9] ),
        .O(SCLK_counter[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \SCLK_counter[9]_i_2 
       (.I0(\SCLK_counter_reg_n_0_[2] ),
        .I1(\SCLK_counter_reg_n_0_[1] ),
        .I2(\SCLK_counter_reg_n_0_[0] ),
        .I3(\SCLK_counter_reg_n_0_[3] ),
        .I4(\SCLK_counter_reg_n_0_[4] ),
        .I5(\SCLK_counter_reg_n_0_[5] ),
        .O(\SCLK_counter[9]_i_2_n_0 ));
  FDRE \SCLK_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(SCLK_counter0),
        .D(SCLK_counter[0]),
        .Q(\SCLK_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \SCLK_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(SCLK_counter0),
        .D(SCLK_counter[10]),
        .Q(\SCLK_counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \SCLK_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(SCLK_counter0),
        .D(SCLK_counter[1]),
        .Q(\SCLK_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \SCLK_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(SCLK_counter0),
        .D(SCLK_counter[2]),
        .Q(\SCLK_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \SCLK_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(SCLK_counter0),
        .D(SCLK_counter[3]),
        .Q(\SCLK_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \SCLK_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(SCLK_counter0),
        .D(SCLK_counter[4]),
        .Q(\SCLK_counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \SCLK_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(SCLK_counter0),
        .D(SCLK_counter[5]),
        .Q(\SCLK_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \SCLK_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(SCLK_counter0),
        .D(SCLK_counter[6]),
        .Q(\SCLK_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \SCLK_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(SCLK_counter0),
        .D(SCLK_counter[7]),
        .Q(\SCLK_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \SCLK_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(SCLK_counter0),
        .D(SCLK_counter[8]),
        .Q(\SCLK_counter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \SCLK_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(SCLK_counter0),
        .D(SCLK_counter[9]),
        .Q(\SCLK_counter_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF00A0FF0000A0C00)) 
    SDA_t_i_1
       (.I0(SDA_t_i_2_n_0),
        .I1(SDA_t0__7),
        .I2(i2c_states[2]),
        .I3(i2c_states[0]),
        .I4(i2c_states[1]),
        .I5(sda_t),
        .O(SDA_t_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    SDA_t_i_2
       (.I0(SDA_t_i_4_n_0),
        .I1(rec_ack_ok_reg_n_0),
        .O(SDA_t_i_2_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    SDA_t_i_3
       (.I0(\SCLK_counter_reg_n_0_[6] ),
        .I1(\SCLK_counter_reg_n_0_[5] ),
        .I2(\SCLK_counter_reg_n_0_[4] ),
        .I3(\SCLK_counter_reg_n_0_[3] ),
        .I4(SDA_t_i_5_n_0),
        .I5(SDA_t_i_6_n_0),
        .O(SDA_t0__7));
  LUT6 #(
    .INIT(64'h5555F7F75555FFF7)) 
    SDA_t_i_4
       (.I0(\freq_counter_reg_n_0_[10] ),
        .I1(\freq_counter_reg_n_0_[8] ),
        .I2(o_sda_i_16_n_0),
        .I3(SDA_t_i_7_n_0),
        .I4(\freq_counter_reg_n_0_[9] ),
        .I5(\freq_counter_reg_n_0_[5] ),
        .O(SDA_t_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    SDA_t_i_5
       (.I0(\SCLK_counter_reg_n_0_[2] ),
        .I1(\SCLK_counter_reg_n_0_[1] ),
        .I2(\SCLK_counter_reg_n_0_[0] ),
        .O(SDA_t_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    SDA_t_i_6
       (.I0(\SCLK_counter_reg_n_0_[7] ),
        .I1(\SCLK_counter_reg_n_0_[8] ),
        .I2(\SCLK_counter_reg_n_0_[9] ),
        .I3(\SCLK_counter_reg_n_0_[10] ),
        .I4(clk_delay1_reg_n_0),
        .I5(scl_o),
        .O(SDA_t_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    SDA_t_i_7
       (.I0(\freq_counter_reg_n_0_[0] ),
        .I1(\freq_counter_reg_n_0_[1] ),
        .I2(\freq_counter_reg_n_0_[2] ),
        .I3(\freq_counter_reg_n_0_[3] ),
        .I4(\freq_counter_reg_n_0_[4] ),
        .O(SDA_t_i_7_n_0));
  FDCE SDA_t_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(i2c_fail_ACK_reg_0),
        .D(SDA_t_i_1_n_0),
        .Q(sda_t));
  LUT5 #(
    .INIT(32'h00000040)) 
    \ack_counter[0]_i_1 
       (.I0(i2c_states[2]),
        .I1(i2c_states[1]),
        .I2(scl_o),
        .I3(rec_ack_ok_reg_n_0),
        .I4(\ack_counter_reg_n_0_[0] ),
        .O(ack_counter[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080000)) 
    \ack_counter[10]_i_1 
       (.I0(i2c_fail_ACK0__10),
        .I1(\ack_counter[10]_i_4_n_0 ),
        .I2(SDA_t_i_2_n_0),
        .I3(\ack_counter[10]_i_5_n_0 ),
        .I4(\ack_counter[10]_i_6_n_0 ),
        .I5(\ack_counter[10]_i_7_n_0 ),
        .O(ack_counter0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \ack_counter[10]_i_10 
       (.I0(\ack_counter_reg_n_0_[3] ),
        .I1(\ack_counter_reg_n_0_[4] ),
        .I2(\ack_counter_reg_n_0_[5] ),
        .I3(\ack_counter_reg_n_0_[7] ),
        .I4(\ack_counter_reg_n_0_[6] ),
        .O(\ack_counter[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ack_counter[10]_i_11 
       (.I0(\ack_counter_reg_n_0_[0] ),
        .I1(\ack_counter_reg_n_0_[1] ),
        .I2(\ack_counter_reg_n_0_[2] ),
        .I3(\ack_counter_reg_n_0_[9] ),
        .I4(\ack_counter_reg_n_0_[8] ),
        .I5(\ack_counter_reg_n_0_[10] ),
        .O(\ack_counter[10]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hB040)) 
    \ack_counter[10]_i_2 
       (.I0(\ack_counter[10]_i_8_n_0 ),
        .I1(\ack_counter_reg_n_0_[9] ),
        .I2(\ack_counter[10]_i_9_n_0 ),
        .I3(\ack_counter_reg_n_0_[10] ),
        .O(ack_counter[10]));
  LUT5 #(
    .INIT(32'h33333332)) 
    \ack_counter[10]_i_3 
       (.I0(\ack_counter[10]_i_10_n_0 ),
        .I1(\ack_counter[10]_i_11_n_0 ),
        .I2(\ack_counter_reg_n_0_[10] ),
        .I3(\ack_counter_reg_n_0_[8] ),
        .I4(\ack_counter_reg_n_0_[9] ),
        .O(i2c_fail_ACK0__10));
  LUT4 #(
    .INIT(16'h2022)) 
    \ack_counter[10]_i_4 
       (.I0(i2c_states[1]),
        .I1(i2c_states[2]),
        .I2(rec_ack_ok_reg_n_0),
        .I3(scl_o),
        .O(\ack_counter[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \ack_counter[10]_i_5 
       (.I0(i2c_states[2]),
        .I1(i2c_states[1]),
        .I2(scl_o),
        .I3(rec_ack_ok_reg_n_0),
        .I4(sda_i),
        .O(\ack_counter[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ack_counter[10]_i_6 
       (.I0(s00_axi_aresetn),
        .I1(i2c_states[0]),
        .O(\ack_counter[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \ack_counter[10]_i_7 
       (.I0(s00_axi_aresetn),
        .I1(i2c_states[1]),
        .I2(i2c_states[0]),
        .I3(i2c_states[2]),
        .I4(SDA_t0__7),
        .O(\ack_counter[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \ack_counter[10]_i_8 
       (.I0(\ack_counter_reg_n_0_[7] ),
        .I1(\ack_counter_reg_n_0_[6] ),
        .I2(\ack_counter[9]_i_2_n_0 ),
        .I3(\ack_counter_reg_n_0_[8] ),
        .O(\ack_counter[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \ack_counter[10]_i_9 
       (.I0(rec_ack_ok_reg_n_0),
        .I1(scl_o),
        .I2(i2c_states[1]),
        .I3(i2c_states[2]),
        .O(\ack_counter[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000400000)) 
    \ack_counter[1]_i_1 
       (.I0(rec_ack_ok_reg_n_0),
        .I1(scl_o),
        .I2(i2c_states[1]),
        .I3(i2c_states[2]),
        .I4(\ack_counter_reg_n_0_[0] ),
        .I5(\ack_counter_reg_n_0_[1] ),
        .O(ack_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \ack_counter[2]_i_1 
       (.I0(\ack_counter[10]_i_9_n_0 ),
        .I1(\ack_counter_reg_n_0_[1] ),
        .I2(\ack_counter_reg_n_0_[0] ),
        .I3(\ack_counter_reg_n_0_[2] ),
        .O(ack_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \ack_counter[3]_i_1 
       (.I0(\ack_counter_reg_n_0_[1] ),
        .I1(\ack_counter_reg_n_0_[0] ),
        .I2(\ack_counter_reg_n_0_[2] ),
        .I3(\ack_counter[10]_i_9_n_0 ),
        .I4(\ack_counter_reg_n_0_[3] ),
        .O(ack_counter[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \ack_counter[4]_i_1 
       (.I0(\ack_counter_reg_n_0_[2] ),
        .I1(\ack_counter_reg_n_0_[0] ),
        .I2(\ack_counter_reg_n_0_[1] ),
        .I3(\ack_counter_reg_n_0_[3] ),
        .I4(\ack_counter[10]_i_9_n_0 ),
        .I5(\ack_counter_reg_n_0_[4] ),
        .O(ack_counter[4]));
  LUT6 #(
    .INIT(64'h0000100000002000)) 
    \ack_counter[5]_i_1 
       (.I0(\ack_counter[5]_i_2_n_0 ),
        .I1(i2c_states[2]),
        .I2(i2c_states[1]),
        .I3(scl_o),
        .I4(rec_ack_ok_reg_n_0),
        .I5(\ack_counter_reg_n_0_[5] ),
        .O(ack_counter[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \ack_counter[5]_i_2 
       (.I0(\ack_counter_reg_n_0_[4] ),
        .I1(\ack_counter_reg_n_0_[3] ),
        .I2(\ack_counter_reg_n_0_[1] ),
        .I3(\ack_counter_reg_n_0_[0] ),
        .I4(\ack_counter_reg_n_0_[2] ),
        .O(\ack_counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000001000)) 
    \ack_counter[6]_i_1 
       (.I0(\ack_counter[9]_i_2_n_0 ),
        .I1(i2c_states[2]),
        .I2(i2c_states[1]),
        .I3(scl_o),
        .I4(rec_ack_ok_reg_n_0),
        .I5(\ack_counter_reg_n_0_[6] ),
        .O(ack_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hD020)) 
    \ack_counter[7]_i_1 
       (.I0(\ack_counter_reg_n_0_[6] ),
        .I1(\ack_counter[9]_i_2_n_0 ),
        .I2(\ack_counter[10]_i_9_n_0 ),
        .I3(\ack_counter_reg_n_0_[7] ),
        .O(ack_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBF004000)) 
    \ack_counter[8]_i_1 
       (.I0(\ack_counter[9]_i_2_n_0 ),
        .I1(\ack_counter_reg_n_0_[6] ),
        .I2(\ack_counter_reg_n_0_[7] ),
        .I3(\ack_counter[10]_i_9_n_0 ),
        .I4(\ack_counter_reg_n_0_[8] ),
        .O(ack_counter[8]));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \ack_counter[9]_i_1 
       (.I0(\ack_counter_reg_n_0_[7] ),
        .I1(\ack_counter_reg_n_0_[6] ),
        .I2(\ack_counter[9]_i_2_n_0 ),
        .I3(\ack_counter_reg_n_0_[8] ),
        .I4(\ack_counter[10]_i_9_n_0 ),
        .I5(\ack_counter_reg_n_0_[9] ),
        .O(ack_counter[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ack_counter[9]_i_2 
       (.I0(\ack_counter_reg_n_0_[2] ),
        .I1(\ack_counter_reg_n_0_[0] ),
        .I2(\ack_counter_reg_n_0_[1] ),
        .I3(\ack_counter_reg_n_0_[3] ),
        .I4(\ack_counter_reg_n_0_[4] ),
        .I5(\ack_counter_reg_n_0_[5] ),
        .O(\ack_counter[9]_i_2_n_0 ));
  FDRE \ack_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ack_counter0),
        .D(ack_counter[0]),
        .Q(\ack_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ack_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ack_counter0),
        .D(ack_counter[10]),
        .Q(\ack_counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \ack_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ack_counter0),
        .D(ack_counter[1]),
        .Q(\ack_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \ack_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ack_counter0),
        .D(ack_counter[2]),
        .Q(\ack_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \ack_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ack_counter0),
        .D(ack_counter[3]),
        .Q(\ack_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \ack_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ack_counter0),
        .D(ack_counter[4]),
        .Q(\ack_counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \ack_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ack_counter0),
        .D(ack_counter[5]),
        .Q(\ack_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \ack_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ack_counter0),
        .D(ack_counter[6]),
        .Q(\ack_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \ack_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ack_counter0),
        .D(ack_counter[7]),
        .Q(\ack_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \ack_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ack_counter0),
        .D(ack_counter[8]),
        .Q(\ack_counter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \ack_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ack_counter0),
        .D(ack_counter[9]),
        .Q(\ack_counter_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000C00)) 
    active_o_i_1
       (.I0(active_o_i_2_n_0),
        .I1(s00_axi_aresetn),
        .I2(i2c_states[1]),
        .I3(i2c_states[2]),
        .I4(i2c_states[0]),
        .I5(active_o_o),
        .O(active_o_i_1_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEEEFEFEFEFE)) 
    active_o_i_2
       (.I0(\freq_counter_reg_n_0_[9] ),
        .I1(\freq_counter_reg_n_0_[10] ),
        .I2(active_o_i_3_n_0),
        .I3(\freq_counter_reg_n_0_[2] ),
        .I4(\freq_counter_reg_n_0_[3] ),
        .I5(active_o_i_4_n_0),
        .O(active_o_i_2_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    active_o_i_3
       (.I0(\freq_counter_reg_n_0_[8] ),
        .I1(\freq_counter_reg_n_0_[7] ),
        .I2(\freq_counter_reg_n_0_[6] ),
        .I3(\freq_counter_reg_n_0_[5] ),
        .I4(\freq_counter_reg_n_0_[4] ),
        .O(active_o_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    active_o_i_4
       (.I0(\freq_counter_reg_n_0_[1] ),
        .I1(\freq_counter_reg_n_0_[0] ),
        .O(active_o_i_4_n_0));
  FDRE active_o_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(active_o_i_1_n_0),
        .Q(active_o_o),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h70E0FFFF70E00000)) 
    clk_delay1_i_1
       (.I0(i2c_states[2]),
        .I1(i2c_states[0]),
        .I2(scl_o),
        .I3(i2c_states[1]),
        .I4(s00_axi_aresetn),
        .I5(clk_delay1_reg_n_0),
        .O(clk_delay1_i_1_n_0));
  FDRE clk_delay1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_delay1_i_1_n_0),
        .Q(clk_delay1_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \data[7]_i_1 
       (.I0(out[1]),
        .I1(flag_data1_reg_0),
        .I2(flag_addr_reg_0),
        .I3(flag_ca_reg_0),
        .I4(flag_data2_reg_0),
        .I5(\data[7]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \data[7]_i_3 
       (.I0(i2c_fail),
        .I1(s00_axi_aresetn),
        .I2(out[2]),
        .I3(out[0]),
        .I4(update_dac_reg_0),
        .I5(i2c_busy),
        .O(\data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h02020202FF02FF00)) 
    flag_addr_i_1
       (.I0(out[1]),
        .I1(update_dac_reg_0),
        .I2(i2c_busy),
        .I3(flag_addr_reg_0),
        .I4(\data[7]_i_3_n_0 ),
        .I5(\FSM_sequential_i2c_states_reg[0]_1 ),
        .O(flag_addr_reg));
  LUT5 #(
    .INIT(32'hAAAAF8F0)) 
    flag_ca_i_1
       (.I0(flag_data1_i_2_n_0),
        .I1(flag_addr_reg_0),
        .I2(flag_ca_reg_0),
        .I3(\data[7]_i_3_n_0 ),
        .I4(\FSM_sequential_i2c_states_reg[0]_1 ),
        .O(flag_ca_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAFF80FF00)) 
    flag_data1_i_1
       (.I0(flag_data1_i_2_n_0),
        .I1(flag_ca_reg_0),
        .I2(flag_addr_reg_0),
        .I3(flag_data1_reg_0),
        .I4(\data[7]_i_3_n_0 ),
        .I5(\FSM_sequential_i2c_states_reg[0]_1 ),
        .O(flag_data1_reg));
  LUT3 #(
    .INIT(8'h02)) 
    flag_data1_i_2
       (.I0(out[1]),
        .I1(update_dac_reg_0),
        .I2(i2c_busy),
        .O(flag_data1_i_2_n_0));
  LUT5 #(
    .INIT(32'hAAAAFF08)) 
    flag_data2_i_1
       (.I0(flag_data1_i_2_n_0),
        .I1(\data[7]_i_3_n_0 ),
        .I2(flag_ca_reg_1),
        .I3(flag_data2_reg_0),
        .I4(\FSM_sequential_i2c_states_reg[0]_1 ),
        .O(flag_data2_reg));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    flag_finish_i_1
       (.I0(flag_data1_i_2_n_0),
        .I1(flag_ca_reg_1),
        .I2(flag_data2_reg_0),
        .I3(\data[7]_i_3_n_0 ),
        .I4(\FSM_sequential_i2c_states_reg[0]_1 ),
        .I5(flag_finish_reg_0),
        .O(flag_finish_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \freq_counter[0]_i_1 
       (.I0(\freq_counter_reg_n_0_[0] ),
        .O(\freq_counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \freq_counter[10]_i_1 
       (.I0(freq_counter0),
        .I1(\freq_counter[10]_i_4_n_0 ),
        .I2(\freq_counter[10]_i_5_n_0 ),
        .I3(\freq_counter[10]_i_6_n_0 ),
        .O(\freq_counter[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h70E0)) 
    \freq_counter[10]_i_2 
       (.I0(i2c_states[2]),
        .I1(i2c_states[0]),
        .I2(s00_axi_aresetn),
        .I3(i2c_states[1]),
        .O(freq_counter0));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \freq_counter[10]_i_3 
       (.I0(\freq_counter[10]_i_7_n_0 ),
        .I1(\freq_counter_reg_n_0_[6] ),
        .I2(\freq_counter_reg_n_0_[7] ),
        .I3(\freq_counter_reg_n_0_[9] ),
        .I4(\freq_counter_reg_n_0_[8] ),
        .I5(\freq_counter_reg_n_0_[10] ),
        .O(\freq_counter[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3001)) 
    \freq_counter[10]_i_4 
       (.I0(SDA_t0__7),
        .I1(active_o_i_2_n_0),
        .I2(i2c_states[1]),
        .I3(i2c_states[2]),
        .O(\freq_counter[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002020246)) 
    \freq_counter[10]_i_5 
       (.I0(i2c_states[2]),
        .I1(i2c_states[1]),
        .I2(o_sclk_i_6_n_0),
        .I3(rec_ack_ok_reg_n_0),
        .I4(active_o_i_2_n_0),
        .I5(i2c_states[0]),
        .O(\freq_counter[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000880F000000)) 
    \freq_counter[10]_i_6 
       (.I0(SDA_t_i_4_n_0),
        .I1(rec_ack_ok_reg_n_0),
        .I2(\FSM_sequential_i2c_states[2]_i_8_n_0 ),
        .I3(i2c_states[0]),
        .I4(i2c_states[2]),
        .I5(i2c_states[1]),
        .O(\freq_counter[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \freq_counter[10]_i_7 
       (.I0(\freq_counter_reg_n_0_[5] ),
        .I1(\freq_counter_reg_n_0_[4] ),
        .I2(\freq_counter_reg_n_0_[0] ),
        .I3(\freq_counter_reg_n_0_[1] ),
        .I4(\freq_counter_reg_n_0_[2] ),
        .I5(\freq_counter_reg_n_0_[3] ),
        .O(\freq_counter[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \freq_counter[1]_i_1 
       (.I0(\freq_counter_reg_n_0_[0] ),
        .I1(\freq_counter_reg_n_0_[1] ),
        .O(\freq_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \freq_counter[2]_i_1 
       (.I0(\freq_counter_reg_n_0_[0] ),
        .I1(\freq_counter_reg_n_0_[1] ),
        .I2(\freq_counter_reg_n_0_[2] ),
        .O(\freq_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \freq_counter[3]_i_1 
       (.I0(\freq_counter_reg_n_0_[2] ),
        .I1(\freq_counter_reg_n_0_[1] ),
        .I2(\freq_counter_reg_n_0_[0] ),
        .I3(\freq_counter_reg_n_0_[3] ),
        .O(\freq_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \freq_counter[4]_i_1 
       (.I0(\freq_counter_reg_n_0_[0] ),
        .I1(\freq_counter_reg_n_0_[1] ),
        .I2(\freq_counter_reg_n_0_[2] ),
        .I3(\freq_counter_reg_n_0_[3] ),
        .I4(\freq_counter_reg_n_0_[4] ),
        .O(\freq_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \freq_counter[5]_i_1 
       (.I0(\freq_counter_reg_n_0_[4] ),
        .I1(\freq_counter_reg_n_0_[3] ),
        .I2(\freq_counter_reg_n_0_[2] ),
        .I3(\freq_counter_reg_n_0_[1] ),
        .I4(\freq_counter_reg_n_0_[0] ),
        .I5(\freq_counter_reg_n_0_[5] ),
        .O(\freq_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \freq_counter[6]_i_1 
       (.I0(\freq_counter_reg_n_0_[3] ),
        .I1(\freq_counter_reg_n_0_[2] ),
        .I2(\freq_counter_reg_n_0_[1] ),
        .I3(\freq_counter_reg_n_0_[0] ),
        .I4(\freq_counter[6]_i_2_n_0 ),
        .I5(\freq_counter_reg_n_0_[6] ),
        .O(\freq_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \freq_counter[6]_i_2 
       (.I0(\freq_counter_reg_n_0_[4] ),
        .I1(\freq_counter_reg_n_0_[5] ),
        .O(\freq_counter[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \freq_counter[7]_i_1 
       (.I0(\freq_counter_reg_n_0_[6] ),
        .I1(\freq_counter[10]_i_7_n_0 ),
        .I2(\freq_counter_reg_n_0_[7] ),
        .O(\freq_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \freq_counter[8]_i_1 
       (.I0(\freq_counter_reg_n_0_[7] ),
        .I1(\freq_counter_reg_n_0_[6] ),
        .I2(\freq_counter[10]_i_7_n_0 ),
        .I3(\freq_counter_reg_n_0_[8] ),
        .O(\freq_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \freq_counter[9]_i_1 
       (.I0(\freq_counter_reg_n_0_[8] ),
        .I1(\freq_counter[10]_i_7_n_0 ),
        .I2(\freq_counter_reg_n_0_[6] ),
        .I3(\freq_counter_reg_n_0_[7] ),
        .I4(\freq_counter_reg_n_0_[9] ),
        .O(\freq_counter[9]_i_1_n_0 ));
  FDRE \freq_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(freq_counter0),
        .D(\freq_counter[0]_i_1_n_0 ),
        .Q(\freq_counter_reg_n_0_[0] ),
        .R(\freq_counter[10]_i_1_n_0 ));
  FDRE \freq_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(freq_counter0),
        .D(\freq_counter[10]_i_3_n_0 ),
        .Q(\freq_counter_reg_n_0_[10] ),
        .R(\freq_counter[10]_i_1_n_0 ));
  FDRE \freq_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(freq_counter0),
        .D(\freq_counter[1]_i_1_n_0 ),
        .Q(\freq_counter_reg_n_0_[1] ),
        .R(\freq_counter[10]_i_1_n_0 ));
  FDRE \freq_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(freq_counter0),
        .D(\freq_counter[2]_i_1_n_0 ),
        .Q(\freq_counter_reg_n_0_[2] ),
        .R(\freq_counter[10]_i_1_n_0 ));
  FDRE \freq_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(freq_counter0),
        .D(\freq_counter[3]_i_1_n_0 ),
        .Q(\freq_counter_reg_n_0_[3] ),
        .R(\freq_counter[10]_i_1_n_0 ));
  FDRE \freq_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(freq_counter0),
        .D(\freq_counter[4]_i_1_n_0 ),
        .Q(\freq_counter_reg_n_0_[4] ),
        .R(\freq_counter[10]_i_1_n_0 ));
  FDRE \freq_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(freq_counter0),
        .D(\freq_counter[5]_i_1_n_0 ),
        .Q(\freq_counter_reg_n_0_[5] ),
        .R(\freq_counter[10]_i_1_n_0 ));
  FDRE \freq_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(freq_counter0),
        .D(\freq_counter[6]_i_1_n_0 ),
        .Q(\freq_counter_reg_n_0_[6] ),
        .R(\freq_counter[10]_i_1_n_0 ));
  FDRE \freq_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(freq_counter0),
        .D(\freq_counter[7]_i_1_n_0 ),
        .Q(\freq_counter_reg_n_0_[7] ),
        .R(\freq_counter[10]_i_1_n_0 ));
  FDRE \freq_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(freq_counter0),
        .D(\freq_counter[8]_i_1_n_0 ),
        .Q(\freq_counter_reg_n_0_[8] ),
        .R(\freq_counter[10]_i_1_n_0 ));
  FDRE \freq_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(freq_counter0),
        .D(\freq_counter[9]_i_1_n_0 ),
        .Q(\freq_counter_reg_n_0_[9] ),
        .R(\freq_counter[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAFF2A00)) 
    i2c_busy_i_1
       (.I0(i2c_busy_i_2_n_0),
        .I1(i2c_states[0]),
        .I2(i2c_states[1]),
        .I3(s00_axi_aresetn),
        .I4(i2c_busy),
        .O(i2c_busy_i_1_n_0));
  LUT6 #(
    .INIT(64'h33FF77FF33FF77FC)) 
    i2c_busy_i_2
       (.I0(\FSM_sequential_i2c_states[2]_i_8_n_0 ),
        .I1(i2c_states[2]),
        .I2(\FSM_sequential_i2c_states[2]_i_7_n_0 ),
        .I3(i2c_states[0]),
        .I4(i2c_states[1]),
        .I5(update_dac_reg_0),
        .O(i2c_busy_i_2_n_0));
  FDRE i2c_busy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(i2c_busy_i_1_n_0),
        .Q(i2c_busy),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFBAA0000AA00)) 
    i2c_fail_ACK_i_1
       (.I0(i2c_states[0]),
        .I1(i2c_fail_ACK0__10),
        .I2(SDA_t_i_2_n_0),
        .I3(i2c_states[1]),
        .I4(i2c_states[2]),
        .I5(i2c_fail),
        .O(i2c_fail_ACK_i_1_n_0));
  FDCE i2c_fail_ACK_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(i2c_fail_ACK_reg_0),
        .D(i2c_fail_ACK_i_1_n_0),
        .Q(i2c_fail));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    o_sclk_i_1
       (.I0(o_sclk_i_2_n_0),
        .I1(o_sclk_i_3_n_0),
        .I2(o_sclk_i_4_n_0),
        .I3(o_sclk_i_5_n_0),
        .I4(scl_o),
        .O(o_sclk_i_1_n_0));
  LUT6 #(
    .INIT(64'h043404370C3C0C3C)) 
    o_sclk_i_2
       (.I0(active_o_i_2_n_0),
        .I1(i2c_states[2]),
        .I2(i2c_states[0]),
        .I3(scl_o),
        .I4(rec_ack_ok_reg_n_0),
        .I5(i2c_states[1]),
        .O(o_sclk_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000D00)) 
    o_sclk_i_3
       (.I0(i2c_states[0]),
        .I1(active_o_i_2_n_0),
        .I2(i2c_states[1]),
        .I3(s00_axi_aresetn),
        .I4(i2c_states[2]),
        .O(o_sclk_i_3_n_0));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    o_sclk_i_4
       (.I0(SDA_t_i_4_n_0),
        .I1(active_o_i_2_n_0),
        .I2(i2c_states[2]),
        .I3(i2c_states[0]),
        .I4(s00_axi_aresetn),
        .I5(rec_ack_ok_reg_n_0),
        .O(o_sclk_i_4_n_0));
  LUT5 #(
    .INIT(32'h5B000000)) 
    o_sclk_i_5
       (.I0(i2c_states[0]),
        .I1(o_sclk_i_6_n_0),
        .I2(i2c_states[1]),
        .I3(s00_axi_aresetn),
        .I4(i2c_states[2]),
        .O(o_sclk_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    o_sclk_i_6
       (.I0(o_sclk_i_7_n_0),
        .I1(\freq_counter_reg_n_0_[8] ),
        .I2(\freq_counter_reg_n_0_[9] ),
        .I3(\freq_counter_reg_n_0_[6] ),
        .I4(\freq_counter_reg_n_0_[7] ),
        .I5(\freq_counter_reg_n_0_[10] ),
        .O(o_sclk_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF00F800)) 
    o_sclk_i_7
       (.I0(\freq_counter_reg_n_0_[1] ),
        .I1(\freq_counter_reg_n_0_[2] ),
        .I2(\freq_counter_reg_n_0_[3] ),
        .I3(\freq_counter_reg_n_0_[5] ),
        .I4(\freq_counter_reg_n_0_[4] ),
        .O(o_sclk_i_7_n_0));
  FDRE o_sclk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(o_sclk_i_1_n_0),
        .Q(scl_o),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    o_sda_i_1
       (.I0(o_sda_i_3_n_0),
        .I1(o_sda_i_4_n_0),
        .I2(o_sda),
        .I3(sda_o),
        .O(o_sda_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    o_sda_i_11
       (.I0(o_sda_i_15_n_0),
        .I1(\SCLK_counter_reg_n_0_[4] ),
        .I2(\SCLK_counter_reg_n_0_[3] ),
        .I3(\SCLK_counter_reg_n_0_[6] ),
        .I4(\SCLK_counter_reg_n_0_[5] ),
        .I5(o_sda_i_7_n_0),
        .O(o_sda_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    o_sda_i_12
       (.I0(o_sda_i_16_n_0),
        .I1(\freq_counter[6]_i_2_n_0 ),
        .I2(\freq_counter_reg_n_0_[0] ),
        .I3(\freq_counter_reg_n_0_[1] ),
        .I4(\freq_counter_reg_n_0_[3] ),
        .I5(\freq_counter_reg_n_0_[2] ),
        .O(o_sda_i_12_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    o_sda_i_13
       (.I0(\Data_byte_reg_n_0_[6] ),
        .I1(\Data_byte_reg_n_0_[4] ),
        .I2(\SCLK_counter_reg_n_0_[1] ),
        .I3(\Data_byte_reg_n_0_[7] ),
        .I4(\SCLK_counter_reg_n_0_[0] ),
        .I5(\Data_byte_reg_n_0_[5] ),
        .O(o_sda_i_13_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    o_sda_i_14
       (.I0(\Data_byte_reg_n_0_[2] ),
        .I1(\Data_byte_reg_n_0_[0] ),
        .I2(\SCLK_counter_reg_n_0_[1] ),
        .I3(\Data_byte_reg_n_0_[3] ),
        .I4(\SCLK_counter_reg_n_0_[0] ),
        .I5(\Data_byte_reg_n_0_[1] ),
        .O(o_sda_i_14_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    o_sda_i_15
       (.I0(\SCLK_counter_reg_n_0_[10] ),
        .I1(\SCLK_counter_reg_n_0_[9] ),
        .I2(\SCLK_counter_reg_n_0_[8] ),
        .I3(\SCLK_counter_reg_n_0_[7] ),
        .O(o_sda_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    o_sda_i_16
       (.I0(\freq_counter_reg_n_0_[7] ),
        .I1(\freq_counter_reg_n_0_[6] ),
        .O(o_sda_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_sda_i_2
       (.I0(s00_axi_aresetn),
        .O(i2c_fail_ACK_reg_0));
  LUT6 #(
    .INIT(64'hCECE000000FF0000)) 
    o_sda_i_3
       (.I0(o_sda_i_6_n_0),
        .I1(o_sda_i_7_n_0),
        .I2(o_sda_i_8_n_0),
        .I3(active_o_i_2_n_0),
        .I4(i2c_states[2]),
        .I5(o_sda_i_9_n_0),
        .O(o_sda_i_3_n_0));
  LUT5 #(
    .INIT(32'h20232020)) 
    o_sda_i_4
       (.I0(o_sda_reg_i_10_n_0),
        .I1(i2c_states[2]),
        .I2(i2c_states[0]),
        .I3(update_dac_reg_0),
        .I4(start_com_reg_0),
        .O(o_sda_i_4_n_0));
  LUT6 #(
    .INIT(64'h00FF000000FF08FF)) 
    o_sda_i_5
       (.I0(o_sda_i_11_n_0),
        .I1(o_sda_i_12_n_0),
        .I2(scl_o),
        .I3(i2c_states[0]),
        .I4(i2c_states[2]),
        .I5(i2c_states[1]),
        .O(o_sda));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    o_sda_i_6
       (.I0(\freq_counter_reg_n_0_[7] ),
        .I1(\freq_counter_reg_n_0_[6] ),
        .I2(\freq_counter_reg_n_0_[3] ),
        .I3(\freq_counter_reg_n_0_[5] ),
        .I4(\freq_counter_reg_n_0_[4] ),
        .O(o_sda_i_6_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    o_sda_i_7
       (.I0(\freq_counter_reg_n_0_[9] ),
        .I1(\freq_counter_reg_n_0_[10] ),
        .I2(\freq_counter_reg_n_0_[8] ),
        .O(o_sda_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h01)) 
    o_sda_i_8
       (.I0(\freq_counter_reg_n_0_[2] ),
        .I1(\freq_counter_reg_n_0_[1] ),
        .I2(\freq_counter_reg_n_0_[0] ),
        .O(o_sda_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    o_sda_i_9
       (.I0(i2c_states[1]),
        .I1(i2c_states[2]),
        .I2(i2c_states[0]),
        .O(o_sda_i_9_n_0));
  FDCE o_sda_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(i2c_fail_ACK_reg_0),
        .D(o_sda_i_1_n_0),
        .Q(sda_o));
  MUXF7 o_sda_reg_i_10
       (.I0(o_sda_i_13_n_0),
        .I1(o_sda_i_14_n_0),
        .O(o_sda_reg_i_10_n_0),
        .S(\SCLK_counter_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h5350737350504040)) 
    rec_ack_ok_i_1
       (.I0(\FSM_sequential_i2c_states[2]_i_5_n_0 ),
        .I1(rec_ack_ok_i_2_n_0),
        .I2(rec_ack_ok_i_3_n_0),
        .I3(SDA_t_i_2_n_0),
        .I4(rec_ack_ok_i_4_n_0),
        .I5(rec_ack_ok_reg_n_0),
        .O(rec_ack_ok_i_1_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    rec_ack_ok_i_2
       (.I0(i2c_states[1]),
        .I1(s00_axi_aresetn),
        .I2(i2c_states[0]),
        .I3(i2c_states[2]),
        .O(rec_ack_ok_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rec_ack_ok_i_3
       (.I0(clk_delay1_reg_n_0),
        .I1(scl_o),
        .O(rec_ack_ok_i_3_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    rec_ack_ok_i_4
       (.I0(s00_axi_aresetn),
        .I1(i2c_states[0]),
        .I2(i2c_states[2]),
        .O(rec_ack_ok_i_4_n_0));
  FDRE rec_ack_ok_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rec_ack_ok_i_1_n_0),
        .Q(rec_ack_ok_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF2FF00000200)) 
    start_com_i_1
       (.I0(out[0]),
        .I1(i2c_busy),
        .I2(out[2]),
        .I3(s00_axi_aresetn),
        .I4(out[1]),
        .I5(start_com_reg_0),
        .O(start_com_reg));
  LUT6 #(
    .INIT(64'hFF7FFFCF00400000)) 
    stop_com_i_1
       (.I0(i2c_busy),
        .I1(out[1]),
        .I2(s00_axi_aresetn),
        .I3(out[2]),
        .I4(out[0]),
        .I5(stop_com_reg_0),
        .O(stop_com_reg));
  LUT6 #(
    .INIT(64'h0F000F20FF00FF00)) 
    update_dac_i_1
       (.I0(update_dac21_in),
        .I1(i2c_fail),
        .I2(\FSM_sequential_i2c_states_reg[2]_1 ),
        .I3(update_dac_reg_0),
        .I4(i2c_busy),
        .I5(out[1]),
        .O(update_dac_reg));
endmodule

(* CHECK_LICENSE_TYPE = "zsys_dac_i2c_0_0,dac_i2c_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dac_i2c_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_dac_i2c_0_0
   (sda_i,
    sda_o,
    sda_t,
    scl_i,
    scl_o,
    scl_t,
    Fail_ACL_i2c,
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
  (* x_interface_info = "xilinx.com:interface:iic:1.0 DAC_I2C SDA_I" *) (* x_interface_parameter = "XIL_INTERFACENAME DAC_I2C, BOARD.ASSOCIATED_PARAM IIC_BOARD_INTERFACE" *) input sda_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 DAC_I2C SDA_O" *) output sda_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 DAC_I2C SDA_T" *) output sda_t;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 DAC_I2C SCL_I" *) input scl_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 DAC_I2C SCL_O" *) output scl_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 DAC_I2C SCL_T" *) output scl_t;
  output Fail_ACL_i2c;
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
  wire Fail_ACL_i2c;
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
  wire scl_o;
  wire sda_i;
  wire sda_o;
  wire sda_t;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign scl_t = \<const0> ;
  GND GND
       (.G(\<const0> ));
  zsys_dac_i2c_0_0_dac_i2c_v1_0 U0
       (.Fail_ACL_i2c(Fail_ACL_i2c),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
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
        .s00_axi_wvalid(s00_axi_wvalid),
        .scl_o(scl_o),
        .sda_i(sda_i),
        .sda_o(sda_o),
        .sda_t(sda_t));
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
