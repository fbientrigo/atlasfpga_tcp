-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Thu Dec  5 15:10:11 2024
-- Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_vector_logic_0_2/zsys_util_vector_logic_0_2_stub.vhdl
-- Design      : zsys_util_vector_logic_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_util_vector_logic_0_2 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end zsys_util_vector_logic_0_2;

architecture stub of zsys_util_vector_logic_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[11:0],Op2[11:0],Res[11:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.2";
begin
end;
