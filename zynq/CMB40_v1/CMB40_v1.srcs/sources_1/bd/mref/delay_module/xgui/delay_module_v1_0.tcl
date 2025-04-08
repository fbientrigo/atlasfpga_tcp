# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Max_lut_number" -parent ${Page_0}


}

proc update_PARAM_VALUE.Max_lut_number { PARAM_VALUE.Max_lut_number } {
	# Procedure called to update Max_lut_number when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Max_lut_number { PARAM_VALUE.Max_lut_number } {
	# Procedure called to validate Max_lut_number
	return true
}


proc update_MODELPARAM_VALUE.Max_lut_number { MODELPARAM_VALUE.Max_lut_number PARAM_VALUE.Max_lut_number } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Max_lut_number}] ${MODELPARAM_VALUE.Max_lut_number}
}

