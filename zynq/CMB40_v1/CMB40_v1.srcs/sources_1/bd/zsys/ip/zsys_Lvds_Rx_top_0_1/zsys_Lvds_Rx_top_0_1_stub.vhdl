-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Thu Nov 21 17:21:09 2024
-- Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_Lvds_Rx_top_0_1/zsys_Lvds_Rx_top_0_1_stub.vhdl
-- Design      : zsys_Lvds_Rx_top_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_Lvds_Rx_top_0_1 is
  Port ( 
    SysRst : in STD_LOGIC;
    Lclk : in STD_LOGIC;
    AdClk : in STD_LOGIC;
    DataInChP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DataInChN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AnalyseOut : out STD_LOGIC;
    ChOut_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ChOut_1 : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end zsys_Lvds_Rx_top_0_1;

architecture stub of zsys_Lvds_Rx_top_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SysRst,Lclk,AdClk,DataInChP[7:0],DataInChN[7:0],AnalyseOut,ChOut_0[11:0],ChOut_1[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Lvds_Rx_top,Vivado 2018.2";
begin
end;
