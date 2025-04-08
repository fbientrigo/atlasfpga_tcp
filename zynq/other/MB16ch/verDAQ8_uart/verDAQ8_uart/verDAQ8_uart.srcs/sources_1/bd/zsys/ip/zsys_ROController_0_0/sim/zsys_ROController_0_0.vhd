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

-- IP VLNV: xilinx.com:module_ref:ROController:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zsys_ROController_0_0 IS
  PORT (
    sys_clk : IN STD_LOGIC;
    i_data_clk : IN STD_LOGIC;
    i_data_ch0 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    i_data_ch1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    i_data_ch2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    i_data_ch3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    i_data_ch4 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    i_data_ch5 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    i_data_ch6 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    i_data_ch7 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    i_rst : IN STD_LOGIC;
    i_veto : IN STD_LOGIC;
    i_trigger : IN STD_LOGIC;
    i_DRS4_DWRITEn : IN STD_LOGIC;
    o_busy : OUT STD_LOGIC;
    i_post_trig_wind : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    i_pre_trig_wind : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    o_trig_RO_end : OUT STD_LOGIC;
    i_stop_cell_ready : IN STD_LOGIC;
    i_stop_cell : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    o_wr_fifo_data : OUT STD_LOGIC_VECTOR(96 DOWNTO 0);
    o_wr_fifo_en : OUT STD_LOGIC;
    i_wr_fifo_full : IN STD_LOGIC;
    o_wr_fifo_clk : OUT STD_LOGIC;
    i_rd_fifo_data : IN STD_LOGIC_VECTOR(96 DOWNTO 0);
    o_rd_fifo_en : OUT STD_LOGIC;
    i_rd_fifo_empty : IN STD_LOGIC;
    o_rd_fifo_clk : OUT STD_LOGIC;
    i_rd_data_count : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    o_outfifo_wr_en : OUT STD_LOGIC;
    i_next_fifo_full : IN STD_LOGIC;
    i_wr_ack_ascii : IN STD_LOGIC;
    o_ascii : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END zsys_ROController_0_0;

ARCHITECTURE zsys_ROController_0_0_arch OF zsys_ROController_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zsys_ROController_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ROController IS
    GENERIC (
      Nbits : INTEGER;
      Nchannels : INTEGER;
      DRS4_samples : INTEGER
    );
    PORT (
      sys_clk : IN STD_LOGIC;
      i_data_clk : IN STD_LOGIC;
      i_data_ch0 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      i_data_ch1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      i_data_ch2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      i_data_ch3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      i_data_ch4 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      i_data_ch5 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      i_data_ch6 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      i_data_ch7 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      i_rst : IN STD_LOGIC;
      i_veto : IN STD_LOGIC;
      i_trigger : IN STD_LOGIC;
      i_DRS4_DWRITEn : IN STD_LOGIC;
      o_busy : OUT STD_LOGIC;
      i_post_trig_wind : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      i_pre_trig_wind : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      o_trig_RO_end : OUT STD_LOGIC;
      i_stop_cell_ready : IN STD_LOGIC;
      i_stop_cell : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      o_wr_fifo_data : OUT STD_LOGIC_VECTOR(96 DOWNTO 0);
      o_wr_fifo_en : OUT STD_LOGIC;
      i_wr_fifo_full : IN STD_LOGIC;
      o_wr_fifo_clk : OUT STD_LOGIC;
      i_rd_fifo_data : IN STD_LOGIC_VECTOR(96 DOWNTO 0);
      o_rd_fifo_en : OUT STD_LOGIC;
      i_rd_fifo_empty : IN STD_LOGIC;
      o_rd_fifo_clk : OUT STD_LOGIC;
      i_rd_data_count : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      o_outfifo_wr_en : OUT STD_LOGIC;
      i_next_fifo_full : IN STD_LOGIC;
      i_wr_ack_ascii : IN STD_LOGIC;
      o_ascii : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT ROController;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF zsys_ROController_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_rd_fifo_clk: SIGNAL IS "XIL_INTERFACENAME o_rd_fifo_clk, ASSOCIATED_BUSIF sys_clock, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_ROController_0_0_o_rd_fifo_clk";
  ATTRIBUTE X_INTERFACE_INFO OF o_rd_fifo_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 o_rd_fifo_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF i_rd_fifo_empty: SIGNAL IS "xilinx.com:interface:fifo_read:1.0 i_rd_fifo EMPTY";
  ATTRIBUTE X_INTERFACE_INFO OF o_rd_fifo_en: SIGNAL IS "xilinx.com:interface:fifo_read:1.0 i_rd_fifo RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF i_rd_fifo_data: SIGNAL IS "xilinx.com:interface:fifo_read:1.0 i_rd_fifo RD_DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_wr_fifo_clk: SIGNAL IS "XIL_INTERFACENAME o_wr_fifo_clk, ASSOCIATED_BUSIF o_wr_fifo_clk, FREQ_HZ 16000000, PHASE 0.000, CLK_DOMAIN zsys_ROController_0_0_o_wr_fifo_clk";
  ATTRIBUTE X_INTERFACE_INFO OF o_wr_fifo_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 o_wr_fifo_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF i_wr_fifo_full: SIGNAL IS "xilinx.com:interface:fifo_write:1.0 o_wr_fifo FULL";
  ATTRIBUTE X_INTERFACE_INFO OF o_wr_fifo_en: SIGNAL IS "xilinx.com:interface:fifo_write:1.0 o_wr_fifo WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_wr_fifo_data: SIGNAL IS "xilinx.com:interface:fifo_write:1.0 o_wr_fifo WR_DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_rst: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH";
  ATTRIBUTE X_INTERFACE_INFO OF i_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_data_clk: SIGNAL IS "XIL_INTERFACENAME i_data_clk, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_AXI_ADC_v1_0_0_0_o_data_clk";
  ATTRIBUTE X_INTERFACE_INFO OF i_data_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 i_data_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF sys_clk: SIGNAL IS "XIL_INTERFACENAME sys_clock, ASSOCIATED_BUSIF sys_clock, ASSOCIATED_RESET i_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF sys_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 sys_clock CLK";
BEGIN
  U0 : ROController
    GENERIC MAP (
      Nbits => 12,
      Nchannels => 8,
      DRS4_samples => 1024
    )
    PORT MAP (
      sys_clk => sys_clk,
      i_data_clk => i_data_clk,
      i_data_ch0 => i_data_ch0,
      i_data_ch1 => i_data_ch1,
      i_data_ch2 => i_data_ch2,
      i_data_ch3 => i_data_ch3,
      i_data_ch4 => i_data_ch4,
      i_data_ch5 => i_data_ch5,
      i_data_ch6 => i_data_ch6,
      i_data_ch7 => i_data_ch7,
      i_rst => i_rst,
      i_veto => i_veto,
      i_trigger => i_trigger,
      i_DRS4_DWRITEn => i_DRS4_DWRITEn,
      o_busy => o_busy,
      i_post_trig_wind => i_post_trig_wind,
      i_pre_trig_wind => i_pre_trig_wind,
      o_trig_RO_end => o_trig_RO_end,
      i_stop_cell_ready => i_stop_cell_ready,
      i_stop_cell => i_stop_cell,
      o_wr_fifo_data => o_wr_fifo_data,
      o_wr_fifo_en => o_wr_fifo_en,
      i_wr_fifo_full => i_wr_fifo_full,
      o_wr_fifo_clk => o_wr_fifo_clk,
      i_rd_fifo_data => i_rd_fifo_data,
      o_rd_fifo_en => o_rd_fifo_en,
      i_rd_fifo_empty => i_rd_fifo_empty,
      o_rd_fifo_clk => o_rd_fifo_clk,
      i_rd_data_count => i_rd_data_count,
      o_outfifo_wr_en => o_outfifo_wr_en,
      i_next_fifo_full => i_next_fifo_full,
      i_wr_ack_ascii => i_wr_ack_ascii,
      o_ascii => o_ascii
    );
END zsys_ROController_0_0_arch;
