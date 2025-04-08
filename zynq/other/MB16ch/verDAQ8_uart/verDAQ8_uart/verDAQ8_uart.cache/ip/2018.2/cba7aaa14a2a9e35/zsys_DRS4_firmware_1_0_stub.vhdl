-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Apr 24 22:09:24 2022
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_DRS4_firmware_1_0_stub.vhdl
-- Design      : zsys_DRS4_firmware_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    o_nReset : out STD_LOGIC;
    o_ROFS : out STD_LOGIC;
    clk_drs4 : in STD_LOGIC;
    o_A3_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_srclk : out STD_LOGIC;
    o_srin : out STD_LOGIC;
    o_rsrload : out STD_LOGIC;
    o_denable : out STD_LOGIC;
    o_dwrite : out STD_LOGIC;
    o_refclk_p : out STD_LOGIC;
    i_drs4_trigger : in STD_LOGIC;
    i_SROUT : in STD_LOGIC;
    i_PLLLCK : in STD_LOGIC;
    o_stop_cell : out STD_LOGIC_VECTOR ( 9 downto 0 );
    o_stop_cell_ready : out STD_LOGIC;
    o_srclk_adc : out STD_LOGIC;
    o_dwrite_for_trigger : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "o_nReset,o_ROFS,clk_drs4,o_A3_0[3:0],o_srclk,o_srin,o_rsrload,o_denable,o_dwrite,o_refclk_p,i_drs4_trigger,i_SROUT,i_PLLLCK,o_stop_cell[9:0],o_stop_cell_ready,o_srclk_adc,o_dwrite_for_trigger,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DRS4_firmware_v3_0,Vivado 2018.2";
begin
end;
