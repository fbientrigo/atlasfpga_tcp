# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADC_N_bits" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_ctrl_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_ctrl_DATA_WIDTH" -parent ${Page_0}

  ipgui::add_param $IPINST -name "FRAME_PATTERN"

}

proc update_PARAM_VALUE.ADC_N_bits { PARAM_VALUE.ADC_N_bits } {
	# Procedure called to update ADC_N_bits when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_N_bits { PARAM_VALUE.ADC_N_bits } {
	# Procedure called to validate ADC_N_bits
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ctrl_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ctrl_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ctrl_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ctrl_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ctrl_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ctrl_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ctrl_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_ctrl_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_ctrl_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ctrl_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_ctrl_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_ctrl_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.FRAME_PATTERN { PARAM_VALUE.FRAME_PATTERN } {
	# Procedure called to update FRAME_PATTERN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FRAME_PATTERN { PARAM_VALUE.FRAME_PATTERN } {
	# Procedure called to validate FRAME_PATTERN
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_ctrl_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ctrl_DATA_WIDTH PARAM_VALUE.C_S00_AXI_ctrl_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ctrl_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ctrl_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ctrl_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ctrl_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ctrl_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ctrl_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ctrl_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.ADC_N_bits { MODELPARAM_VALUE.ADC_N_bits PARAM_VALUE.ADC_N_bits } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_N_bits}] ${MODELPARAM_VALUE.ADC_N_bits}
}

proc update_MODELPARAM_VALUE.FRAME_PATTERN { MODELPARAM_VALUE.FRAME_PATTERN PARAM_VALUE.FRAME_PATTERN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FRAME_PATTERN}] ${MODELPARAM_VALUE.FRAME_PATTERN}
}

