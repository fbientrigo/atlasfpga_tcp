# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "signal_size" -parent ${Page_0}


}

proc update_PARAM_VALUE.signal_size { PARAM_VALUE.signal_size } {
	# Procedure called to update signal_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.signal_size { PARAM_VALUE.signal_size } {
	# Procedure called to validate signal_size
	return true
}


proc update_MODELPARAM_VALUE.signal_size { MODELPARAM_VALUE.signal_size PARAM_VALUE.signal_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.signal_size}] ${MODELPARAM_VALUE.signal_size}
}

