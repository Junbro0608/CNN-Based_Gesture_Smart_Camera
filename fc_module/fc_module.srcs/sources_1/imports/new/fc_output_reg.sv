`timescale 1ns / 1ps

`include "fc_defines.vh"

// CNN Fully-Connected 레이어의 bias 덧셈, requantization 및 최종 판정 모듈
//
// FC 레이어마다 quantization scale과 최종 판정 기준이 달라질 수 있으므로
// shift_amount와 threshold는 합성 시 고정되는 parameter가 아니라 런타임
// 입력 포트로 받는다. 두 입력과 finish_en은 valid가 1인 클럭 에지에서
// acc_arr 및 bias_arr와 함께 유효해야 한다.
//
// 이 모듈은 현재 FC 레이어의 순서를 저장하거나 판단하지 않는다.
// finish_en만 사용하여 중간 레이어의 requantization과 마지막 레이어의
// threshold 비교 중 하나를 선택하며, PE 출력들을 다시 합산하지 않는다.
module fc_output_reg #(
    parameter int PE_NUM     = `FC_PE_NUM,
    parameter int DATA_WIDTH = `FC_DATA_WIDTH,
    parameter int ACC_WIDTH  = `FC_ACC_WIDTH,
    parameter int BIAS_WIDTH = `FC_BIAS_WIDTH,
    parameter int SUM_WIDTH  = `FC_OUT_WIDTH
) (
    input  logic                             clk,
    input  logic                             rst_n,
    input  logic                             valid,
    input  logic                             finish_en,
    input  logic        [               4:0] shift_amount,
    input  logic signed [     SUM_WIDTH-1:0] threshold,
    input  logic signed [     ACC_WIDTH-1:0] acc_arr     [0:PE_NUM-1],
    input  logic signed [    BIAS_WIDTH-1:0] bias_arr    [0:PE_NUM-1],
    output logic signed [    DATA_WIDTH-1:0] output_val  [0:PE_NUM-1],
    output logic                             result,
    output logic                             out_valid
);

    // 중간 레이어에서 Data Buffer로 내보내는 signed activation 비트폭
    localparam int OUTPUT_WIDTH = DATA_WIDTH;

    // OUTPUT_WIDTH signed 값이 표현할 수 있는 최댓값과 최솟값
    localparam logic signed [OUTPUT_WIDTH-1:0] OUTPUT_MAX = {
        1'b0, {(OUTPUT_WIDTH - 1) {1'b1}}
    };
    localparam logic signed [OUTPUT_WIDTH-1:0] OUTPUT_MIN = {
        1'b1, {(OUTPUT_WIDTH - 1) {1'b0}}
    };

    // saturation 비교 시 signed 폭이 일치하도록 SUM_WIDTH까지 부호 확장한 경계값
    localparam logic signed [SUM_WIDTH-1:0] SATURATION_MAX = {
        {(SUM_WIDTH - OUTPUT_WIDTH) {1'b0}}, OUTPUT_MAX
    };
    localparam logic signed [SUM_WIDTH-1:0] SATURATION_MIN = {
        {(SUM_WIDTH - OUTPUT_WIDTH) {1'b1}}, OUTPUT_MIN
    };

    // 조합논리에서 계산한 다음 출력값
    logic signed [OUTPUT_WIDTH-1:0] output_val_next[0:PE_NUM-1];
    logic                           result_next;

    // 마지막 레이어에서는 PE[0]의 합만 사용한다.
    logic signed [   SUM_WIDTH-1:0] finish_sum;

    integer                         comb_idx;
    integer                         seq_idx;

    // 누산값과 bias를 각각 SUM_WIDTH로 부호 확장한 뒤 더한다.
    function automatic logic signed [SUM_WIDTH-1:0] add_bias(
        input logic signed [ACC_WIDTH-1:0] acc_value,
        input logic signed [BIAS_WIDTH-1:0] bias_value);
        logic signed [SUM_WIDTH-1:0] acc_extended;
        logic signed [SUM_WIDTH-1:0] bias_extended;
        begin
            acc_extended = {
                {(SUM_WIDTH - ACC_WIDTH) {acc_value[ACC_WIDTH-1]}}, acc_value
            };
            bias_extended = {
                {(SUM_WIDTH - BIAS_WIDTH) {bias_value[BIAS_WIDTH-1]}},
                bias_value
            };
            add_bias = acc_extended + bias_extended;
        end
    endfunction

    // 산술 우측 시프트 후 OUTPUT_WIDTH의 signed 범위로 saturation한다.
    function automatic logic signed [OUTPUT_WIDTH-1:0] requantize_saturate(
        input logic signed [SUM_WIDTH-1:0] sum_value, input logic [4:0] shamt);
        logic signed [SUM_WIDTH-1:0] shifted_value;
        begin
            shifted_value = sum_value >>> shamt;

            if (shifted_value > SATURATION_MAX) begin
                requantize_saturate = OUTPUT_MAX;
            end else if (shifted_value < SATURATION_MIN) begin
                requantize_saturate = OUTPUT_MIN;
            end else begin
                requantize_saturate = shifted_value[OUTPUT_WIDTH-1:0];
            end
        end
    endfunction

    // finish_en에 따라 중간 레이어 출력 또는 마지막 레이어 판정을 계산한다.
    always_comb begin
        // 모든 조합논리 출력에 기본값을 주어 래치 추론을 방지한다.
        for (comb_idx = 0; comb_idx < PE_NUM; comb_idx = comb_idx + 1) begin
            output_val_next[comb_idx] = '0;
        end
        result_next = 1'b0;
        finish_sum  = '0;

        if (finish_en) begin
            // 마지막 레이어는 PE[0]만 유효하며 나머지 PE는 requantize하지 않는다.
            finish_sum  = add_bias(acc_arr[0], bias_arr[0]);
            result_next = (finish_sum >= threshold) ? 1'b1 : 1'b0;
        end else begin
            // 중간 레이어는 각 PE를 독립적으로 bias 덧셈 및 requantize한다.
            for (comb_idx = 0; comb_idx < PE_NUM; comb_idx = comb_idx + 1) begin
                output_val_next[comb_idx] = requantize_saturate(
                    add_bias(
                        acc_arr[comb_idx], bias_arr[comb_idx]
                    ),
                    shift_amount
                );
            end
        end
    end

    // valid 클럭에서 결과를 저장하고 out_valid를 1클럭 assert한다.
    always_ff @(posedge clk) begin
        // 동기 active-low 리셋
        if (!rst_n) begin
            for (seq_idx = 0; seq_idx < PE_NUM; seq_idx = seq_idx + 1) begin
                output_val[seq_idx] <= '0;
            end
            result    <= 1'b0;
            out_valid <= 1'b0;
        end else begin
            // valid가 1클럭 pulse라는 입력 계약에 따라 out_valid도 1클럭 pulse가 된다.
            out_valid <= 1'b0;

            if (valid) begin
                for (seq_idx = 0; seq_idx < PE_NUM; seq_idx = seq_idx + 1) begin
                    output_val[seq_idx] <= output_val_next[seq_idx];
                end
                result    <= result_next;
                out_valid <= 1'b1;
            end
            // valid=0이면 output_val과 result는 직전 값을 유지한다.
        end
    end

endmodule
