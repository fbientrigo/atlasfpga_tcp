# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_S00_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S00_AXI_DATA_WIDTH}
  set C_S00_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_S00_AXI_ADDR_WIDTH}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}

  ipgui::add_param $IPINST -name "SPI_baud_rate"
  ipgui::add_param $IPINST -name "input_clock_freq"
  ipgui::add_param $IPINST -name "SPI_word_lenght"

}

proc update_PARAM_VALUE.SPI_baud_rate { PARAM_VALUE.SPI_baud_rate } {
	# Procedure called to update SPI_baud_rate when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SPI_baud_rate { PARAM_VALUE.SPI_baud_rate } {
	# Procedure called to validate SPI_baud_rate
	return true
}

proc update_PARAM_VALUE.SPI_word_lenght { PARAM_VALUE.SPI_word_lenght } {
	# Procedure called to update SPI_word_lenght when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SPI_word_lenght { PARAM_VALUE.SPI_word_lenght } {
	# Procedure called to validate SPI_word_lenght
	return true
}

proc update_PARAM_VALUE.input_clock_freq { PARAM_VALUE.input_clock_freq } {
	# Procedure called to update input_clock_freq when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.input_clock_freq { PARAM_VALUE.input_clock_freq } {
	# Procedure called to validate input_clock_freq
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.SPI_baud_rate { MODELPARAM_VALUE.SPI_baud_rate PARAM_VALUE.SPI_baud_rate } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SPI_baud_rate}] ${MODELPARAM_VALUE.SPI_baud_rate}
}

proc update_MODELPARAM_VALUE.input_clock_freq { MODELPARAM_VALUE.input_clock_freq PARAM_VALUE.input_clock_freq } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.input_clock_freq}] ${MODELPARAM_VALUE.input_clock_freq}
}

proc update_MODELPARAM_VALUE.SPI_word_lenght { MODELPARAM_VALUE.SPI_word_lenght PARAM_VALUE.SPI_word_lenght } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SPI_word_lenght}] ${MODELPARAM_VALUE.SPI_word_lenght}
}

