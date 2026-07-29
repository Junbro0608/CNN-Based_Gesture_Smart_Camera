`timescale 1ns / 1ps

module CH_wrapper #(
    parameter integer NUM_CH       = 8,
    parameter integer OUTPUT_SHIFT = 8
) (
    input  logic clk,
    input  logic rst_n,

    // Conv controller: enable may be controlled per output channel.
    input  logic [NUM_CH-1:0] ch_enable,
    input  logic              acc_clear,
    input  logic              first_ic,
    input  logic              last_ic,

    // One shared 3x3 pixel window for every CH.
    input  logic       pixel_valid,
    output logic       pixel_ready,
    input  logic [1:0] window_index,
    input  logic signed [7:0] pixel_in [0:8],

    // One 3x3 kernel and one bias for each CH.
    input  logic                       weight_valid,
    input  logic signed [7:0]          weight_in [0:NUM_CH-1][0:8],
    input  logic signed [31:0]         bias_in   [0:NUM_CH-1],

    // One convolution result and valid pulse from each CH.
    output logic signed [7:0]          result_out   [0:NUM_CH-1],
    output logic [NUM_CH-1:0]          result_valid,
    input  logic [NUM_CH-1:0]          result_ready
);

    genvar ch;
    logic [NUM_CH-1:0] channel_pixel_ready;

    assign pixel_ready = &channel_pixel_ready;

    generate
        for (ch = 0; ch < NUM_CH; ch = ch + 1) begin : GEN_CH
            CH #(
                .OUTPUT_SHIFT(OUTPUT_SHIFT)
            ) U_CH (
                .clk         (clk),
                .rst_n       (rst_n),

                .ch_enable   (ch_enable[ch]),
                .acc_clear   (acc_clear),
                .first_ic    (first_ic),
                .last_ic     (last_ic),

                .pixel_valid (pixel_valid),
                .pixel_ready (channel_pixel_ready[ch]),
                .window_index(window_index),
                .pixel_in    (pixel_in),

                .weight_valid(weight_valid),
                .weight_in   (weight_in[ch]),
                .bias_in     (bias_in[ch]),

                .result_out  (result_out[ch]),
                .result_valid(result_valid[ch]),
                .result_ready(result_ready[ch])
            );
        end
    endgenerate

endmodule
