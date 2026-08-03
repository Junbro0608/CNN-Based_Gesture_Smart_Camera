// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Aug  2 20:02:02 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project_19_Final_Project/260731_pcam_128x128_grayscale/hw.srcs/sources_1/bd/system/ip/system_jetson_controller_0_0/system_jetson_controller_0_0_sim_netlist.v
// Design      : system_jetson_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_jetson_controller_0_0,jetson_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "jetson_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_jetson_controller_0_0
   (clk,
    resetn,
    sw,
    led,
    gpio_i,
    gpio_o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input sw;
  output led;
  input gpio_i;
  output gpio_o;

  wire clk;
  wire gpio_i;
  wire gpio_o;
  wire led;
  wire resetn;
  wire sw;

  system_jetson_controller_0_0_jetson_controller U0
       (.clk(clk),
        .gpio_i(gpio_i),
        .gpio_o(gpio_o),
        .led(led),
        .resetn(resetn),
        .sw(sw));
endmodule

(* ORIG_REF_NAME = "jetson_controller" *) 
module system_jetson_controller_0_0_jetson_controller
   (gpio_o,
    led,
    sw,
    clk,
    gpio_i,
    resetn);
  output gpio_o;
  output led;
  input sw;
  input clk;
  input gpio_i;
  input resetn;

  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire clk;
  wire [1:0]current_state;
  wire gpio_i;
  wire gpio_o;
  wire led;
  wire p_0_in;
  wire [1:1]p_1_in;
  wire p_1_in_0;
  wire resetn;
  wire sw;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h90B2D4D4)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(sw),
        .I3(p_0_in),
        .I4(p_1_in_0),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(resetn),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE6A2)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(sw),
        .I3(p_1_in_0),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "TRIG:01,RUN:10,IDLE:00,DONE:11" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]),
        .R(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "TRIG:01,RUN:10,IDLE:00,DONE:11" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .Q(current_state[1]),
        .R(\FSM_sequential_current_state[1]_i_1_n_0 ));
  FDRE \gpio_i_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(gpio_i),
        .Q(p_1_in),
        .R(\FSM_sequential_current_state[1]_i_1_n_0 ));
  FDRE \gpio_i_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(p_0_in),
        .R(\FSM_sequential_current_state[1]_i_1_n_0 ));
  FDRE \gpio_i_sync_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(p_1_in_0),
        .R(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    gpio_o_INST_0
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(gpio_o));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    led_INST_0
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(led));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
