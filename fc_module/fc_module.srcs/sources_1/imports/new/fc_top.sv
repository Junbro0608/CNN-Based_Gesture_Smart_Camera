`timescale 1ns / 1ps

`include "fc_defines.vh"

// CNN 가속기 Fully-Connected 레이어 통합 모듈
//
// 이 모듈은 fc_mac_unit PE 배열, fc_output_reg 및 fc_controller를
// 인스턴스화하고 연결하는 순수 구조 계층이며 별도의 연산/FSM을 만들지 않는다.
//
// TODO: fc_output_reg의 finish_en은 이 최상위 입력에 직결되어 있으므로
// CNN_top은 start부터 done까지 finish_en 값을 변경하지 않고 유지해야 한다.
//
// Data memory 하나를 사용하는 경우에도 입력과 출력의 주소 구간은 분리한다.
// 예를 들어 data_src_base_addr=0, data_dst_base_addr=128로 실행한 뒤 다음
// 레이어에서 두 base를 교환하는 ping-pong 구성이 가능하다.
// controller는 read와 write를 동시에 요청하지 않으므로 단일 포트 RAM이면
// 상위에서 data_we ? data_waddr : data_raddr로 주소를 선택할 수 있다.
//
// DATA_WIDTH와 WEIGHT_WIDTH는 controller, output register 및 모든 PE에
// 동일하게 전달되어 top parameter override 시에도 폭이 일관된다.
module fc_top #(
    parameter int PE_NUM            = `FC_PE_NUM,
    parameter int DATA_WIDTH        = `FC_DATA_WIDTH,
    parameter int WEIGHT_WIDTH      = `FC_WEIGHT_WIDTH,
    parameter int ACC_WIDTH         = `FC_ACC_WIDTH,
    parameter int BIAS_WIDTH        = `FC_BIAS_WIDTH,
    parameter int SUM_WIDTH         = `FC_OUT_WIDTH,
    parameter int DATA_ADDR_WIDTH   = 9,
    parameter int WEIGHT_ADDR_WIDTH = 17,
    parameter int BIAS_ADDR_WIDTH   = 9
) (
    input  logic                                      clk,
    input  logic                                      rst_n,
    input  logic                                      start,
    input  logic                                      finish_en,
    input  logic [8:0]                                input_length,
    input  logic [7:0]                                output_length,
    input  logic [DATA_ADDR_WIDTH-1:0]                data_src_base_addr,
    input  logic [DATA_ADDR_WIDTH-1:0]                data_dst_base_addr,
    input  logic [WEIGHT_ADDR_WIDTH-1:0]              weight_base_addr,
    input  logic [BIAS_ADDR_WIDTH-1:0]                bias_base_addr,
    input  logic [4:0]                                shift_amount,
    input  logic signed [SUM_WIDTH-1:0]               threshold,
    output logic                                      done,
    output logic                                      result,

    // Data Buffer 외부 인터페이스
    output logic [DATA_ADDR_WIDTH-1:0]                data_raddr,
    output logic [DATA_ADDR_WIDTH-1:0]                data_waddr,
    output logic [DATA_WIDTH-1:0]                     data_wdata,
    output logic                                      data_we,
    input  logic [DATA_WIDTH-1:0]                     data_rdata,

    // weight_rom은 시작 BYTE 주소 weight_raddr에 대해 signed weight 8byte
    // window를 동시에 반환한다. weight_rdata[k]는 주소 weight_raddr+k 및
    // PE[k]에 대응하며 lane 순서를 바꾸지 않는다.
    // 64-bit word-addressed ROM을 사용하면 상위에서 주소 변환/row padding이 필요하다.
    output logic [WEIGHT_ADDR_WIDTH-1:0]              weight_raddr,
    input  logic signed [WEIGHT_WIDTH-1:0]            weight_rdata [0:PE_NUM-1],

    // bias_rom은 PE별 packed signed bias를 unpacked 배열로 반환한다.
    output logic [BIAS_ADDR_WIDTH-1:0]                bias_raddr,
    input  logic signed [BIAS_WIDTH-1:0]              bias_rdata [0:PE_NUM-1]
);

    // fc_controller가 8개 PE에 공통으로 전달하는 제어 및 activation
    logic                                      pe_en;
    logic                                      pe_acc_clear;
    logic [DATA_WIDTH-1:0]                     pe_in_data;

    // 각 unpacked array 원소는 PE 한 개의 signed weight를 나타낸다.
    logic signed [WEIGHT_WIDTH-1:0]            pe_weight_arr [0:PE_NUM-1];

    // 각 fc_mac_unit의 acc_out을 PE 순서대로 모으는 unpacked signed 배열
    logic signed [ACC_WIDTH-1:0]               pe_acc_out_arr [0:PE_NUM-1];

    // fc_controller에서 fc_output_reg로 전달하는 출력 캡처 제어와 bias
    logic                                      outreg_valid;
    logic signed [BIAS_WIDTH-1:0]              outreg_bias_arr [0:PE_NUM-1];

    // fc_output_reg에서 fc_controller로 되돌아가는 requantized 출력과 valid
    logic signed [DATA_WIDTH-1:0]              outreg_output_val [0:PE_NUM-1];
    logic                                      outreg_out_valid;

    // PE_NUM개의 output-stationary MAC PE를 동일한 제어 신호로 병렬 구동한다.
    generate
        genvar pe_idx;
        for (pe_idx = 0; pe_idx < PE_NUM; pe_idx = pe_idx + 1) begin : gen_pe
            fc_mac_unit #(
                .DATA_WIDTH   (DATA_WIDTH),
                .WEIGHT_WIDTH (WEIGHT_WIDTH),
                .ACC_WIDTH    (ACC_WIDTH)
            ) u_pe (
                .clk       (clk),
                .rst_n     (rst_n),
                .en        (pe_en),
                .acc_clear (pe_acc_clear),
                .in_data   (pe_in_data),
                .weight    (pe_weight_arr[pe_idx]),
                .acc_out   (pe_acc_out_arr[pe_idx])
            );
        end
    endgenerate

    // 완성된 PE 누산값에 bias를 더하고 중간 출력 또는 최종 result를 만든다.
    // shift_amount와 threshold는 레이어별 런타임 값이므로 controller를 거치지 않는다.
    fc_output_reg #(
        .PE_NUM     (PE_NUM),
        .DATA_WIDTH (DATA_WIDTH),
        .ACC_WIDTH  (ACC_WIDTH),
        .BIAS_WIDTH (BIAS_WIDTH),
        .SUM_WIDTH  (SUM_WIDTH)
    ) u_output_reg (
        .clk          (clk),
        .rst_n        (rst_n),
        .valid        (outreg_valid),
        .finish_en    (finish_en),
        .shift_amount (shift_amount),
        .threshold    (threshold),
        .acc_arr      (pe_acc_out_arr),
        .bias_arr     (outreg_bias_arr),
        .output_val   (outreg_output_val),
        .result       (result),
        .out_valid    (outreg_out_valid)
    );

    // 메모리 주소, PE 누산 타이밍, output capture 및 순차 write를 지휘한다.
    fc_controller #(
        .PE_NUM            (PE_NUM),
        .DATA_WIDTH        (DATA_WIDTH),
        .WEIGHT_WIDTH      (WEIGHT_WIDTH),
        .ACC_WIDTH         (ACC_WIDTH),
        .BIAS_WIDTH        (BIAS_WIDTH),
        .DATA_ADDR_WIDTH   (DATA_ADDR_WIDTH),
        .WEIGHT_ADDR_WIDTH (WEIGHT_ADDR_WIDTH),
        .BIAS_ADDR_WIDTH   (BIAS_ADDR_WIDTH)
    ) u_controller (
        .clk               (clk),
        .rst_n             (rst_n),
        .start             (start),
        .finish_en         (finish_en),
        .input_length      (input_length),
        .output_length     (output_length),
        .data_src_base_addr(data_src_base_addr),
        .data_dst_base_addr(data_dst_base_addr),
        .weight_base_addr  (weight_base_addr),
        .bias_base_addr    (bias_base_addr),
        .done              (done),
        .data_raddr        (data_raddr),
        .data_waddr        (data_waddr),
        .data_wdata        (data_wdata),
        .data_we           (data_we),
        .data_rdata        (data_rdata),
        .weight_raddr      (weight_raddr),
        .weight_rdata      (weight_rdata),
        .bias_raddr        (bias_raddr),
        .bias_rdata        (bias_rdata),
        .pe_en             (pe_en),
        .pe_acc_clear      (pe_acc_clear),
        .pe_in_data        (pe_in_data),
        .pe_weight         (pe_weight_arr),
        .pe_acc_arr        (pe_acc_out_arr),
        .outreg_valid      (outreg_valid),
        .outreg_bias_arr   (outreg_bias_arr),
        .outreg_output_val (outreg_output_val),
        .outreg_result     (result),
        .outreg_out_valid  (outreg_out_valid)
    );

endmodule
