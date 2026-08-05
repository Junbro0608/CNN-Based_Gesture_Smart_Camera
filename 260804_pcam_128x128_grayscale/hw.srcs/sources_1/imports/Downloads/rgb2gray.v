`timescale 1ns / 1ps

module rgb2gray (
    input wire aclk,
    input wire aresetn,

    input  wire [23:0] s_axis_tdata,
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,
    input  wire        s_axis_tlast,
    input  wire        s_axis_tuser,

    output wire [23:0] m_axis_tdata,
    output wire        m_axis_tvalid,
    input  wire        m_axis_tready,
    output wire        m_axis_tlast,
    output wire        m_axis_tuser
);

    wire [7:0] r;
    wire [7:0] b;
    wire [7:0] g;

    assign r = s_axis_tdata[23:16];
    assign b = s_axis_tdata[15:8];
    assign g = s_axis_tdata[7:0];

    wire [15:0] y_sum;
    wire [ 7:0] y_gray;
    wire signed [ 8:0] y_centered;

    // Rounded luminance approximation of 0.299R + 0.587G + 0.114B.
    assign y_sum = (r * 8'd77) + (g * 8'd150) + (b * 8'd29) + 16'd128;
    assign y_gray = y_sum[15:8];
    assign y_centered = $signed({1'b0, y_gray}) - 9'sd128;

    assign m_axis_tdata = {y_centered[7:0], y_centered[7:0], y_centered[7:0]};
    assign m_axis_tvalid = s_axis_tvalid;
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tlast = s_axis_tlast;
    assign m_axis_tuser = s_axis_tuser;

endmodule
