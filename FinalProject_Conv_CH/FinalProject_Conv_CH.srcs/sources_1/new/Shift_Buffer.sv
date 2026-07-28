`timescale 1ns / 1ps

// 4x4 tile buffer for the scheduling order:
//   four 3x3 convolutions -> one 2x2 max-pooling result.
//
// Input pixels are accepted in 4x4 row-major order:
//   0  1  2  3
//   4  5  6  7
//   8  9 10 11
//  12 13 14 15
//
// After all 16 pixels have been captured, the following four windows are
// presented on four consecutive clocks:
//   window_index=0 : top-left convolution position
//   window_index=1 : top-right convolution position
//   window_index=2 : bottom-left convolution position
//   window_index=3 : bottom-right convolution position
//
// MaxPool can therefore collect four completed CH results in this same order.
module Shift_Buffer #(
    parameter integer PIXEL_WIDTH = 8
) (
    input logic clk,
    input logic rst_n,

    // Clears a partially captured tile and returns to input capture.
    input logic clear,

    // Data_Buffer input stream. A pixel is accepted only on
    // pixel_valid && pixel_ready.
    input  logic [PIXEL_WIDTH-1:0] pixel_data,
    input  logic                   pixel_valid,
    output logic                   pixel_ready,

    // CH_wrapper interface.
    output logic [PIXEL_WIDTH-1:0] pixel_window [0:8],
    output logic                   window_valid,
    input  logic                   window_ready,
    output logic [1:0]             window_index,

    // High together with the fourth and final window.
    output logic tile_done
);

    localparam integer TILE_PIXELS = 16;

    typedef enum logic {
        CAPTURE_TILE,
        OUTPUT_WINDOWS
    } state_t;

    state_t state;

    logic [PIXEL_WIDTH-1:0] tile_mem [0:TILE_PIXELS-1];
    logic [4:0] capture_count;
    logic [1:0] output_count;
    logic       pixel_fire;
    logic       window_fire;

    integer index;

    assign pixel_ready = (state == CAPTURE_TILE);
    assign pixel_fire  = pixel_valid && pixel_ready;
    assign window_fire = window_valid && window_ready;

    assign window_valid = (state == OUTPUT_WINDOWS);
    assign window_index = output_count;
    assign tile_done = window_fire && (output_count == 2'd3);

    // Select one of the four overlapping 3x3 windows from the stored 4x4 tile.
    always_comb begin
        for (index = 0; index < 9; index = index + 1)
            pixel_window[index] = {PIXEL_WIDTH{1'b0}};

        case (output_count)
            2'd0: begin
                pixel_window[0] = tile_mem[0];
                pixel_window[1] = tile_mem[1];
                pixel_window[2] = tile_mem[2];
                pixel_window[3] = tile_mem[4];
                pixel_window[4] = tile_mem[5];
                pixel_window[5] = tile_mem[6];
                pixel_window[6] = tile_mem[8];
                pixel_window[7] = tile_mem[9];
                pixel_window[8] = tile_mem[10];
            end

            2'd1: begin
                pixel_window[0] = tile_mem[1];
                pixel_window[1] = tile_mem[2];
                pixel_window[2] = tile_mem[3];
                pixel_window[3] = tile_mem[5];
                pixel_window[4] = tile_mem[6];
                pixel_window[5] = tile_mem[7];
                pixel_window[6] = tile_mem[9];
                pixel_window[7] = tile_mem[10];
                pixel_window[8] = tile_mem[11];
            end

            2'd2: begin
                pixel_window[0] = tile_mem[4];
                pixel_window[1] = tile_mem[5];
                pixel_window[2] = tile_mem[6];
                pixel_window[3] = tile_mem[8];
                pixel_window[4] = tile_mem[9];
                pixel_window[5] = tile_mem[10];
                pixel_window[6] = tile_mem[12];
                pixel_window[7] = tile_mem[13];
                pixel_window[8] = tile_mem[14];
            end

            default: begin
                pixel_window[0] = tile_mem[5];
                pixel_window[1] = tile_mem[6];
                pixel_window[2] = tile_mem[7];
                pixel_window[3] = tile_mem[9];
                pixel_window[4] = tile_mem[10];
                pixel_window[5] = tile_mem[11];
                pixel_window[6] = tile_mem[13];
                pixel_window[7] = tile_mem[14];
                pixel_window[8] = tile_mem[15];
            end
        endcase
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state         <= CAPTURE_TILE;
            capture_count <= 5'd0;
            output_count  <= 2'd0;
        end else if (clear) begin
            state         <= CAPTURE_TILE;
            capture_count <= 5'd0;
            output_count  <= 2'd0;
        end else begin
            case (state)
                CAPTURE_TILE: begin
                    if (pixel_fire) begin
                        tile_mem[capture_count] <= pixel_data;

                        if (capture_count == TILE_PIXELS-1) begin
                            capture_count <= 5'd0;
                            output_count  <= 2'd0;
                            state         <= OUTPUT_WINDOWS;
                        end else begin
                            capture_count <= capture_count + 1'b1;
                        end
                    end
                end

                OUTPUT_WINDOWS: begin
                    if (window_fire) begin
                        if (output_count == 2'd3) begin
                            output_count <= 2'd0;
                            state        <= CAPTURE_TILE;
                        end else begin
                            output_count <= output_count + 1'b1;
                        end
                    end
                end

                default: begin
                    state         <= CAPTURE_TILE;
                    capture_count <= 5'd0;
                    output_count  <= 2'd0;
                end
            endcase
        end
    end

endmodule
