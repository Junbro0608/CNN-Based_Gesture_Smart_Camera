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
    output logic signed [31:0]         result_out   [0:NUM_CH-1],
    output logic [NUM_CH-1:0]          result_valid,
    input  logic [NUM_CH-1:0]          result_ready,

    // Pulses when CH has actually consumed window_index=3.
    output logic                       consumed_tile_done
);

    genvar ch;
    logic [NUM_CH-1:0] channel_pixel_ready;
    logic              stage_pixel_valid;
    logic [1:0]        stage_window_index;
    logic signed [7:0] stage_pixel_in [0:8];
    logic              stage_pop;
    logic              stage_push;
    integer            idx;

    // One-stage input register decouples Shift_Buffer from CH MAC logic.
    // Upstream can push when the stage is empty or when CH consumes in
    // the same cycle.
    assign stage_pop   = stage_pixel_valid && (&channel_pixel_ready);
    assign pixel_ready = !stage_pixel_valid || (&channel_pixel_ready);
    assign stage_push  = pixel_valid && pixel_ready;
    assign consumed_tile_done =
        stage_pop && (stage_window_index == 2'd3);

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            stage_pixel_valid <= 1'b0;
            stage_window_index <= 2'd0;

            for (idx = 0; idx < 9; idx = idx + 1)
                stage_pixel_in[idx] <= 8'sd0;
        end else begin
            if (acc_clear)
                stage_pixel_valid <= 1'b0;

            if (stage_pop)
                stage_pixel_valid <= 1'b0;

            if (stage_push) begin
                stage_pixel_valid  <= 1'b1;
                stage_window_index <= window_index;

                for (idx = 0; idx < 9; idx = idx + 1)
                    stage_pixel_in[idx] <= pixel_in[idx];
            end
        end
    end

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

                .pixel_valid (stage_pixel_valid),
                .pixel_ready (channel_pixel_ready[ch]),
                .window_index(stage_window_index),
                .pixel_in    (stage_pixel_in),

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
