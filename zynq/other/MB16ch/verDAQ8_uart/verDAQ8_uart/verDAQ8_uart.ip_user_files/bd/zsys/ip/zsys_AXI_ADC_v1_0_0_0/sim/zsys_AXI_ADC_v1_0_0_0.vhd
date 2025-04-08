-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:AXI_ADC_v1_0:2.0
-- IP Revision: 35

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zsys_AXI_ADC_v1_0_0_0 IS
  PORT (
    i_MISO : IN STD_LOGIC;
    o_MOSI : OUT STD_LOGIC;
    o_SCLK : OUT STD_LOGIC;
    o_nCS : OUT STD_LOGIC;
    o_ADC_nrst : OUT STD_LOGIC;
    o_debug : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    i_ADclk_p : IN STD_LOGIC;
    i_ADclk_n : IN STD_LOGIC;
    i_Lclk_p : IN STD_LOGIC;
    i_Lclk_n : IN STD_LOGIC;
    i_data_in_ch0_p : IN STD_LOGIC;
    i_data_in_ch0_n : IN STD_LOGIC;
    i_data_in_ch1_p : IN STD_LOGIC;
    i_data_in_ch1_n : IN STD_LOGIC;
    i_data_in_ch2_p : IN STD_LOGIC;
    i_data_in_ch2_n : IN STD_LOGIC;
    i_data_in_ch3_p : IN STD_LOGIC;
    i_data_in_ch3_n : IN STD_LOGIC;
    i_data_in_ch4_p : IN STD_LOGIC;
    i_data_in_ch4_n : IN STD_LOGIC;
    i_data_in_ch5_p : IN STD_LOGIC;
    i_data_in_ch5_n : IN STD_LOGIC;
    i_data_in_ch6_p : IN STD_LOGIC;
    i_data_in_ch6_n : IN STD_LOGIC;
    i_data_in_ch7_p : IN STD_LOGIC;
    i_data_in_ch7_n : IN STD_LOGIC;
    o_data_out_ch0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_data_out_ch1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_data_out_ch2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_data_out_ch3 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_data_out_ch4 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_data_out_ch5 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_data_out_ch6 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_data_out_ch7 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_data_clk : OUT STD_LOGIC;
    s00_axi_ctrl_aclk : IN STD_LOGIC;
    s00_axi_ctrl_aresetn : IN STD_LOGIC;
    s00_axi_ctrl_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_ctrl_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_ctrl_awvalid : IN STD_LOGIC;
    s00_axi_ctrl_awready : OUT STD_LOGIC;
    s00_axi_ctrl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_ctrl_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_ctrl_wvalid : IN STD_LOGIC;
    s00_axi_ctrl_wready : OUT STD_LOGIC;
    s00_axi_ctrl_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_ctrl_bvalid : OUT STD_LOGIC;
    s00_axi_ctrl_bready : IN STD_LOGIC;
    s00_axi_ctrl_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_ctrl_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_ctrl_arvalid : IN STD_LOGIC;
    s00_axi_ctrl_arready : OUT STD_LOGIC;
    s00_axi_ctrl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_ctrl_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_ctrl_rvalid : OUT STD_LOGIC;
    s00_axi_ctrl_rready : IN STD_LOGIC
  );
END zsys_AXI_ADC_v1_0_0_0;

