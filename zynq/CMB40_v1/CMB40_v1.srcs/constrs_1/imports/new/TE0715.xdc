############################
#BOARD 0 DRS4 control signal
############################
set_property -dict {PACKAGE_PIN A7 IOSTANDARD LVDS_25} [get_ports B0_DRS_REFCLK_P]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS25} [get_ports {B0_DRS_A0[2]}]
set_property -dict {PACKAGE_PIN H1 IOSTANDARD LVCMOS25} [get_ports {B0_DRS_A0[3]}]
#set_property PACKAGE_PIN B22 [get_ports B1_DRS_DTAP]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS25} [get_ports B0_DRS_DWRITE]
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS25} [get_ports {B0_DRS_A0[1]}]
set_property -dict {PACKAGE_PIN D6 IOSTANDARD LVCMOS25} [get_ports {B0_DRS_A0[0]}]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS25} [get_ports B0_DRS_RSLOAD]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS25} [get_ports B0_DRS_SRCLK]
set_property -dict {PACKAGE_PIN C3 IOSTANDARD LVCMOS25} [get_ports B0_DRS_SRIN]
set_property -dict {PACKAGE_PIN D3 IOSTANDARD LVCMOS25} [get_ports B0_DRS_SROUT]

#set_property BOARD_PIN mgt_clk1p [get_ports mgt_clk1_clk_p]
#create_clock -period 8.000 -name mgt_clk1 -waveform {0.000 4.000} [get_ports {mgt_clk1}]
############################
#BOARD 1 DRS4 control signal
############################
#B1_DRS_REFCLK inverted polarity on B1
#set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVDS_25} [get_ports B1_DRS_REFCLK_N]
#set_property -dict {PACKAGE_PIN W12 IOSTANDARD LVDS_25} [get_ports B1_DRS_REFCLK_P]
#set_property -dict {PACKAGE_PIN U11 IOSTANDARD LVCMOS25} [get_ports {B1_DRS_A[2]}]
#set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS25} [get_ports {B1_DRS_A[3]}]
##set_property PACKAGE_PIN B22 [get_ports B1_DRS_DTAP]
#set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS25} [get_ports B1_DRS_DWRITE]
#set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS25} [get_ports {B1_DRS_A[1]}]
#set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS25} [get_ports {B1_DRS_A[0]}]
#set_property -dict {PACKAGE_PIN AB13 IOSTANDARD LVCMOS25} [get_ports B1_DRS_RSLOAD]
#set_property -dict {PACKAGE_PIN AB14 IOSTANDARD LVCMOS25} [get_ports B1_DRS_SRCLK]
#set_property -dict {PACKAGE_PIN AA15 IOSTANDARD LVCMOS25} [get_ports B1_DRS_SRIN]
#set_property -dict {PACKAGE_PIN AA14 IOSTANDARD LVCMOS25} [get_ports B1_DRS_SROUT]



#####################
## DRS4 common
#####################
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS25} [get_ports B1_DRS_DENABLE]
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS25} [get_ports B1_DRS_nRESET]

####################
#BOARD 0 ADC readout
####################
set_property -dict {PACKAGE_PIN D5 IOSTANDARD LVDS_25 DIFF_TERM TRUE IBUF_LOW_PWR TRUE} [get_ports B0_LCLK_P]

