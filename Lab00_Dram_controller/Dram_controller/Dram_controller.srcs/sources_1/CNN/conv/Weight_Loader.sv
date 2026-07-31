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
//       ((output_group_index * input_channels) + input_channel_index) * 9
//       + kernel_index
//
//   Bias words:
//     one 64-bit word per output-channel group, after every weight word
//
//     bias address =
//       (output_groups * input_channels * 9) + output_group_index
//
// One 64-bit word contains eight signed 8-bit channel values:
//   [ 7: 0] = CH0, [15: 8] = CH1, ... [63:56] = CH7
//
// The external buffer is not modified by this module. wt_rdata is assumed to
// return one clock after wt_raddr is issued.
//
// Bias values are stored as signed 8-bit values in memory and are sign
// extended to signed 32-bit values inside this loader.
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
    input  logic [CONFIG_WIDTH-1:0] output_groups,
    input  logic [CONFIG_WIDTH-1:0] output_group_index,
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
    logic [ADDR_WIDTH-1:0] weight_start_addr;
    logic [ADDR_WIDTH-1:0] bias_word_addr;
    logic                  weight_data_pending;
    logic                  bias_addr_issued;

    logic [CALC_WIDTH-1:0] input_channels_calc;
    logic [CALC_WIDTH-1:0] output_groups_calc;
    logic [CALC_WIDTH-1:0] output_group_index_calc;
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
        output_groups_calc =
            {{(CALC_WIDTH-CONFIG_WIDTH){1'b0}}, output_groups};
        output_group_index_calc =
            {{(CALC_WIDTH-CONFIG_WIDTH){1'b0}}, output_group_index};
        input_channel_index_calc =
            {{(CALC_WIDTH-CONFIG_WIDTH){1'b0}}, input_channel_index};

        weight_start_calc_wide =
            ((output_group_index_calc * input_channels_calc)
             + input_channel_index_calc)
            * NUM_KERNEL_WORDS;

        bias_addr_calc_wide =
            (output_groups_calc
             * input_channels_calc
             * NUM_KERNEL_WORDS)
            + output_group_index_calc;

        weight_start_calc =
            weight_start_calc_wide[ADDR_WIDTH-1:0];
        bias_addr_calc =
            bias_addr_calc_wide[ADDR_WIDTH-1:0];
    end

    always_comb begin
        load_ready = (state == IDLE);
        busy       = (state != IDLE);
        wt_ren     = 1'b0;

        case (state)
            LOAD_WEIGHT: begin
                if (issue_word_index < NUM_KERNEL_WORDS) begin
                    wt_ren   = 1'b1;
                    wt_raddr = weight_start_addr + issue_word_index;
                end else begin
                    wt_raddr = '0;
                end
            end

            LOAD_BIAS: begin
                if (!bias_addr_issued) begin
                    wt_ren   = 1'b1;
                    wt_raddr = bias_word_addr;
                end else begin
                    wt_raddr = '0;
                end
            end

            default:
                wt_raddr = '0;
        endcase
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state             <= IDLE;
            issue_word_index  <= 4'd0;
            capture_word_index <= 4'd0;
            weight_start_addr <= '0;
            bias_word_addr    <= '0;
            weight_data_pending <= 1'b0;
            bias_addr_issued    <= 1'b0;
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
                        weight_start_addr <= weight_start_calc;
                        bias_word_addr    <= bias_addr_calc;
                        issue_word_index  <= 4'd0;
                        capture_word_index <= 4'd0;
                        weight_data_pending <= 1'b0;
                        bias_addr_issued    <= 1'b0;
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
                        weight_data_pending <= 1'b1;
                    end else begin
                        weight_data_pending <= 1'b0;

                        if (weight_data_pending
                            && (capture_word_index == NUM_KERNEL_WORDS-1)) begin
                            bias_addr_issued <= 1'b0;
                            state            <= LOAD_BIAS;
                        end
                    end
                end

                LOAD_BIAS: begin
                    if (!bias_addr_issued) begin
                        bias_addr_issued <= 1'b1;
                    end else begin
                        for (ch = 0; ch < NUM_CH; ch = ch + 1) begin
                            bias_out[ch] <= {
                                {24{wt_rdata[ch*8 + 7]}},
                                wt_rdata[ch*8 +: 8]
                            };
                        end

                        weight_valid <= 1'b1;
                        state        <= IDLE;
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
