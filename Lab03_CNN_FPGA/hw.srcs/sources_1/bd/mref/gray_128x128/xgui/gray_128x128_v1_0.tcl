# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "GH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GW" -parent ${Page_0}


}

proc update_PARAM_VALUE.GH { PARAM_VALUE.GH } {
	# Procedure called to update GH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GH { PARAM_VALUE.GH } {
	# Procedure called to validate GH
	return true
}

proc update_PARAM_VALUE.GW { PARAM_VALUE.GW } {
	# Procedure called to update GW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GW { PARAM_VALUE.GW } {
	# Procedure called to validate GW
	return true
}


proc update_MODELPARAM_VALUE.GW { MODELPARAM_VALUE.GW PARAM_VALUE.GW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GW}] ${MODELPARAM_VALUE.GW}
}

proc update_MODELPARAM_VALUE.GH { MODELPARAM_VALUE.GH PARAM_VALUE.GH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GH}] ${MODELPARAM_VALUE.GH}
}