#set_property PACKAGE_PIN Y5 [get_ports B0_LCLK_N]
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVDS_25 DIFF_TERM TRUE IBUF_LOW_PWR TRUE} [get_ports B0_AD_clk_P]
#set_property PACKAGE_PIN Y8 [get_ports B0_AD_clk_N]
#set_property PACKAGE_PIN AA12 [get_ports B0_ADC_CH_1_N]
set_property -dict {PACKAGE_PIN E4 IOSTANDARD LVDS_25 DIFF_TERM TRUE IBUF_LOW_PWR TRUE} [get_ports B0_ADC_CH_1_P]
#set_property PACKAGE_PIN AA11 [get_ports B0_ADC_CH_2_N]
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVDS_25 DIFF_TERM TRUE IBUF_LOW_PWR TRUE} [get_ports B0_ADC_CH_2_P]
set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVDS_25 DIFF_TERM TRUE IBUF_LOW_PWR TRUE} [get_ports B0_ADC_CH_3_P]
#set_property PACKAGE_PIN AA8 [get_ports B0_ADC_CH_3_N]
#set_property PACKAGE_PIN AB10 [get_ports B0_ADC_CH_4_N]
set_property -dict {PACKAGE_PIN F7 IOSTANDARD LVDS_25 DIFF_TERM TRUE IBUF_LOW_PWR TRUE} [get_ports B0_ADC_CH_4_P]
#set_property PACKAGE_PIN T4 [get_ports B0_ADC_CH_5_N]
set_property -dict {PACKAGE_PIN E8 IOSTANDARD LVDS_25 DIFF_TERM TRUE IBUF_LOW_PWR TRUE} [get_ports B0_ADC_CH_5_P]
set_property -dict {PACKAGE_PIN C8 IOSTANDARD LVDS_25 DIFF_TERM TRUE IBUF_LOW_PWR TRUE} [get_ports B0_ADC_CH_6_P]
#set_property PACKAGE_PIN AB6 [get_ports B0_ADC_CH_6_N]
#set_property PACKAGE_PIN AB5 [get_ports B0_ADC_CH_7_N]
set_property -dict {PACKAGE_PIN G8 IOSTANDARD LVDS_25 DIFF_TERM TRUE IBUF_LOW_PWR TRUE} [get_ports B0_ADC_CH_7_P]
#set_property PACKAGE_PIN Y4 [get_ports B0_ADC_CH_8_N]
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVDS_25 DIFF_TERM TRUE IBUF_LOW_PWR TRUE} [get_ports B0_ADC_CH_8_P]
#set_property PACKAGE_PIN AB2 [get_ports B0_ADC_CLK_N]
set_property -dict {PACKAGE_PIN F5 IOSTANDARD LVDS_25 DIFF_TERM TRUE IBUF_LOW_PWR TRUE} [get_ports B0_ADC_CLK_P]

####################
#BOARD 1 ADC readout
####################
#set_property -dict {PACKAGE_PIN Y15 IOSTANDARD LVDS_25} [get_ports B1_LCLK_N]
#set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVDS_25} [get_ports B1_LCLK_P]
#set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVDS_25} [get_ports B1_AD_clk_N]
#set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVDS_25} [get_ports B1_AD_clk_P]
#ADC_CLK inverted polarity on B1
#set_property -dict {PACKAGE_PIN AB11 IOSTANDARD LVDS_25} [get_ports B1_ADC_CLK_N]
#set_property -dict {PACKAGE_PIN AA11 IOSTANDARD LVDS_25} [get_ports B1_ADC_CLK_P]
#ADC_CH_8 inverted polarity on B1
#set_property -dict {PACKAGE_PIN AB12 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_8_N]
#set_property -dict {PACKAGE_PIN AA12 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_8_P]
#ADC_CH_7 inverted polarity on B1
#set_property -dict {PACKAGE_PIN Y13 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_7_N]
#set_property -dict {PACKAGE_PIN Y12 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_7_P]
#ADC_CH_6 inverted polarity on B1
#set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_6_N]
#set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_6_P]
#set_property -dict {PACKAGE_PIN AA17 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_5_N]
#set_property -dict {PACKAGE_PIN AA16 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_5_P]
#set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_4_N]
#set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_4_P]
#ADC_CH_3 inverted polarity on B1
#set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_3_N]
#set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_3_P]
#set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_2_N]
#set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_2_P]
#set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_1_N]
#set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVDS_25} [get_ports B1_ADC_CH_1_P]


#########################
#BOARD 0 specific signals
#########################
set_property -dict {PACKAGE_PIN R3 IOSTANDARD LVCMOS25} [get_ports B0_DAC_SEL[0]]
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS25} [get_ports B0_DAC_SEL[1]]
set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS25} [get_ports B0_ADC_nCS]

