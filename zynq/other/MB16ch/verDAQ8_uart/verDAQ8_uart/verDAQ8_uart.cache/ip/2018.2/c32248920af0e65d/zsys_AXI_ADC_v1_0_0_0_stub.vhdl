-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu May 19 23:45:28 2022
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_AXI_ADC_v1_0_0_0_stub.vhdl
-- Design      : zsys_AXI_ADC_v1_0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    i_MISO : in STD_LOGIC;
    o_MOSI : out STD_LOGIC;
    o_SCLK : out STD_LOGIC;
    o_nCS : out STD_LOGIC;
    o_ADC_nrst : out STD_LOGIC;
    o_debug : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_ADclk_p : in STD_LOGIC;
    i_ADclk_n : in STD_LOGIC;
    i_Lclk_p : in STD_LOGIC;
    i_Lclk_n : in STD_LOGIC;
    i_data_in_ch0_p : in STD_LOGIC;
    i_data_in_ch0_n : in STD_LOGIC;
    i_data_in_ch1_p : in STD_LOGIC;
    i_data_in_ch1_n : in STD_LOGIC;
    i_data_in_ch2_p : in STD_LOGIC;
    i_data_in_ch2_n : in STD_LOGIC;
    i_data_in_ch3_p : in STD_LOGIC;
    i_data_in_ch3_n : in STD_LOGIC;
    i_data_in_ch4_p : in STD_LOGIC;
    i_data_in_ch4_n : in STD_LOGIC;
    i_data_in_ch5_p : in STD_LOGIC;
    i_data_in_ch5_n : in STD_LOGIC;
    i_data_in_ch6_p : in STD_LOGIC;
    i_data_in_ch6_n : in STD_LOGIC;
    i_data_in_ch7_p : in STD_LOGIC;
    i_data_in_ch7_n : in STD_LOGIC;
    o_data_out_ch0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_clk : out STD_LOGIC;
    s00_axi_ctrl_aclk : in STD_LOGIC;
    s00_axi_ctrl_aresetn : in STD_LOGIC;
    s00_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_ctrl_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_ctrl_awvalid : in STD_LOGIC;
    s00_axi_ctrl_awready : out STD_LOGIC;
    s00_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_ctrl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_ctrl_wvalid : in STD_LOGIC;
    s00_axi_ctrl_wready : out STD_LOGIC;
    s00_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_ctrl_bvalid : out STD_LOGIC;
    s00_axi_ctrl_bready : in STD_LOGIC;
    s00_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_ctrl_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_ctrl_arvalid : in STD_LOGIC;
    s00_axi_ctrl_arready : out STD_LOGIC;
    s00_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_ctrl_rvalid : out STD_LOGIC;
    s00_axi_ctrl_rready : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_MISO,o_MOSI,o_SCLK,o_nCS,o_ADC_nrst,o_debug[11:0],i_ADclk_p,i_ADclk_n,i_Lclk_p,i_Lclk_n,i_data_in_ch0_p,i_data_in_ch0_n,i_data_in_ch1_p,i_data_in_ch1_n,i_data_in_ch2_p,i_data_in_ch2_n,i_data_in_ch3_p,i_data_in_ch3_n,i_data_in_ch4_p,i_data_in_ch4_n,i_data_in_ch5_p,i_data_in_ch5_n,i_data_in_ch6_p,i_data_in_ch6_n,i_data_in_ch7_p,i_data_in_ch7_n,o_data_out_ch0[15:0],o_data_out_ch1[15:0],o_data_out_ch2[15:0],o_data_out_ch3[15:0],o_data_out_ch4[15:0],o_data_out_ch5[15:0],o_data_out_ch6[15:0],o_data_out_ch7[15:0],o_data_clk,s00_axi_ctrl_aclk,s00_axi_ctrl_aresetn,s00_axi_ctrl_awaddr[3:0],s00_axi_ctrl_awprot[2:0],s00_axi_ctrl_awvalid,s00_axi_ctrl_awready,s00_axi_ctrl_wdata[31:0],s00_axi_ctrl_wstrb[3:0],s00_axi_ctrl_wvalid,s00_axi_ctrl_wready,s00_axi_ctrl_bresp[1:0],s00_axi_ctrl_bvalid,s00_axi_ctrl_bready,s00_axi_ctrl_araddr[3:0],s00_axi_ctrl_arprot[2:0],s00_axi_ctrl_arvalid,s00_axi_ctrl_arready,s00_axi_ctrl_rdata[31:0],s00_axi_ctrl_rresp[1:0],s00_axi_ctrl_rvalid,s00_axi_ctrl_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AXI_ADC_v1_0,Vivado 2018.2";
begin
end;
