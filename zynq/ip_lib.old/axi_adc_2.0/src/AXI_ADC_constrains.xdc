#create_clock -period 10.000 -name Lclk -waveform {0.000 5.000} [get_ports {i_Lclk_n i_Lclk_p}]
#create_generated_clock -name <generated_clock_name> \
#                       -source <master_clock_source_pin_or_port> \
#                       -multiply_by <mult_factor> \
#                       -divide_by <div_factor> \
#                       <pin_or_port>

#set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_1_P]
#set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_1_N]
##set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_2_N]
##set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_2_P]
#set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_3_P]
#set_property -dict {PACKAGE_PIN J21 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_3_N]
##set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_4_N]
##set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_4_P]
#set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_5_N]
#set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_5_P]
##set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_6_P]
##set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_6_N]
#set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_7_P]
#set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_7_N]
##set_property -dict {PACKAGE_PIN G16 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_8_N]
##set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVDS_25} [get_ports B0_ADC_CH_8_P]
##set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVDS_25} [get_ports B0_ADC_CLK_P]
##set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVDS_25} [get_ports B0_ADC_CLK_N]
#set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVDS_25} [get_ports B0_AD_clk_P]
#set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVDS_25} [get_ports B0_AD_clk_N]
#set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVDS_25} [get_ports B0_LCLK_P]
#set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVDS_25} [get_ports B0_LCLK_N]

#set_property LOC BUFR_X0Y6 [get_cells -hier -filter {NAME =~ *Inst_ADC_readout_12bit/bufr_ad_n }]
#set_property LOC BUFR_X0Y5 [get_cells -hier -filter {NAME =~ *Inst_ADC_readout_12bit/bufr_ad_p }]
#set_property LOC ILOGIC_X0Y53 [get_cells -hier -filter {NAME =~ *Inst_ADC_readout_12bit/iserdes0_n }]
#set_property LOC ILOGIC_X0Y54 [get_cells -hier -filter {NAME =~ *Inst_ADC_readout_12bit/iserdes0_p }]
#set_property LOC ILOGIC_X0Y78 [get_cells -hier -filter {NAME =~ *Inst_ADC_readout_12bit/iserdes2_n }]
#set_property LOC ILOGIC_X0Y77 [get_cells -hier -filter {NAME =~ *Inst_ADC_readout_12bit/iserdes2_p }]
#set_property LOC ILOGIC_X0Y66 [get_cells -hier -filter {NAME =~ *Inst_ADC_readout_12bit/iserdes4_n }]
#set_property LOC ILOGIC_X0Y65 [get_cells -hier -filter {NAME =~ *Inst_ADC_readout_12bit/iserdes4_p }]
#set_property LOC ILOGIC_X0Y97 [get_cells -hier -filter {NAME =~ *Inst_ADC_readout_12bit/iserdes6_n }]
#set_property LOC ILOGIC_X0Y98 [get_cells -hier -filter {NAME =~ *Inst_ADC_readout_12bit/iserdes6_p }]