#########################
#BOARD 1 specific signals
#########################
#set_property -dict {PACKAGE_PIN AB17 IOSTANDARD LVCMOS25} [get_ports {B1_DAC_SEL[1]}]
#set_property -dict {PACKAGE_PIN AB18 IOSTANDARD LVCMOS25} [get_ports {B1_DAC_SEL[0]}]
#set_property -dict {PACKAGE_PIN AB19 IOSTANDARD LVCMOS25} [get_ports B1_ADC_nCS]

######################
#Boards common signals
######################
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS25} [get_ports TCal]
set_property -dict {PACKAGE_PIN A2 IOSTANDARD LVCMOS25} [get_ports nSHDN]
#DAC_SCL & DAC_SDA
set_property -dict {PACKAGE_PIN P3 IOSTANDARD LVCMOS25} [get_ports I2C_0_scl_io]
set_property -dict {PACKAGE_PIN P2 IOSTANDARD LVCMOS25} [get_ports I2C_0_sda_io]
#on TE0720 bank 33 voltage can be selected
set_property -dict {PACKAGE_PIN K4 IOSTANDARD LVCMOS25} [get_ports ADC_SCLK]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS25} [get_ports ADC_MOSI]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS25} [get_ports ADC_MISO]
#set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS25} [get_ports ADC_nrst] #This is linked with DRS4_nRST


set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVCMOS25} [get_ports {GAIN_CTRL[0]}]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS25} [get_ports {GAIN_CTRL[1]}]
set_property -dict {PACKAGE_PIN J7 IOSTANDARD LVCMOS25} [get_ports {MUX_CTRL[0]}]
set_property -dict {PACKAGE_PIN J6 IOSTANDARD LVCMOS25} [get_ports {MUX_CTRL[1]}]
set_property -dict {PACKAGE_PIN M7 IOSTANDARD LVCMOS25} [get_ports {TEST[0]}]
set_property -dict {PACKAGE_PIN M8 IOSTANDARD LVCMOS25} [get_ports {TEST[1]}]
#set_property PACKAGE_PIN G16 [get_ports DAC_SDO]
set_property -dict {PACKAGE_PIN AB16 IOSTANDARD LVCMOS25} [get_ports DAC_nCLR] 

#set_property PACKAGE_PIN AA17 [get_ports ADC_interleave]
#set_property PACKAGE_PIN AB17 [get_ports ADC_SYNC]


#####################
#Mother Board signals
#####################
#set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS25 PULLTYPE PULLDOWN} [get_ports Trigger_in]
#set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS25} [get_ports Trigger_out]
##set_property PACKAGE_PIN A17 [get_ports busy]
#set_property -dict {PACKAGE_PIN W11 IOSTANDARD LVCMOS25 PULLTYPE PULLDOWN} [get_ports VETO]
#set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS25} [get_ports CLK_in]
##set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS25} [get_ports UART0_rxd]
##set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS25} [get_ports UART0_txd]

#set_property -dict {PACKAGE_PIN J5  IOSTANDARD LVCMOS25 PULLTYPE PULLDOWN}  [get_ports scint_1]
#set_property -dict {PACKAGE_PIN K5 IOSTANDARD LVCMOS25 PULLTYPE PULLDOWN}  [get_ports scint_2]
# this pin burnt by mistake
#set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVCMOS25 PULLTYPE PULLDOWN}  [get_ports scint_2]

#set_property PACKAGE_PIN AA16 [get_ports A]
#set_property PACKAGE_PIN AB16 [get_ports B]
#set_property PACKAGE_PIN U7 [get_ports LED1]
#set_property PACKAGE_PIN U6 [get_ports M_nCS_3]

#set_property PACKAGE_PIN R7 [get_ports LED2]


######
#Elink
######
#set_property PACKAGE_PIN V5 [get_ports E-Link_RX_N]
#set_property PACKAGE_PIN V4 [get_ports E-Link_RX_P]
#set_property PACKAGE_PIN W6 [get_ports ELink_CLK_N]
#set_property PACKAGE_PIN W5 [get_ports ELink_CLK_P]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVDS_25} [get_ports E_Link_TX_N]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVDS_25} [get_ports E_Link_TX_P]