ARCHITECTURE zsys_AXI_ADC_v1_0_0_0_arch OF zsys_AXI_ADC_v1_0_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zsys_AXI_ADC_v1_0_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT AXI_ADC_v1_0 IS
    GENERIC (
      C_S00_AXI_ctrl_DATA_WIDTH : INTEGER;
      C_S00_AXI_ctrl_ADDR_WIDTH : INTEGER;
      ADC_N_bits : INTEGER;
      FRAME_PATTERN : STD_LOGIC_VECTOR(5 DOWNTO 0)
    );
    PORT (
      i_MISO : IN STD_LOGIC;
      o_MOSI : OUT STD_LOGIC;
      o_SCLK : OUT STD_LOGIC;
      o_nCS : OUT STD_LOGIC;
      o_ADC_nrst : OUT STD_LOGIC;
      o_debug : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      i_ADclk_p : IN STD_LOGIC;
      i_ADclk_n : IN STD_LOGIC;
      i_Lclk_p : IN STD_LOGIC;
      i_Lclk_n : IN STD_LOGIC;
      i_data_in_ch0_p : IN STD_LOGIC;
      i_data_in_ch0_n : IN STD_LOGIC;
      i_data_in_ch1_p : IN STD_LOGIC;
      i_data_in_ch1_n : IN STD_LOGIC;
      i_data_in_ch2_p : IN STD_LOGIC;
      i_data_in_ch2_n : IN STD_LOGIC;
      i_data_in_ch3_p : IN STD_LOGIC;
      i_data_in_ch3_n : IN STD_LOGIC;
      i_data_in_ch4_p : IN STD_LOGIC;
      i_data_in_ch4_n : IN STD_LOGIC;
      i_data_in_ch5_p : IN STD_LOGIC;
      i_data_in_ch5_n : IN STD_LOGIC;
      i_data_in_ch6_p : IN STD_LOGIC;
      i_data_in_ch6_n : IN STD_LOGIC;
      i_data_in_ch7_p : IN STD_LOGIC;
      i_data_in_ch7_n : IN STD_LOGIC;
      o_data_out_ch0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_data_out_ch1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_data_out_ch2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_data_out_ch3 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_data_out_ch4 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_data_out_ch5 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_data_out_ch6 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_data_out_ch7 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_data_clk : OUT STD_LOGIC;
      s00_axi_ctrl_aclk : IN STD_LOGIC;
      s00_axi_ctrl_aresetn : IN STD_LOGIC;
      s00_axi_ctrl_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_ctrl_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_ctrl_awvalid : IN STD_LOGIC;
      s00_axi_ctrl_awready : OUT STD_LOGIC;
      s00_axi_ctrl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_ctrl_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_ctrl_wvalid : IN STD_LOGIC;
      s00_axi_ctrl_wready : OUT STD_LOGIC;
      s00_axi_ctrl_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_ctrl_bvalid : OUT STD_LOGIC;
      s00_axi_ctrl_bready : IN STD_LOGIC;
      s00_axi_ctrl_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_ctrl_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_ctrl_arvalid : IN STD_LOGIC;
      s00_axi_ctrl_arready : OUT STD_LOGIC;
      s00_axi_ctrl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_ctrl_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_ctrl_rvalid : OUT STD_LOGIC;
      s00_axi_ctrl_rready : IN STD_LOGIC
    );
  END COMPONENT AXI_ADC_v1_0;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF zsys_AXI_ADC_v1_0_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_ctrl_awaddr: SIGNAL IS "XIL_INTERFACENAME s00_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THRE" & 
"ADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi_ctrl AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_ctrl_aresetn: SIGNAL IS "XIL_INTERFACENAME s00_axi_ctrl_aresetn, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s00_axi_ctrl_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_ctrl_aclk: SIGNAL IS "XIL_INTERFACENAME s00_axi_ctrl_aclk, ASSOCIATED_BUSIF s00_axi_ctrl, ASSOCIATED_RESET s00_axi_ctrl_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ctrl_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s00_axi_ctrl_aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_data_clk: SIGNAL IS "XIL_INTERFACENAME o_data_clk, ASSOCIATED_BUSIF o_data_clk, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_AXI_ADC_v1_0_0_0_o_data_clk";
  ATTRIBUTE X_INTERFACE_INFO OF o_data_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 o_data_clk CLK";
