`timescale 1ns / 1ps

// Reads one 3x3-weight set and one bias word from an external synchronous
// 64-bit weight buffer.
//
// External memory layout for one layer:
//
//   Weight words:
//     output-group -> input-channel -> kernel-position
//
//     weight address =
//       group_base_address + input_channel_index * 9 + kernel_index
//
//   Bias words:
//     four 64-bit words per eight-output-channel group, after every weight
//     block. Each word holds two signed 32-bit biases.
//
//     bias address =
//       group_base_address + input_channels * 9 + bias_pair_index
//
// One 64-bit word contains eight signed 8-bit channel values:
//   [ 7: 0] = CH0, [15: 8] = CH1, ... [63:56] = CH7
//
// The external buffer is not modified by this module. wt_rdata is assumed to
// return one clock after wt_raddr is issued.
//
module Weight_Loader #(
    parameter integer NUM_CH       = 8,
    parameter integer ADDR_WIDTH   = 16,
    parameter integer CONFIG_WIDTH = 16
) (
    input  logic clk,
    input  logic rst_n,

    // One request loads weights for one output group and one input channel.
    input  logic                    load_start,
    output logic                    load_ready,
    output logic                    busy,
    output logic                    weight_valid,

    // Active-layer configuration and current indices.
    input  logic [CONFIG_WIDTH-1:0] input_channels,
    input  logic [ADDR_WIDTH-1:0]   group_base_address,
    input  logic [CONFIG_WIDTH-1:0] input_channel_index,

    // External synchronous-read 64-bit weight-buffer interface.
    output logic                    wt_ren,
    output logic [ADDR_WIDTH-1:0]   wt_raddr,
    input  logic [NUM_CH*8-1:0]     wt_rdata,

    // Stored values supplied to CH_wrapper.
    output logic signed [7:0]
        weight_out [0:NUM_CH-1][0:8],
    output logic signed [31:0]
        bias_out [0:NUM_CH-1]
);

    localparam integer NUM_KERNEL_WORDS = 9;
    localparam integer BIAS_WORDS_PER_GROUP = NUM_CH / 2;
    localparam integer CALC_WIDTH =
        (2 * CONFIG_WIDTH) + 4;

    typedef enum logic [1:0] {
        IDLE,
        LOAD_WEIGHT,
        LOAD_BIAS
    } state_t;

    state_t state;

    logic [3:0] issue_word_index;
    logic [3:0] capture_word_index;
    logic [ADDR_WIDTH-1:0] weight_request_addr;
    logic [ADDR_WIDTH-1:0] bias_request_addr;
    logic                  weight_data_pending;
    logic [2:0]            bias_issue_word_index;
    logic [2:0]            bias_capture_word_index;
    logic                  bias_data_pending;

    logic [CALC_WIDTH-1:0] input_channels_calc;
    logic [CALC_WIDTH-1:0] input_channel_index_calc;
    logic [CALC_WIDTH-1:0] weight_start_calc_wide;
    logic [CALC_WIDTH-1:0] bias_addr_calc_wide;
    logic [ADDR_WIDTH-1:0] weight_start_calc;
    logic [ADDR_WIDTH-1:0] bias_addr_calc;

    integer ch;
    integer kernel;

    always_comb begin
        input_channels_calc =
            {{(CALC_WIDTH-CONFIG_WIDTH){1'b0}}, input_channels};
        input_channel_index_calc =
            {{(CALC_WIDTH-CONFIG_WIDTH){1'b0}}, input_channel_index};

        weight_start_calc_wide =
            {{(CALC_WIDTH-ADDR_WIDTH){1'b0}}, group_base_address}
            + (input_channel_index_calc * NUM_KERNEL_WORDS);

        bias_addr_calc_wide =
            {{(CALC_WIDTH-ADDR_WIDTH){1'b0}}, group_base_address}
            + (input_channels_calc * NUM_KERNEL_WORDS);

        weight_start_calc =
            weight_start_calc_wide[ADDR_WIDTH-1:0];
        bias_addr_calc =
            bias_addr_calc_wide[ADDR_WIDTH-1:0];
    end

    always_comb begin
        load_ready = (state == IDLE);
        busy       = (state != IDLE);
        wt_ren     = 1'b0;
        // The ROM has no enable. Keep its address driven by the registered
        // request address; only wt_ren marks a response as consumable.
        wt_raddr   = weight_request_addr;

        case (state)
            LOAD_WEIGHT: begin
                if (issue_word_index < NUM_KERNEL_WORDS)
                    wt_ren   = 1'b1;
            end

            LOAD_BIAS: begin
                if (bias_issue_word_index < BIAS_WORDS_PER_GROUP) begin
                    wt_ren   = 1'b1;
                    wt_raddr = bias_request_addr;
                end
            end

            default: begin end
        endcase
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state             <= IDLE;
            issue_word_index  <= 4'd0;
            capture_word_index <= 4'd0;
            weight_request_addr <= '0;
            bias_request_addr <= '0;
            weight_data_pending <= 1'b0;
            bias_issue_word_index <= '0;
            bias_capture_word_index <= '0;
            bias_data_pending <= 1'b0;
            weight_valid      <= 1'b0;

            for (ch = 0; ch < NUM_CH; ch = ch + 1) begin
                bias_out[ch] <= 32'sd0;

                for (kernel = 0; kernel < NUM_KERNEL_WORDS;
                     kernel = kernel + 1) begin
                    weight_out[ch][kernel] <= 8'sd0;
                end
            end
        end else begin
            case (state)
                IDLE: begin
                    if (load_start && load_ready) begin
                        weight_request_addr <= weight_start_calc;
                        bias_request_addr <= bias_addr_calc;
                        issue_word_index  <= 4'd0;
                        capture_word_index <= 4'd0;
                        weight_data_pending <= 1'b0;
                        bias_issue_word_index <= '0;
                        bias_capture_word_index <= '0;
                        bias_data_pending <= 1'b0;
                        weight_valid      <= 1'b0;
                        state             <= LOAD_WEIGHT;
                    end
                end

                LOAD_WEIGHT: begin
                    if (weight_data_pending) begin
                        for (ch = 0; ch < NUM_CH; ch = ch + 1) begin
                            weight_out[ch][capture_word_index] <=
                                $signed(wt_rdata[ch*8 +: 8]);
                        end

                        if (capture_word_index < NUM_KERNEL_WORDS-1)
                            capture_word_index <= capture_word_index + 1'b1;
                    end

                    if (issue_word_index < NUM_KERNEL_WORDS) begin
                        issue_word_index    <= issue_word_index + 1'b1;
                        weight_request_addr <= weight_request_addr + 1'b1;
                        weight_data_pending <= 1'b1;
                    end else begin
                        weight_data_pending <= 1'b0;

                        if (weight_data_pending
                            && (capture_word_index == NUM_KERNEL_WORDS-1)) begin
                            bias_issue_word_index <= '0;
                            bias_capture_word_index <= '0;
                            bias_data_pending <= 1'b0;
                            state            <= LOAD_BIAS;
                        end
                    end
                end

                LOAD_BIAS: begin
                    if (bias_data_pending) begin
                        bias_out[bias_capture_word_index * 2] <=
                            $signed(wt_rdata[31:0]);
                        bias_out[bias_capture_word_index * 2 + 1] <=
                            $signed(wt_rdata[63:32]);
                    end

                    if (bias_issue_word_index < BIAS_WORDS_PER_GROUP) begin
                        bias_issue_word_index <= bias_issue_word_index + 1'b1;
                        bias_request_addr <= bias_request_addr + 1'b1;
                        bias_data_pending <= 1'b1;
                    end else begin
                        bias_data_pending <= 1'b0;
                        if (bias_data_pending
                            && (bias_capture_word_index
                                == BIAS_WORDS_PER_GROUP-1)) begin
                            weight_valid <= 1'b1;
                            state        <= IDLE;
                        end
                    end

                    if (bias_data_pending
                        && (bias_capture_word_index
                            < BIAS_WORDS_PER_GROUP-1)) begin
                        bias_capture_word_index <=
                            bias_capture_word_index + 1'b1;
                    end
                end

                default: begin
                    state        <= IDLE;
                    weight_valid <= 1'b0;
                end
            endcase
        end
    end

endmodule
