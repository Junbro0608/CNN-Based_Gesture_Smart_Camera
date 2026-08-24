// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Aug 11 08:24:14 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project_19_Final_Project/260809_pcam_128x128_sujeong_real/hw.srcs/sources_1/bd/system/ip/system_jetson_controller_0_0/system_jetson_controller_0_0_sim_netlist.v
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
    result,
    done,
    jetson_i,
    jetson_o,
    person_led,
    jetson_led,
    cnn_enable,
    person_cnt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input result;
  input done;
  input jetson_i;
  output jetson_o;
  output person_led;
  output jetson_led;
  output cnn_enable;
  output [6:0]person_cnt;

  wire clk;
  wire cnn_enable;
  wire done;
  wire jetson_i;
  wire jetson_o;
  wire [6:0]person_cnt;
  wire resetn;
  wire result;

  assign jetson_led = jetson_i;
  assign person_led = result;
  system_jetson_controller_0_0_jetson_controller U0
       (.Q(person_cnt),
        .clk(clk),
        .cnn_enable(cnn_enable),
        .done(done),
        .jetson_i(jetson_i),
        .jetson_o(jetson_o),
        .resetn(resetn),
        .result(result));
endmodule

(* ORIG_REF_NAME = "jetson_controller" *) 
module system_jetson_controller_0_0_jetson_controller
   (cnn_enable,
    jetson_o,
    Q,
    clk,
    done,
    result,
    jetson_i,
    resetn);
  output cnn_enable;
  output jetson_o;
  output [6:0]Q;
  input clk;
  input done;
  input result;
  input jetson_i;
  input resetn;

  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire [6:0]Q;
  wire clk;
  wire cnn_enable;
  wire [6:0]count;
  wire \count[3]_i_2_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[6]_i_3_n_0 ;
  wire [1:0]current_state;
  wire done;
  wire jetson_i;
  wire jetson_o;
  wire p_0_in;
  wire [1:1]p_1_in;
  wire p_1_in_0;
  wire resetn;
  wire result;
  wire start_i_1_n_0;
  wire start_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00743330)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(p_0_in),
        .I1(current_state[1]),
        .I2(start_reg_n_0),
        .I3(current_state[0]),
        .I4(p_1_in_0),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(resetn),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(p_1_in_0),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    cnn_enable_INST_0
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(cnn_enable));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \count[0]_i_1 
       (.I0(\count[6]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[0]),
        .O(count[0]));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \count[1]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(\count[6]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(count[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h38C8)) 
    \count[2]_i_1 
       (.I0(\count[3]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h38C8C8C8)) 
    \count[3]_i_1 
       (.I0(\count[3]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(count[3]));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \count[3]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \count[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(\count[6]_i_3_n_0 ),
        .O(count[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \count[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(\count[6]_i_3_n_0 ),
        .O(count[5]));
  LUT3 #(
    .INIT(8'h4F)) 
    \count[6]_i_1 
       (.I0(result),
        .I1(done),
        .I2(resetn),
        .O(\count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \count[6]_i_2 
       (.I0(Q[6]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(\count[6]_i_3_n_0 ),
        .O(count[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \count[6]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .O(\count[6]_i_3_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(done),
        .D(count[0]),
        .Q(Q[0]),
        .R(\count[6]_i_1_n_0 ));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(done),
        .D(count[1]),
        .Q(Q[1]),
        .R(\count[6]_i_1_n_0 ));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(done),
        .D(count[2]),
        .Q(Q[2]),
        .R(\count[6]_i_1_n_0 ));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(done),
        .D(count[3]),
        .Q(Q[3]),
        .R(\count[6]_i_1_n_0 ));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(done),
        .D(count[4]),
        .Q(Q[4]),
        .R(\count[6]_i_1_n_0 ));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(done),
        .D(count[5]),
        .Q(Q[5]),
        .R(\count[6]_i_1_n_0 ));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(done),
        .D(count[6]),
        .Q(Q[6]),
        .R(\count[6]_i_1_n_0 ));
  FDRE \jetson_i_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(jetson_i),
        .Q(p_1_in),
        .R(\FSM_sequential_current_state[1]_i_1_n_0 ));
  FDRE \jetson_i_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(p_0_in),
        .R(\FSM_sequential_current_state[1]_i_1_n_0 ));
  FDRE \jetson_i_sync_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(p_1_in_0),
        .R(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    jetson_o_INST_0
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(jetson_o));
  LUT6 #(
    .INIT(64'h5755555503000000)) 
    start_i_1
       (.I0(jetson_o),
        .I1(\count[3]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(done),
        .I4(result),
        .I5(start_reg_n_0),
        .O(start_i_1_n_0));
  FDRE start_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_i_1_n_0),
        .Q(start_reg_n_0),
        .R(\FSM_sequential_current_state[1]_i_1_n_0 ));
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