BEGIN
  U0 : AXI_ADC_v1_0
    GENERIC MAP (
      C_S00_AXI_ctrl_DATA_WIDTH => 32,
      C_S00_AXI_ctrl_ADDR_WIDTH => 4,
      ADC_N_bits => 16,
      FRAME_PATTERN => B"111000"
    )
    PORT MAP (
      i_MISO => i_MISO,
      o_MOSI => o_MOSI,
      o_SCLK => o_SCLK,
      o_nCS => o_nCS,
      o_ADC_nrst => o_ADC_nrst,
      o_debug => o_debug,
      i_ADclk_p => i_ADclk_p,
      i_ADclk_n => i_ADclk_n,
      i_Lclk_p => i_Lclk_p,
      i_Lclk_n => i_Lclk_n,
      i_data_in_ch0_p => i_data_in_ch0_p,
      i_data_in_ch0_n => i_data_in_ch0_n,
      i_data_in_ch1_p => i_data_in_ch1_p,
      i_data_in_ch1_n => i_data_in_ch1_n,
      i_data_in_ch2_p => i_data_in_ch2_p,
      i_data_in_ch2_n => i_data_in_ch2_n,
      i_data_in_ch3_p => i_data_in_ch3_p,
      i_data_in_ch3_n => i_data_in_ch3_n,
      i_data_in_ch4_p => i_data_in_ch4_p,
      i_data_in_ch4_n => i_data_in_ch4_n,
      i_data_in_ch5_p => i_data_in_ch5_p,
      i_data_in_ch5_n => i_data_in_ch5_n,
      i_data_in_ch6_p => i_data_in_ch6_p,
      i_data_in_ch6_n => i_data_in_ch6_n,
      i_data_in_ch7_p => i_data_in_ch7_p,
      i_data_in_ch7_n => i_data_in_ch7_n,
      o_data_out_ch0 => o_data_out_ch0,
      o_data_out_ch1 => o_data_out_ch1,
      o_data_out_ch2 => o_data_out_ch2,
      o_data_out_ch3 => o_data_out_ch3,
      o_data_out_ch4 => o_data_out_ch4,
      o_data_out_ch5 => o_data_out_ch5,
      o_data_out_ch6 => o_data_out_ch6,
      o_data_out_ch7 => o_data_out_ch7,
      o_data_clk => o_data_clk,
      s00_axi_ctrl_aclk => s00_axi_ctrl_aclk,
      s00_axi_ctrl_aresetn => s00_axi_ctrl_aresetn,
      s00_axi_ctrl_awaddr => s00_axi_ctrl_awaddr,
      s00_axi_ctrl_awprot => s00_axi_ctrl_awprot,
      s00_axi_ctrl_awvalid => s00_axi_ctrl_awvalid,
      s00_axi_ctrl_awready => s00_axi_ctrl_awready,
      s00_axi_ctrl_wdata => s00_axi_ctrl_wdata,
      s00_axi_ctrl_wstrb => s00_axi_ctrl_wstrb,
      s00_axi_ctrl_wvalid => s00_axi_ctrl_wvalid,
      s00_axi_ctrl_wready => s00_axi_ctrl_wready,
      s00_axi_ctrl_bresp => s00_axi_ctrl_bresp,
      s00_axi_ctrl_bvalid => s00_axi_ctrl_bvalid,
      s00_axi_ctrl_bready => s00_axi_ctrl_bready,
      s00_axi_ctrl_araddr => s00_axi_ctrl_araddr,
      s00_axi_ctrl_arprot => s00_axi_ctrl_arprot,
      s00_axi_ctrl_arvalid => s00_axi_ctrl_arvalid,
      s00_axi_ctrl_arready => s00_axi_ctrl_arready,
      s00_axi_ctrl_rdata => s00_axi_ctrl_rdata,
      s00_axi_ctrl_rresp => s00_axi_ctrl_rresp,
      s00_axi_ctrl_rvalid => s00_axi_ctrl_rvalid,
      s00_axi_ctrl_rready => s00_axi_ctrl_rready
    );
END zsys_AXI_ADC_v1_0_0_0_arch;
