`timescale 1ns / 1ps

// Standalone signed 2x2 max-pooling engine.
//
// This engine is used for Pool4 and Pool5, where no convolution precedes
// MaxPool. It reads four pixels from the external synchronous-read ping-pong
// buffer and writes one pooled result on a clock edge.
//
// Feature maps use channel-major address mapping:
//   channel * (width * height) + y * width + x
//
// The external pingpongBuffer always reads the bank opposite w_sel, so
// w_sel is driven to !source_bank while the engine is active.
module Standalone_MaxPool #(
    parameter integer DATA_WIDTH   = 8,
    parameter integer ADDR_WIDTH   = 32,
    parameter integer CONFIG_WIDTH = 16
) (
    input logic clk,
    input logic rst_n,

    // CNN controller interface.
    input  logic                    start,
    input  logic                    source_bank,
    input  logic [CONFIG_WIDTH-1:0] input_width,
    input  logic [CONFIG_WIDTH-1:0] input_height,
    input  logic [CONFIG_WIDTH-1:0] channel_count,
    output logic                    busy,
    output logic                    done,

    // External synchronous-read, synchronous-write ping-pong buffer.
    output logic [ADDR_WIDTH-1:0]          rAddr,
    input  logic signed [DATA_WIDTH-1:0]  rData,
    output logic                           we,
    output logic                           w_sel,
    output logic [ADDR_WIDTH-1:0]          wAddr,
    output logic signed [DATA_WIDTH-1:0]  wData
);

    typedef enum logic [2:0] {
        IDLE,
        ISSUE_READ,
        CAPTURE_READ,
        WRITE_RESULT,
        DONE
    } state_t;

    state_t state;

    logic source_bank_reg;
    logic [CONFIG_WIDTH-1:0] input_width_reg;
    logic [CONFIG_WIDTH-1:0] input_height_reg;
    logic [CONFIG_WIDTH-1:0] channel_count_reg;

    logic [CONFIG_WIDTH-1:0] output_width;
    logic [CONFIG_WIDTH-1:0] output_height;
    logic [ADDR_WIDTH-1:0] input_pixels;
    logic [ADDR_WIDTH-1:0] output_pixels;

    logic [CONFIG_WIDTH-1:0] channel_reg;
    logic [CONFIG_WIDTH-1:0] output_x_reg;
    logic [CONFIG_WIDTH-1:0] output_y_reg;
    logic [1:0] pixel_index;

    logic signed [DATA_WIDTH-1:0] max_reg;

    always_comb begin
        input_pixels  = input_width_reg * input_height_reg;
        output_width  = input_width_reg / 2;
        output_height = input_height_reg / 2;
        output_pixels = output_width * output_height;

        // pixel_index order:
        //   0: top-left, 1: top-right,
        //   2: bottom-left, 3: bottom-right.
        rAddr =
            channel_reg * input_pixels
            + (output_y_reg * 2 + pixel_index[1]) * input_width_reg
            + (output_x_reg * 2 + pixel_index[0]);

        wAddr =
            channel_reg * output_pixels
            + output_y_reg * output_width
            + output_x_reg;

        // pingpongBuffer reads r_sel=~w_sel.
        w_sel = !source_bank_reg;
        wData = max_reg;
        we    = (state == WRITE_RESULT);

        busy = (state == ISSUE_READ)
            || (state == CAPTURE_READ)
            || (state == WRITE_RESULT);
        done = (state == DONE);
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state              <= IDLE;
            source_bank_reg    <= 1'b0;
            input_width_reg    <= '0;
            input_height_reg   <= '0;
            channel_count_reg  <= '0;
            channel_reg        <= '0;
            output_x_reg       <= '0;
            output_y_reg       <= '0;
            pixel_index        <= 2'd0;
            max_reg            <= '0;
        end else begin
            case (state)
                IDLE: begin
                    if (start) begin
                        source_bank_reg   <= source_bank;
                        input_width_reg   <= input_width;
                        input_height_reg  <= input_height;
                        channel_count_reg <= channel_count;
                        channel_reg       <= '0;
                        output_x_reg      <= '0;
                        output_y_reg      <= '0;
                        pixel_index       <= 2'd0;
                        max_reg           <= '0;

                        // Pool4 and Pool5 always use positive, even
                        // dimensions. Invalid configurations complete
                        // without issuing a memory write.
                        if ((input_width < 2)
                            || (input_height < 2)
                            || input_width[0]
                            || input_height[0]
                            || (channel_count == 0))
                            state <= DONE;
                        else
                            state <= ISSUE_READ;
                    end
                end

                ISSUE_READ: begin
                    // Hold rAddr for one cycle so the synchronous RAM can
                    // register the requested pixel into rData.
                    state <= CAPTURE_READ;
                end

                CAPTURE_READ: begin
                    // rData now corresponds to the address issued in the
                    // preceding ISSUE_READ cycle.
                    if (pixel_index == 2'd0) begin
                        max_reg <= rData;
                    end else if ($signed(rData) > $signed(max_reg)) begin
                        max_reg <= rData;
                    end

                    if (pixel_index == 2'd3) begin
                        pixel_index <= 2'd0;
                        state       <= WRITE_RESULT;
                    end else begin
                        pixel_index <= pixel_index + 1'b1;
                        state       <= ISSUE_READ;
                    end
                end

                WRITE_RESULT: begin
                    // The external synchronous buffer accepts wData on this
                    // edge because we is high throughout WRITE_RESULT.
                    if ((channel_reg == channel_count_reg-1)
                        && (output_x_reg == output_width-1)
                        && (output_y_reg == output_height-1)) begin
                        state <= DONE;
                    end else begin
                        if (output_x_reg == output_width-1) begin
                            output_x_reg <= '0;

                            if (output_y_reg == output_height-1) begin
                                output_y_reg <= '0;
                                channel_reg  <= channel_reg + 1'b1;
                            end else begin
                                output_y_reg <= output_y_reg + 1'b1;
                            end
                        end else begin
                            output_x_reg <= output_x_reg + 1'b1;
                        end
                        state <= ISSUE_READ;
                    end
                end

                DONE: begin
                    // One-clock completion pulse after the final write.
                    state <= IDLE;
                end

                default: begin
                    state <= IDLE;
                end
            endcase
        end
    end

endmodule
