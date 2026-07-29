`timescale 1ns / 1ps

// Dual-bank feature-map buffer.
//
// Typical layer operation:
//   Layer N   : read_bank=0, write_bank=1
//   Layer N+1 : read_bank=1, write_bank=0
//
// This prevents a convolution result from overwriting feature-map data that
// is still being read. The controller must keep read_bank and write_bank
// different while a layer is being processed.
//
// Read latency is one clock:
//   cycle N   : read_enable=1 and read_addr is accepted
//   cycle N+1 : read_valid=1 and read_data is valid
module Data_Buffer #(
    // Camera data must be quantized/centered to signed 8-bit when it is
    // loaded. Keeping CNN feature maps at signed 8-bit matches CH and reduces
    // BRAM usage.
    parameter integer DATA_WIDTH = 8,

    // Default capacity: eight 128x128 feature maps in each bank.
    parameter integer DEPTH = 128 * 128 * 8,

    parameter integer ADDR_WIDTH = $clog2(DEPTH)
) (
    input logic clk,
    input logic rst_n,

    // Write port: ping-pong input loading or CH result write-back.
    input logic                  write_enable,
    output logic                 write_ready,
    input logic                  write_bank,
    input logic [ADDR_WIDTH-1:0] write_addr,
    input logic signed [DATA_WIDTH-1:0] write_data,

    // Read port: controlled by Conv_Controller.
    input  logic                  read_enable,
    output logic                  read_ready,
    input  logic                  read_bank,
    input  logic [ADDR_WIDTH-1:0] read_addr,
    output logic signed [DATA_WIDTH-1:0] read_data,
    output logic                  read_valid,
    input  logic                  read_data_ready
);

    (* ram_style = "block" *)
    logic signed [DATA_WIDTH-1:0] bank_0 [0:DEPTH-1];

    (* ram_style = "block" *)
    logic signed [DATA_WIDTH-1:0] bank_1 [0:DEPTH-1];

    // The memories are intentionally not reset. Clearing every memory word
    // with rst_n would prevent efficient block-RAM inference. read_valid tells
    // downstream logic when read_data may be used.
    // The write port has no internal queue and the inferred RAM can accept
    // one write on every clock.
    assign write_ready = 1'b1;

    // One-entry registered read response. A new request may be accepted when
    // the response register is empty or when its current value is consumed on
    // this clock.
    assign read_ready = !read_valid || read_data_ready;

    always_ff @(posedge clk) begin
        if (write_enable && write_ready) begin
            if (write_bank)
                bank_1[write_addr] <= write_data;
            else
                bank_0[write_addr] <= write_data;
        end
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            read_valid <= 1'b0;
        end else begin
            if (read_valid && read_data_ready)
                read_valid <= 1'b0;

            if (read_enable && read_ready) begin
                if (read_bank)
                    read_data <= bank_1[read_addr];
                else
                    read_data <= bank_0[read_addr];

                read_valid <= 1'b1;
            end
        end
    end

endmodule