#####
#SFP+
#####
#set_property PACKAGE_PIN E16 [get_ports SFPA_Tx_Fault]
#set_property PACKAGE_PIN F16 [get_ports SFPA_Mod_ABS]
#set_property PACKAGE_PIN H20 [get_ports SFPA_Rx_LOS]
#set_property PACKAGE_PIN U12 [get_ports SFP_SCL]
#set_property PACKAGE_PIN U11 [get_ports SFP_SDA]
#set_property PACKAGE_PIN U10 [get_ports SFPB_Mod_ABS]
#set_property PACKAGE_PIN U9 [get_ports SFPB_Rx_LOS]
#set_property PACKAGE_PIN V10 [get_ports SFPB_Tx_Fault]
#set_property PACKAGE_PIN J18 [get_ports SFPA_TX_N]
#set_property PACKAGE_PIN K18 [get_ports SFPA_TX_P]
#set_property PACKAGE_PIN J16 [get_ports SFPB_TX_N]
#set_property PACKAGE_PIN J17 [get_ports SFPB_TX_P]
#set_property PACKAGE_PIN J15 [get_ports SFPA_RX_N]
#set_property PACKAGE_PIN K15 [get_ports SFPA_TX_P]
#set_property PACKAGE_PIN P20 [get_ports SFPB_TX_N]
#set_property PACKAGE_PIN P21 [get_ports SFPB_TX_P]

###############
#trigger inputs
###############
set_property -dict {PACKAGE_PIN P6 IOSTANDARD LVCMOS25} [get_ports B0_TRG[7]]
set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVCMOS25} [get_ports B0_TRG[6]]
set_property -dict {PACKAGE_PIN N4 IOSTANDARD LVCMOS25} [get_ports B0_TRG[5]]
set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVCMOS25} [get_ports B0_TRG[4]]
set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVCMOS25} [get_ports B0_TRG[3]]
set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS25} [get_ports B0_TRG[2]]
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS25} [get_ports B0_TRG[1]]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS25} [get_ports B0_TRG[0]]

#set_property -dict {PACKAGE_PIN R5 IOSTANDARD LVCMOS25} [get_ports B1_TRG_0]
##set_property PACKAGE_PIN T17 [get_ports B1_TRG[1]]
#set_property -dict {PACKAGE_PIN N1 IOSTANDARD LVCMOS25} [get_ports B1_TRG_2]
#set_property PACKAGE_PIN M22 [get_ports B1_TRG[3]]
#set_property PACKAGE_PIN R20 [get_ports B1_TRG[4]]
#set_property PACKAGE_PIN R21 [get_ports B1_TRG[5]]
#set_property PACKAGE_PIN R18 [get_ports B1_TRG[6]]
#set_property PACKAGE_PIN T18 [get_ports B1_TRG[7]]


############
#not used
#########
#set_property PACKAGE_PIN V15  [get_ports -]
#set_property PACKAGE_PIN  V19 [get_ports -]
#set_property PACKAGE_PIN L17 [get_ports -]
#set_property PACKAGE_PIN M17 [get_ports -]
#set_property PACKAGE_PIN N17 [get_ports -]
#set_property PACKAGE_PIN N18 [get_ports -]
#set_property PACKAGE_PIN L18 [get_ports -]
#set_property PACKAGE_PIN L19 [get_ports -]
#set_property PACKAGE_PIN P17 [get_ports -]
#set_property PACKAGE_PIN P18 [get_ports -]
#set_property PACKAGE_PIN L21 [get_ports -]
#set_property PACKAGE_PIN L22 [get_ports -]
#set_property PACKAGE_PIN M19 [get_ports -]
#set_property PACKAGE_PIN M20 [get_ports -]
#set_property PACKAGE_PIN M16  [get_ports -]
#set_property PACKAGE_PIN  P15 [get_ports -]

