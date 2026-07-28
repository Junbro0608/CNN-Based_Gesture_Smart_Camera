`timescale 1ns / 1ps

// Loads one weight packet for NUM_CH output channels.
//
// Packet layout (one word per AXI-Stream handshake):
//   word 0..8 : kernel position 0..8 for CH0..CH(NUM_CH-1)
//   word 9    : bias for CH0..CH(NUM_CH-1)
//
// Byte layout in every word:
//   bits [ 7: 0] : CH0
//   bits [15: 8] : CH1
//   ...
//
// weight_valid remains high after all ten words have been captured. It is
// cleared when a new load_start is accepted. This lets CH_wrapper reuse the
// stored weights whenever a pixel window becomes valid.
module Weight_Buffer #(
    parameter integer NUM_CH     = 8,
    parameter integer ADDR_WIDTH = 32
) (
    input  logic clk,
    input  logic rst_n,

    // Controller interface
    input  logic load_start,
    output logic load_ready,
    input  logic [ADDR_WIDTH-1:0] load_addr,
    output logic busy,
    output logic weight_valid,
    output logic packet_error,

    // Address request to the external weight-memory adapter.
    output logic                  request_valid,
    input  logic                  request_ready,
    output logic [ADDR_WIDTH-1:0] request_addr,

    // AXI DataMover M_AXIS_MM2S interface
    input  logic [NUM_CH*8-1:0] s_axis_weight_tdata,
    input  logic                s_axis_weight_tvalid,
    output logic                s_axis_weight_tready,
    input  logic                s_axis_weight_tlast,

    // CH_wrapper interface
    output logic signed [7:0] weight_out [0:NUM_CH-1][0:8],
    output logic signed [7:0] bias_out   [0:NUM_CH-1]
);

    localparam integer NUM_KERNEL_WORDS = 9;
    localparam integer NUM_PACKET_WORDS = 10;
    logic [3:0] word_index;
    logic       stream_fire;

    integer ch;
    integer kernel;

    assign s_axis_weight_tready = busy && !request_valid;
    assign load_ready = !busy;
    assign stream_fire =
        s_axis_weight_tvalid && s_axis_weight_tready;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            word_index   <= 4'd0;
            busy         <= 1'b0;
            weight_valid <= 1'b0;
            packet_error <= 1'b0;
            request_valid <= 1'b0;
            request_addr  <= '0;

            for (ch = 0; ch < NUM_CH; ch = ch + 1) begin
                bias_out[ch] <= 8'sd0;
                for (kernel = 0; kernel < NUM_KERNEL_WORDS;
                     kernel = kernel + 1) begin
                    weight_out[ch][kernel] <= 8'sd0;
                end
            end
        end else begin
            if (!busy) begin
                if (load_start && load_ready) begin
                    word_index   <= 4'd0;
                    busy         <= 1'b1;
                    weight_valid <= 1'b0;
                    packet_error <= 1'b0;
                    request_valid <= 1'b1;
                    request_addr  <= load_addr;
                end
            end else begin
                if (request_valid && request_ready)
                    request_valid <= 1'b0;

                if (stream_fire) begin
                    if (word_index < NUM_KERNEL_WORDS) begin
                    for (ch = 0; ch < NUM_CH; ch = ch + 1) begin
                        weight_out[ch][word_index] <=
                            $signed(s_axis_weight_tdata[ch*8 +: 8]);
                    end
                    end else begin
                        for (ch = 0; ch < NUM_CH; ch = ch + 1) begin
                            bias_out[ch] <=
                                $signed(s_axis_weight_tdata[ch*8 +: 8]);
                        end
                    end

                    if (word_index == NUM_PACKET_WORDS-1) begin
                    // The tenth beat must also be the final AXI beat.
                    packet_error <= !s_axis_weight_tlast;
                    busy         <= 1'b0;
                    weight_valid <= s_axis_weight_tlast;
                    end else if (s_axis_weight_tlast) begin
                    // Reject a packet that terminates before all ten words.
                    packet_error <= 1'b1;
                    busy         <= 1'b0;
                    weight_valid <= 1'b0;
                    end else begin
                        word_index <= word_index + 1'b1;
                    end
                end
            end
        end
    end

endmodule
