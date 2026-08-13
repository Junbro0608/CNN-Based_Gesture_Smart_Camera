// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Aug 11 08:24:14 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project_19_Final_Project/260809_pcam_128x128_sujeong_real/hw.srcs/sources_1/bd/system/ip/system_spi_frame_tx_0_0/system_spi_frame_tx_0_0_sim_netlist.v
// Design      : system_spi_frame_tx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_spi_frame_tx_0_0,spi_frame_tx,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "spi_frame_tx,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_spi_frame_tx_0_0
   (clk,
    rst_n,
    sclk,
    mosi,
    miso,
    cs_n,
    spi_rd_addr,
    spi_rd_data,
    spi_active,
    probability_data,
    result,
    person_cnt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input sclk;
  input mosi;
  output miso;
  input cs_n;
  output [13:0]spi_rd_addr;
  input [7:0]spi_rd_data;
  output spi_active;
  input [7:0]probability_data;
  input result;
  input [6:0]person_cnt;

  wire clk;
  wire cs_n;
  wire miso;
  wire [6:0]person_cnt;
  wire [7:0]probability_data;
  wire result;
  wire rst_n;
  wire sclk;
  wire spi_active;
  wire [13:0]spi_rd_addr;
  wire [7:0]spi_rd_data;

  system_spi_frame_tx_0_0_spi_frame_tx U0
       (.Q(spi_rd_addr),
        .clk(clk),
        .cs_n(cs_n),
        .miso(miso),
        .person_cnt(person_cnt),
        .probability_data(probability_data),
        .result(result),
        .rst_n(rst_n),
        .sclk(sclk),
        .spi_active(spi_active),
        .spi_rd_data(spi_rd_data));
endmodule

(* ORIG_REF_NAME = "spi_frame_tx" *) 
module system_spi_frame_tx_0_0_spi_frame_tx
   (Q,
    spi_active,
    miso,
    rst_n,
    spi_rd_data,
    clk,
    cs_n,
    result,
    person_cnt,
    probability_data,
    sclk);
  output [13:0]Q;
  output spi_active;
  output miso;
  input rst_n;
  input [7:0]spi_rd_data;
  input clk;
  input cs_n;
  input result;
  input [6:0]person_cnt;
  input [7:0]probability_data;
  input sclk;

  wire [13:0]Q;
  wire [13:0]byte_cnt;
  wire byte_cnt0_carry__0_n_0;
  wire byte_cnt0_carry__0_n_1;
  wire byte_cnt0_carry__0_n_2;
  wire byte_cnt0_carry__0_n_3;
  wire byte_cnt0_carry__1_n_0;
  wire byte_cnt0_carry__1_n_1;
  wire byte_cnt0_carry__1_n_2;
  wire byte_cnt0_carry__1_n_3;
  wire byte_cnt0_carry_n_0;
  wire byte_cnt0_carry_n_1;
  wire byte_cnt0_carry_n_2;
  wire byte_cnt0_carry_n_3;
  wire clk;
  wire [7:0]cnn_byte;
  wire cs_n;
  wire [13:1]data0;
  wire miso;
  wire [0:0]p_0_in;
  wire [6:0]person_cnt;
  wire [7:0]prob_lat;
  wire [7:0]probability_data;
  wire result;
  wire rst_n;
  wire sclk;
  wire spi_active;
  wire [7:0]spi_rd_data;
  wire tx_taken;
  wire u_spi_n_1;
  wire u_spi_n_4;
  wire u_spi_n_5;
  wire [3:0]NLW_byte_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_byte_cnt0_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 byte_cnt0_carry
       (.CI(1'b0),
        .CO({byte_cnt0_carry_n_0,byte_cnt0_carry_n_1,byte_cnt0_carry_n_2,byte_cnt0_carry_n_3}),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(Q[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 byte_cnt0_carry__0
       (.CI(byte_cnt0_carry_n_0),
        .CO({byte_cnt0_carry__0_n_0,byte_cnt0_carry__0_n_1,byte_cnt0_carry__0_n_2,byte_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(Q[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 byte_cnt0_carry__1
       (.CI(byte_cnt0_carry__0_n_0),
        .CO({byte_cnt0_carry__1_n_0,byte_cnt0_carry__1_n_1,byte_cnt0_carry__1_n_2,byte_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(Q[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 byte_cnt0_carry__2
       (.CI(byte_cnt0_carry__1_n_0),
        .CO(NLW_byte_cnt0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_byte_cnt0_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,Q[13]}));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \byte_cnt[0]_i_1 
       (.I0(Q[0]),
        .O(byte_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[10]_i_1 
       (.I0(data0[10]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[11]_i_1 
       (.I0(data0[11]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[12]_i_1 
       (.I0(data0[12]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[13]_i_2 
       (.I0(data0[13]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[1]_i_1 
       (.I0(data0[1]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[2]_i_1 
       (.I0(data0[2]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[3]_i_1 
       (.I0(data0[3]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[4]_i_1 
       (.I0(data0[4]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[5]_i_1 
       (.I0(data0[5]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[6]_i_1 
       (.I0(data0[6]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[7]_i_1 
       (.I0(data0[7]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[8]_i_1 
       (.I0(data0[8]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \byte_cnt[9]_i_1 
       (.I0(data0[9]),
        .I1(u_spi_n_4),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(byte_cnt[9]));
  FDRE \byte_cnt_reg[0] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[0]),
        .Q(Q[0]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[10] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[10]),
        .Q(Q[10]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[11] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[11]),
        .Q(Q[11]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[12] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[12]),
        .Q(Q[12]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[13] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[13]),
        .Q(Q[13]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[1] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[1]),
        .Q(Q[1]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[2] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[2]),
        .Q(Q[2]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[3] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[3]),
        .Q(Q[3]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[4] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[4]),
        .Q(Q[4]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[5] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[5]),
        .Q(Q[5]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[6] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[6]),
        .Q(Q[6]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[7] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[7]),
        .Q(Q[7]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[8] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[8]),
        .Q(Q[8]),
        .R(u_spi_n_5));
  FDRE \byte_cnt_reg[9] 
       (.C(clk),
        .CE(tx_taken),
        .D(byte_cnt[9]),
        .Q(Q[9]),
        .R(u_spi_n_5));
  FDRE \pcnt_lat_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(person_cnt[0]),
        .Q(cnn_byte[1]),
        .R(u_spi_n_1));
  FDRE \pcnt_lat_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(person_cnt[1]),
        .Q(cnn_byte[2]),
        .R(u_spi_n_1));
  FDRE \pcnt_lat_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(person_cnt[2]),
        .Q(cnn_byte[3]),
        .R(u_spi_n_1));
  FDRE \pcnt_lat_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(person_cnt[3]),
        .Q(cnn_byte[4]),
        .R(u_spi_n_1));
  FDRE \pcnt_lat_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(person_cnt[4]),
        .Q(cnn_byte[5]),
        .R(u_spi_n_1));
  FDRE \pcnt_lat_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(person_cnt[5]),
        .Q(cnn_byte[6]),
        .R(u_spi_n_1));
  FDRE \pcnt_lat_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(person_cnt[6]),
        .Q(cnn_byte[7]),
        .R(u_spi_n_1));
  FDRE \prob_lat_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(probability_data[0]),
        .Q(prob_lat[0]),
        .R(u_spi_n_1));
  FDRE \prob_lat_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(probability_data[1]),
        .Q(prob_lat[1]),
        .R(u_spi_n_1));
  FDRE \prob_lat_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(probability_data[2]),
        .Q(prob_lat[2]),
        .R(u_spi_n_1));
  FDRE \prob_lat_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(probability_data[3]),
        .Q(prob_lat[3]),
        .R(u_spi_n_1));
  FDRE \prob_lat_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(probability_data[4]),
        .Q(prob_lat[4]),
        .R(u_spi_n_1));
  FDRE \prob_lat_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(probability_data[5]),
        .Q(prob_lat[5]),
        .R(u_spi_n_1));
  FDRE \prob_lat_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(probability_data[6]),
        .Q(prob_lat[6]),
        .R(u_spi_n_1));
  FDRE \prob_lat_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(probability_data[7]),
        .Q(prob_lat[7]),
        .R(u_spi_n_1));
  FDRE result_lat_reg
       (.C(clk),
        .CE(p_0_in),
        .D(result),
        .Q(cnn_byte[0]),
        .R(u_spi_n_1));
  system_spi_frame_tx_0_0_spi_slave u_spi
       (.Q(p_0_in),
        .SR(u_spi_n_1),
        .\byte_cnt_reg[11] (u_spi_n_4),
        .clk(clk),
        .cnn_byte(cnn_byte),
        .cs_n(cs_n),
        .\cs_n_sync_reg[1]_0 (u_spi_n_5),
        .miso(miso),
        .miso_r_i_5_0(prob_lat),
        .rst_n(rst_n),
        .sclk(sclk),
        .spi_active(spi_active),
        .spi_rd_data(spi_rd_data),
        .\tx_shift_reg_reg[7]_0 (Q),
        .tx_taken_reg_0(tx_taken));
endmodule

(* ORIG_REF_NAME = "spi_slave" *) 
module system_spi_frame_tx_0_0_spi_slave
   (miso,
    SR,
    Q,
    spi_active,
    \byte_cnt_reg[11] ,
    \cs_n_sync_reg[1]_0 ,
    tx_taken_reg_0,
    clk,
    rst_n,
    spi_rd_data,
    sclk,
    \tx_shift_reg_reg[7]_0 ,
    cnn_byte,
    miso_r_i_5_0,
    cs_n);
  output miso;
  output [0:0]SR;
  output [0:0]Q;
  output spi_active;
  output \byte_cnt_reg[11] ;
  output [0:0]\cs_n_sync_reg[1]_0 ;
  output tx_taken_reg_0;
  input clk;
  input rst_n;
  input [7:0]spi_rd_data;
  input sclk;
  input [13:0]\tx_shift_reg_reg[7]_0 ;
  input [7:0]cnn_byte;
  input [7:0]miso_r_i_5_0;
  input cs_n;

  wire [0:0]Q;
  wire [0:0]SR;
  wire [2:0]bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire \bit_cnt[2]_i_3_n_0 ;
  wire \byte_cnt_reg[11] ;
  wire clk;
  wire [7:0]cnn_byte;
  wire cs_n;
  wire cs_n_fall;
  wire [0:0]\cs_n_sync_reg[1]_0 ;
  wire \cs_n_sync_reg_n_0_[0] ;
  wire miso;
  wire miso_r_i_10_n_0;
  wire miso_r_i_2_n_0;
  wire miso_r_i_3_n_0;
  wire miso_r_i_4_n_0;
  wire [7:0]miso_r_i_5_0;
  wire miso_r_i_5_n_0;
  wire miso_r_i_6_n_0;
  wire miso_r_i_7_n_0;
  wire miso_r_i_8_n_0;
  wire miso_r_i_9_n_0;
  wire [1:1]p_0_in;
  wire [0:0]p_0_in_0;
  wire p_2_in;
  wire rst_n;
  wire sclk;
  wire \sclk_sync[0]_i_1_n_0 ;
  wire \sclk_sync[1]_i_1_n_0 ;
  wire \sclk_sync[2]_i_1_n_0 ;
  wire \sclk_sync_reg_n_0_[0] ;
  wire \sclk_sync_reg_n_0_[2] ;
  wire spi_active;
  wire [7:0]spi_rd_data;
  wire step;
  wire step_i_1_n_0;
  wire \tx_shift_reg[1]_i_1_n_0 ;
  wire \tx_shift_reg[1]_i_2_n_0 ;
  wire \tx_shift_reg[2]_i_1_n_0 ;
  wire \tx_shift_reg[2]_i_2_n_0 ;
  wire \tx_shift_reg[2]_i_3_n_0 ;
  wire \tx_shift_reg[3]_i_1_n_0 ;
  wire \tx_shift_reg[3]_i_2_n_0 ;
  wire \tx_shift_reg[3]_i_3_n_0 ;
  wire \tx_shift_reg[4]_i_1_n_0 ;
  wire \tx_shift_reg[4]_i_2_n_0 ;
  wire \tx_shift_reg[4]_i_3_n_0 ;
  wire \tx_shift_reg[5]_i_1_n_0 ;
  wire \tx_shift_reg[5]_i_2_n_0 ;
  wire \tx_shift_reg[5]_i_3_n_0 ;
  wire \tx_shift_reg[6]_i_1_n_0 ;
  wire \tx_shift_reg[6]_i_2_n_0 ;
  wire \tx_shift_reg[6]_i_3_n_0 ;
  wire \tx_shift_reg[7]_i_1_n_0 ;
  wire \tx_shift_reg[7]_i_2_n_0 ;
  wire \tx_shift_reg[7]_i_3_n_0 ;
  wire \tx_shift_reg[7]_i_4_n_0 ;
  wire \tx_shift_reg[7]_i_5_n_0 ;
  wire \tx_shift_reg[7]_i_6_n_0 ;
  wire \tx_shift_reg[7]_i_7_n_0 ;
  wire \tx_shift_reg[7]_i_8_n_0 ;
  wire [13:0]\tx_shift_reg_reg[7]_0 ;
  wire \tx_shift_reg_reg_n_0_[1] ;
  wire \tx_shift_reg_reg_n_0_[2] ;
  wire \tx_shift_reg_reg_n_0_[3] ;
  wire \tx_shift_reg_reg_n_0_[4] ;
  wire \tx_shift_reg_reg_n_0_[5] ;
  wire \tx_shift_reg_reg_n_0_[6] ;
  wire tx_taken_i_1_n_0;
  wire tx_taken_i_2_n_0;
  wire tx_taken_reg_0;

  LUT6 #(
    .INIT(64'h00000000A99AAAAA)) 
    \bit_cnt[0]_i_1 
       (.I0(bit_cnt[0]),
        .I1(Q),
        .I2(\sclk_sync_reg_n_0_[2] ),
        .I3(p_0_in_0),
        .I4(step),
        .I5(\bit_cnt[2]_i_3_n_0 ),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt[1]),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(bit_cnt[0]),
        .I3(\bit_cnt[2]_i_3_n_0 ),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt[2]),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[0]),
        .I4(\bit_cnt[2]_i_3_n_0 ),
        .O(\bit_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \bit_cnt[2]_i_2 
       (.I0(Q),
        .I1(\sclk_sync_reg_n_0_[2] ),
        .I2(p_0_in_0),
        .I3(step),
        .O(\bit_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555555DDFDFDDD)) 
    \bit_cnt[2]_i_3 
       (.I0(rst_n),
        .I1(p_0_in),
        .I2(tx_taken_i_2_n_0),
        .I3(p_0_in_0),
        .I4(\sclk_sync_reg_n_0_[2] ),
        .I5(Q),
        .O(\bit_cnt[2]_i_3_n_0 ));
  FDRE \bit_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(bit_cnt[0]),
        .R(1'b0));
  FDRE \bit_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(bit_cnt[1]),
        .R(1'b0));
  FDRE \bit_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(bit_cnt[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \byte_cnt[13]_i_1 
       (.I0(Q),
        .I1(rst_n),
        .O(\cs_n_sync_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \byte_cnt[13]_i_3 
       (.I0(miso_r_i_10_n_0),
        .I1(\tx_shift_reg_reg[7]_0 [11]),
        .I2(\tx_shift_reg_reg[7]_0 [10]),
        .I3(\tx_shift_reg_reg[7]_0 [8]),
        .I4(\tx_shift_reg_reg[7]_0 [13]),
        .I5(miso_r_i_8_n_0),
        .O(\byte_cnt_reg[11] ));
  FDSE \cs_n_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cs_n),
        .Q(\cs_n_sync_reg_n_0_[0] ),
        .S(SR));
  FDSE \cs_n_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cs_n_sync_reg_n_0_[0] ),
        .Q(Q),
        .S(SR));
  FDSE \cs_n_sync_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(Q),
        .Q(p_0_in),
        .S(SR));
  LUT1 #(
    .INIT(2'h1)) 
    miso_r_i_1
       (.I0(rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    miso_r_i_10
       (.I0(\tx_shift_reg_reg[7]_0 [6]),
        .I1(\tx_shift_reg_reg[7]_0 [3]),
        .I2(\tx_shift_reg_reg[7]_0 [9]),
        .I3(\tx_shift_reg_reg[7]_0 [7]),
        .O(miso_r_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    miso_r_i_11
       (.I0(p_0_in),
        .I1(Q),
        .O(cs_n_fall));
  LUT6 #(
    .INIT(64'hFF45FFFFFF450000)) 
    miso_r_i_2
       (.I0(p_0_in),
        .I1(miso_r_i_3_n_0),
        .I2(miso_r_i_4_n_0),
        .I3(miso_r_i_5_n_0),
        .I4(miso_r_i_6_n_0),
        .I5(miso),
        .O(miso_r_i_2_n_0));
  LUT6 #(
    .INIT(64'hBFFFFFFFAAAAAAAA)) 
    miso_r_i_3
       (.I0(Q),
        .I1(step),
        .I2(bit_cnt[2]),
        .I3(bit_cnt[0]),
        .I4(bit_cnt[1]),
        .I5(p_2_in),
        .O(miso_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h0008FFFBFFFFFFFF)) 
    miso_r_i_4
       (.I0(miso_r_i_7_n_0),
        .I1(miso_r_i_8_n_0),
        .I2(miso_r_i_9_n_0),
        .I3(miso_r_i_10_n_0),
        .I4(spi_rd_data[7]),
        .I5(tx_taken_i_2_n_0),
        .O(miso_r_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA2A00000020)) 
    miso_r_i_5
       (.I0(cs_n_fall),
        .I1(miso_r_i_7_n_0),
        .I2(miso_r_i_8_n_0),
        .I3(miso_r_i_9_n_0),
        .I4(miso_r_i_10_n_0),
        .I5(spi_rd_data[7]),
        .O(miso_r_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FFFF28)) 
    miso_r_i_6
       (.I0(step),
        .I1(p_0_in_0),
        .I2(\sclk_sync_reg_n_0_[2] ),
        .I3(p_0_in),
        .I4(Q),
        .O(miso_r_i_6_n_0));
  LUT4 #(
    .INIT(16'h4B44)) 
    miso_r_i_7
       (.I0(cnn_byte[7]),
        .I1(\tx_shift_reg_reg[7]_0 [1]),
        .I2(miso_r_i_5_0[7]),
        .I3(\tx_shift_reg_reg[7]_0 [0]),
        .O(miso_r_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    miso_r_i_8
       (.I0(\tx_shift_reg_reg[7]_0 [5]),
        .I1(\tx_shift_reg_reg[7]_0 [4]),
        .I2(\tx_shift_reg_reg[7]_0 [2]),
        .I3(\tx_shift_reg_reg[7]_0 [12]),
        .O(miso_r_i_8_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    miso_r_i_9
       (.I0(\tx_shift_reg_reg[7]_0 [11]),
        .I1(\tx_shift_reg_reg[7]_0 [10]),
        .I2(\tx_shift_reg_reg[7]_0 [8]),
        .I3(\tx_shift_reg_reg[7]_0 [13]),
        .O(miso_r_i_9_n_0));
  FDSE miso_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(miso_r_i_2_n_0),
        .Q(miso),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sclk_sync[0]_i_1 
       (.I0(rst_n),
        .I1(sclk),
        .O(\sclk_sync[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sclk_sync[1]_i_1 
       (.I0(rst_n),
        .I1(\sclk_sync_reg_n_0_[0] ),
        .O(\sclk_sync[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sclk_sync[2]_i_1 
       (.I0(rst_n),
        .I1(p_0_in_0),
        .O(\sclk_sync[2]_i_1_n_0 ));
  FDRE \sclk_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sclk_sync[0]_i_1_n_0 ),
        .Q(\sclk_sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sclk_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sclk_sync[1]_i_1_n_0 ),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE \sclk_sync_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sclk_sync[2]_i_1_n_0 ),
        .Q(\sclk_sync_reg_n_0_[2] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    spi_active_INST_0
       (.I0(Q),
        .O(spi_active));
  LUT6 #(
    .INIT(64'hAA00AA0000009600)) 
    step_i_1
       (.I0(step),
        .I1(p_0_in_0),
        .I2(\sclk_sync_reg_n_0_[2] ),
        .I3(rst_n),
        .I4(p_0_in),
        .I5(Q),
        .O(step_i_1_n_0));
  FDRE step_reg
       (.C(clk),
        .CE(1'b1),
        .D(step_i_1_n_0),
        .Q(step),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h30200020)) 
    \tx_shift_reg[1]_i_1 
       (.I0(\tx_shift_reg[1]_i_2_n_0 ),
        .I1(\tx_shift_reg[7]_i_3_n_0 ),
        .I2(rst_n),
        .I3(\byte_cnt_reg[11] ),
        .I4(spi_rd_data[0]),
        .O(\tx_shift_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD2DD)) 
    \tx_shift_reg[1]_i_2 
       (.I0(\tx_shift_reg_reg[7]_0 [1]),
        .I1(cnn_byte[0]),
        .I2(miso_r_i_5_0[0]),
        .I3(\tx_shift_reg_reg[7]_0 [0]),
        .O(\tx_shift_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABAFFBA)) 
    \tx_shift_reg[2]_i_1 
       (.I0(\tx_shift_reg[7]_i_3_n_0 ),
        .I1(\byte_cnt_reg[11] ),
        .I2(\tx_shift_reg[2]_i_2_n_0 ),
        .I3(spi_rd_data[1]),
        .I4(\tx_shift_reg[7]_i_5_n_0 ),
        .I5(\tx_shift_reg[2]_i_3_n_0 ),
        .O(\tx_shift_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \tx_shift_reg[2]_i_2 
       (.I0(\tx_shift_reg_reg[7]_0 [1]),
        .I1(cnn_byte[1]),
        .I2(miso_r_i_5_0[1]),
        .I3(\tx_shift_reg_reg[7]_0 [0]),
        .O(\tx_shift_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \tx_shift_reg[2]_i_3 
       (.I0(\tx_shift_reg_reg_n_0_[1] ),
        .I1(\tx_shift_reg[7]_i_3_n_0 ),
        .I2(rst_n),
        .O(\tx_shift_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABAFFBA)) 
    \tx_shift_reg[3]_i_1 
       (.I0(\tx_shift_reg[7]_i_3_n_0 ),
        .I1(\byte_cnt_reg[11] ),
        .I2(\tx_shift_reg[3]_i_2_n_0 ),
        .I3(spi_rd_data[2]),
        .I4(\tx_shift_reg[7]_i_5_n_0 ),
        .I5(\tx_shift_reg[3]_i_3_n_0 ),
        .O(\tx_shift_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD2DD)) 
    \tx_shift_reg[3]_i_2 
       (.I0(\tx_shift_reg_reg[7]_0 [1]),
        .I1(cnn_byte[2]),
        .I2(miso_r_i_5_0[2]),
        .I3(\tx_shift_reg_reg[7]_0 [0]),
        .O(\tx_shift_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \tx_shift_reg[3]_i_3 
       (.I0(\tx_shift_reg_reg_n_0_[2] ),
        .I1(\tx_shift_reg[7]_i_3_n_0 ),
        .I2(rst_n),
        .O(\tx_shift_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABAFFBA)) 
    \tx_shift_reg[4]_i_1 
       (.I0(\tx_shift_reg[7]_i_3_n_0 ),
        .I1(\byte_cnt_reg[11] ),
        .I2(\tx_shift_reg[4]_i_2_n_0 ),
        .I3(spi_rd_data[3]),
        .I4(\tx_shift_reg[7]_i_5_n_0 ),
        .I5(\tx_shift_reg[4]_i_3_n_0 ),
        .O(\tx_shift_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \tx_shift_reg[4]_i_2 
       (.I0(\tx_shift_reg_reg[7]_0 [1]),
        .I1(cnn_byte[3]),
        .I2(miso_r_i_5_0[3]),
        .I3(\tx_shift_reg_reg[7]_0 [0]),
        .O(\tx_shift_reg[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \tx_shift_reg[4]_i_3 
       (.I0(\tx_shift_reg_reg_n_0_[3] ),
        .I1(\tx_shift_reg[7]_i_3_n_0 ),
        .I2(rst_n),
        .O(\tx_shift_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABAFFBA)) 
    \tx_shift_reg[5]_i_1 
       (.I0(\tx_shift_reg[7]_i_3_n_0 ),
        .I1(\byte_cnt_reg[11] ),
        .I2(\tx_shift_reg[5]_i_2_n_0 ),
        .I3(spi_rd_data[4]),
        .I4(\tx_shift_reg[7]_i_5_n_0 ),
        .I5(\tx_shift_reg[5]_i_3_n_0 ),
        .O(\tx_shift_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \tx_shift_reg[5]_i_2 
       (.I0(\tx_shift_reg_reg[7]_0 [1]),
        .I1(cnn_byte[4]),
        .I2(miso_r_i_5_0[4]),
        .I3(\tx_shift_reg_reg[7]_0 [0]),
        .O(\tx_shift_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \tx_shift_reg[5]_i_3 
       (.I0(\tx_shift_reg_reg_n_0_[4] ),
        .I1(\tx_shift_reg[7]_i_3_n_0 ),
        .I2(rst_n),
        .O(\tx_shift_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABAFFBA)) 
    \tx_shift_reg[6]_i_1 
       (.I0(\tx_shift_reg[7]_i_3_n_0 ),
        .I1(\byte_cnt_reg[11] ),
        .I2(\tx_shift_reg[6]_i_2_n_0 ),
        .I3(spi_rd_data[5]),
        .I4(\tx_shift_reg[7]_i_5_n_0 ),
        .I5(\tx_shift_reg[6]_i_3_n_0 ),
        .O(\tx_shift_reg[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD2DD)) 
    \tx_shift_reg[6]_i_2 
       (.I0(\tx_shift_reg_reg[7]_0 [1]),
        .I1(cnn_byte[5]),
        .I2(miso_r_i_5_0[5]),
        .I3(\tx_shift_reg_reg[7]_0 [0]),
        .O(\tx_shift_reg[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \tx_shift_reg[6]_i_3 
       (.I0(\tx_shift_reg_reg_n_0_[5] ),
        .I1(\tx_shift_reg[7]_i_3_n_0 ),
        .I2(rst_n),
        .O(\tx_shift_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55555555DDFDFDDD)) 
    \tx_shift_reg[7]_i_1 
       (.I0(rst_n),
        .I1(p_0_in),
        .I2(step),
        .I3(p_0_in_0),
        .I4(\sclk_sync_reg_n_0_[2] ),
        .I5(Q),
        .O(\tx_shift_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABAFFBA)) 
    \tx_shift_reg[7]_i_2 
       (.I0(\tx_shift_reg[7]_i_3_n_0 ),
        .I1(\byte_cnt_reg[11] ),
        .I2(\tx_shift_reg[7]_i_4_n_0 ),
        .I3(spi_rd_data[6]),
        .I4(\tx_shift_reg[7]_i_5_n_0 ),
        .I5(\tx_shift_reg[7]_i_6_n_0 ),
        .O(\tx_shift_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0BBBBBBBBBBBBBBB)) 
    \tx_shift_reg[7]_i_3 
       (.I0(Q),
        .I1(p_0_in),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[0]),
        .I4(bit_cnt[2]),
        .I5(step),
        .O(\tx_shift_reg[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \tx_shift_reg[7]_i_4 
       (.I0(\tx_shift_reg_reg[7]_0 [1]),
        .I1(cnn_byte[6]),
        .I2(miso_r_i_5_0[6]),
        .I3(\tx_shift_reg_reg[7]_0 [0]),
        .O(\tx_shift_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \tx_shift_reg[7]_i_5 
       (.I0(\tx_shift_reg[7]_i_7_n_0 ),
        .I1(\tx_shift_reg_reg[7]_0 [11]),
        .I2(\tx_shift_reg_reg[7]_0 [10]),
        .I3(\tx_shift_reg_reg[7]_0 [12]),
        .I4(\tx_shift_reg_reg[7]_0 [13]),
        .I5(\tx_shift_reg[7]_i_8_n_0 ),
        .O(\tx_shift_reg[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \tx_shift_reg[7]_i_6 
       (.I0(\tx_shift_reg_reg_n_0_[6] ),
        .I1(\tx_shift_reg[7]_i_3_n_0 ),
        .I2(rst_n),
        .O(\tx_shift_reg[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tx_shift_reg[7]_i_7 
       (.I0(\tx_shift_reg_reg[7]_0 [9]),
        .I1(\tx_shift_reg_reg[7]_0 [8]),
        .I2(\tx_shift_reg_reg[7]_0 [7]),
        .I3(\tx_shift_reg_reg[7]_0 [6]),
        .O(\tx_shift_reg[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tx_shift_reg[7]_i_8 
       (.I0(\tx_shift_reg_reg[7]_0 [5]),
        .I1(\tx_shift_reg_reg[7]_0 [4]),
        .I2(\tx_shift_reg_reg[7]_0 [3]),
        .I3(\tx_shift_reg_reg[7]_0 [2]),
        .O(\tx_shift_reg[7]_i_8_n_0 ));
  FDRE \tx_shift_reg_reg[1] 
       (.C(clk),
        .CE(\tx_shift_reg[7]_i_1_n_0 ),
        .D(\tx_shift_reg[1]_i_1_n_0 ),
        .Q(\tx_shift_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_shift_reg_reg[2] 
       (.C(clk),
        .CE(\tx_shift_reg[7]_i_1_n_0 ),
        .D(\tx_shift_reg[2]_i_1_n_0 ),
        .Q(\tx_shift_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_shift_reg_reg[3] 
       (.C(clk),
        .CE(\tx_shift_reg[7]_i_1_n_0 ),
        .D(\tx_shift_reg[3]_i_1_n_0 ),
        .Q(\tx_shift_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_shift_reg_reg[4] 
       (.C(clk),
        .CE(\tx_shift_reg[7]_i_1_n_0 ),
        .D(\tx_shift_reg[4]_i_1_n_0 ),
        .Q(\tx_shift_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tx_shift_reg_reg[5] 
       (.C(clk),
        .CE(\tx_shift_reg[7]_i_1_n_0 ),
        .D(\tx_shift_reg[5]_i_1_n_0 ),
        .Q(\tx_shift_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tx_shift_reg_reg[6] 
       (.C(clk),
        .CE(\tx_shift_reg[7]_i_1_n_0 ),
        .D(\tx_shift_reg[6]_i_1_n_0 ),
        .Q(\tx_shift_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tx_shift_reg_reg[7] 
       (.C(clk),
        .CE(\tx_shift_reg[7]_i_1_n_0 ),
        .D(\tx_shift_reg[7]_i_2_n_0 ),
        .Q(p_2_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FF0028)) 
    tx_taken_i_1
       (.I0(tx_taken_i_2_n_0),
        .I1(p_0_in_0),
        .I2(\sclk_sync_reg_n_0_[2] ),
        .I3(Q),
        .I4(p_0_in),
        .O(tx_taken_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    tx_taken_i_2
       (.I0(step),
        .I1(bit_cnt[2]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .O(tx_taken_i_2_n_0));
  FDRE tx_taken_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_taken_i_1_n_0),
        .Q(tx_taken_reg_0),
        .R(SR));
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
