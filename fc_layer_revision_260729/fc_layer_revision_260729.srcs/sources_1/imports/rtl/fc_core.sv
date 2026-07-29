`timescale 1ns / 1ps

module fc_core #(
    parameter WT_ADDR_WIDTH     = 10 * 128,
    parameter WT_DATA_WIDTH     = 64,
    parameter DATA_ADDR_WIDTH   = 126 * 126 * 16,
    parameter DATA_DATA_WIDTH   = 8,
    parameter MAX_INPUT_LENGTH  = 128,
    parameter MAX_OUTPUT_LENGTH = 128,
    parameter ACC_WIDTH         = 32
) (
    input logic clk,
    input logic rst_n,
    input logic start,
    input logic finish_en,
    input logic [$clog2(MAX_INPUT_LENGTH)-1:0] input_length,
    input logic [$clog2(MAX_OUTPUT_LENGTH)-1:0] output_length,

    output logic Done,
    output logic result,

    output logic [$clog2(WT_ADDR_WIDTH)-1:0] core_weight_read_offset,
    input logic [WT_DATA_WIDTH-1:0] core_weight_read_data,

    output logic [$clog2(DATA_ADDR_WIDTH)-1:0] core_data_read_offset,
    input logic [DATA_DATA_WIDTH-1:0] core_data_read_data,

    output logic core_data_write_en,
    output logic [$clog2(DATA_ADDR_WIDTH)-1:0] core_data_write_offset,
    output logic [DATA_DATA_WIDTH-1:0] core_data_write_data
);

    localparam INPUT_INDEX_WIDTH = $clog2(MAX_INPUT_LENGTH);
    localparam OUTPUT_INDEX_WIDTH = $clog2(MAX_OUTPUT_LENGTH);
    localparam WT_ADDR_BITS = $clog2(WT_ADDR_WIDTH);
    localparam DATA_ADDR_BITS = $clog2(DATA_ADDR_WIDTH);

    // Final FC의 확정 threshold는 signed accumulator domain의 0이다.
    localparam signed [ACC_WIDTH-1:0]
        INTERNAL_THRESHOLD_ACC = {ACC_WIDTH{1'b0}};

    logic               start_accept;
    logic               controller_busy;
    logic               pe_acc_clear;
    logic               output_bias_add_en;
    logic        [ 1:0] output_bias_word_index;
    logic               pe_mac_enable;
    logic               pe_array_mac_valid;
    logic        [ 7:0] lane_valid;
    logic               output_capture_en;
    logic        [ 2:0] output_read_lane_index;
    logic               quant_input_valid;
    logic               quant_result_valid;
    logic               result_capture_en;
    logic signed [ 7:0] activation_s8;

    logic signed [31:0] accumulator_0_s32;
    logic signed [31:0] accumulator_1_s32;
    logic signed [31:0] accumulator_2_s32;
    logic signed [31:0] accumulator_3_s32;
    logic signed [31:0] accumulator_4_s32;
    logic signed [31:0] accumulator_5_s32;
    logic signed [31:0] accumulator_6_s32;
    logic signed [31:0] accumulator_7_s32;

    logic signed [31:0] buffered_accumulator_0_s32;
    logic signed [31:0] buffered_accumulator_1_s32;
    logic signed [31:0] buffered_accumulator_2_s32;
    logic signed [31:0] buffered_accumulator_3_s32;
    logic signed [31:0] buffered_accumulator_4_s32;
    logic signed [31:0] buffered_accumulator_5_s32;
    logic signed [31:0] buffered_accumulator_6_s32;
    logic signed [31:0] buffered_accumulator_7_s32;
    logic signed [31:0] selected_accumulator_s32;

    logic        [ 7:0] quantized_u8;

    // S_MAC cycle의 조합 주소에 대한 비동기 operand를 다음 posedge에서 소비한다.
    assign pe_array_mac_valid = pe_mac_enable;

    // 외부 memory의 raw 8-bit data를 PE datapath 경계에서 signed int8로 해석한다.
    assign activation_s8 = $signed(core_data_read_data[7:0]);

    // 현재 datapath는 WT=64-bit, DATA=8-bit, accumulator=32-bit를 요구한다.
    // 다른 parameter 폭으로 임의 slice, padding 또는 재해석하지 않는다.
    assign core_data_write_data = quantized_u8;

    // 기본 Weight depth 1280은 최대 128x128 구성의 2112 words보다 작다.
    // 외부 통합 전 실제 Buffer depth로 override하거나 팀 사양을 확정해야 한다.

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            result <= 1'b0;
        end else if (start_accept) begin
            // 새 연산을 수락하면 이전 최종 결과를 지운다.
            result <= 1'b0;
        end else if (result_capture_en) begin
            // MAC capture 후 Bias까지 반영된 PE0 buffer를 signed 0과 비교한다.
            result <= ($signed(
                buffered_accumulator_0_s32
            ) >= $signed(
                INTERNAL_THRESHOLD_ACC
            ));
        end
    end

    fc_controller #(
        .MAX_INPUT_LENGTH (MAX_INPUT_LENGTH),
        .MAX_OUTPUT_LENGTH(MAX_OUTPUT_LENGTH),
        .WT_ADDR_WIDTH    (WT_ADDR_WIDTH),
        .DATA_ADDR_WIDTH  (DATA_ADDR_WIDTH)
    ) u_fc_controller (
        .clk                    (clk),
        .rst_n                  (rst_n),
        .start                  (start),
        .input_length           (input_length),
        .output_length          (output_length),
        .finish_en              (finish_en),
        .quant_result_valid     (quant_result_valid),
        .start_accept           (start_accept),
        .busy                   (controller_busy),
        .Done                   (Done),
        .core_weight_read_offset(core_weight_read_offset),
        .core_data_read_offset  (core_data_read_offset),
        .core_data_write_en     (core_data_write_en),
        .core_data_write_offset (core_data_write_offset),
        .pe_acc_clear           (pe_acc_clear),
        .output_bias_add_en     (output_bias_add_en),
        .output_bias_word_index (output_bias_word_index),
        .pe_mac_enable          (pe_mac_enable),
        .lane_valid             (lane_valid),
        .output_capture_en      (output_capture_en),
        .output_read_lane_index (output_read_lane_index),
        .quant_input_valid      (quant_input_valid),
        .result_capture_en      (result_capture_en)
    );

    fc_pe_array u_fc_pe_array (
        .clk              (clk),
        .rst_n            (rst_n),
        .activation_u8    (activation_s8),
        .bias_load        (pe_acc_clear),
        .mac_valid        (pe_array_mac_valid),
        .weight_word      (core_weight_read_data),
        .bias_0_s32       (32'sd0),
        .bias_1_s32       (32'sd0),
        .bias_2_s32       (32'sd0),
        .bias_3_s32       (32'sd0),
        .bias_4_s32       (32'sd0),
        .bias_5_s32       (32'sd0),
        .bias_6_s32       (32'sd0),
        .bias_7_s32       (32'sd0),
        .lane_valid       (lane_valid),
        .accumulator_0_s32(accumulator_0_s32),
        .accumulator_1_s32(accumulator_1_s32),
        .accumulator_2_s32(accumulator_2_s32),
        .accumulator_3_s32(accumulator_3_s32),
        .accumulator_4_s32(accumulator_4_s32),
        .accumulator_5_s32(accumulator_5_s32),
        .accumulator_6_s32(accumulator_6_s32),
        .accumulator_7_s32(accumulator_7_s32)
    );

    fc_output_buffer u_fc_output_buffer (
        .clk                       (clk),
        .rst_n                     (rst_n),
        .capture_en                (output_capture_en),
        .bias_add_en               (output_bias_add_en),
        .bias_word_index           (output_bias_word_index),
        .bias_word                 (core_weight_read_data),
        .lane_valid                (lane_valid),
        .read_lane_index           (output_read_lane_index),
        .accumulator_0_s32         (accumulator_0_s32),
        .accumulator_1_s32         (accumulator_1_s32),
        .accumulator_2_s32         (accumulator_2_s32),
        .accumulator_3_s32         (accumulator_3_s32),
        .accumulator_4_s32         (accumulator_4_s32),
        .accumulator_5_s32         (accumulator_5_s32),
        .accumulator_6_s32         (accumulator_6_s32),
        .accumulator_7_s32         (accumulator_7_s32),
        .buffered_accumulator_0_s32(buffered_accumulator_0_s32),
        .buffered_accumulator_1_s32(buffered_accumulator_1_s32),
        .buffered_accumulator_2_s32(buffered_accumulator_2_s32),
        .buffered_accumulator_3_s32(buffered_accumulator_3_s32),
        .buffered_accumulator_4_s32(buffered_accumulator_4_s32),
        .buffered_accumulator_5_s32(buffered_accumulator_5_s32),
        .buffered_accumulator_6_s32(buffered_accumulator_6_s32),
        .buffered_accumulator_7_s32(buffered_accumulator_7_s32),
        .selected_accumulator_s32  (selected_accumulator_s32)
    );

    fc_quantizer #(
        .ACC_WIDTH(ACC_WIDTH)
    ) u_fc_quantizer (
        .clk            (clk),
        .rst_n          (rst_n),
        .valid_in       (quant_input_valid),
        .accumulator_s32(selected_accumulator_s32),
        .valid_out      (quant_result_valid),
        .quantized_u8   (quantized_u8)
    );

endmodule
