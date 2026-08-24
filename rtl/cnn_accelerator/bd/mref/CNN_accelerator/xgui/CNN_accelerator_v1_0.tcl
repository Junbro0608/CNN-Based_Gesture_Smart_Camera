# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DATA_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IMG_ADDR_WIDH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IMG_DATA_WIDH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_LAYER_WORDS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WT_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WT_DEPTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.DATA_ADDR_WIDTH { PARAM_VALUE.DATA_ADDR_WIDTH } {
	# Procedure called to update DATA_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_ADDR_WIDTH { PARAM_VALUE.DATA_ADDR_WIDTH } {
	# Procedure called to validate DATA_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.DATA_DATA_WIDTH { PARAM_VALUE.DATA_DATA_WIDTH } {
	# Procedure called to update DATA_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_DATA_WIDTH { PARAM_VALUE.DATA_DATA_WIDTH } {
	# Procedure called to validate DATA_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.IMG_ADDR_WIDH { PARAM_VALUE.IMG_ADDR_WIDH } {
	# Procedure called to update IMG_ADDR_WIDH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IMG_ADDR_WIDH { PARAM_VALUE.IMG_ADDR_WIDH } {
	# Procedure called to validate IMG_ADDR_WIDH
	return true
}

proc update_PARAM_VALUE.IMG_DATA_WIDH { PARAM_VALUE.IMG_DATA_WIDH } {
	# Procedure called to update IMG_DATA_WIDH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IMG_DATA_WIDH { PARAM_VALUE.IMG_DATA_WIDH } {
	# Procedure called to validate IMG_DATA_WIDH
	return true
}

proc update_PARAM_VALUE.MAX_LAYER_WORDS { PARAM_VALUE.MAX_LAYER_WORDS } {
	# Procedure called to update MAX_LAYER_WORDS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_LAYER_WORDS { PARAM_VALUE.MAX_LAYER_WORDS } {
	# Procedure called to validate MAX_LAYER_WORDS
	return true
}

proc update_PARAM_VALUE.WT_DATA_WIDTH { PARAM_VALUE.WT_DATA_WIDTH } {
	# Procedure called to update WT_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WT_DATA_WIDTH { PARAM_VALUE.WT_DATA_WIDTH } {
	# Procedure called to validate WT_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.WT_DEPTH { PARAM_VALUE.WT_DEPTH } {
	# Procedure called to update WT_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WT_DEPTH { PARAM_VALUE.WT_DEPTH } {
	# Procedure called to validate WT_DEPTH
	return true
}


proc update_MODELPARAM_VALUE.WT_DEPTH { MODELPARAM_VALUE.WT_DEPTH PARAM_VALUE.WT_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WT_DEPTH}] ${MODELPARAM_VALUE.WT_DEPTH}
}

proc update_MODELPARAM_VALUE.MAX_LAYER_WORDS { MODELPARAM_VALUE.MAX_LAYER_WORDS PARAM_VALUE.MAX_LAYER_WORDS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_LAYER_WORDS}] ${MODELPARAM_VALUE.MAX_LAYER_WORDS}
}

proc update_MODELPARAM_VALUE.WT_DATA_WIDTH { MODELPARAM_VALUE.WT_DATA_WIDTH PARAM_VALUE.WT_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WT_DATA_WIDTH}] ${MODELPARAM_VALUE.WT_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.DATA_ADDR_WIDTH { MODELPARAM_VALUE.DATA_ADDR_WIDTH PARAM_VALUE.DATA_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_ADDR_WIDTH}] ${MODELPARAM_VALUE.DATA_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.DATA_DATA_WIDTH { MODELPARAM_VALUE.DATA_DATA_WIDTH PARAM_VALUE.DATA_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.IMG_ADDR_WIDH { MODELPARAM_VALUE.IMG_ADDR_WIDH PARAM_VALUE.IMG_ADDR_WIDH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IMG_ADDR_WIDH}] ${MODELPARAM_VALUE.IMG_ADDR_WIDH}
}

proc update_MODELPARAM_VALUE.IMG_DATA_WIDH { MODELPARAM_VALUE.IMG_DATA_WIDH PARAM_VALUE.IMG_DATA_WIDH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IMG_DATA_WIDH}] ${MODELPARAM_VALUE.IMG_DATA_WIDH}
}

