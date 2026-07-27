module conv #(
    parameter WT_ADDR_WIDTH   = 10 * 128,
    parameter WT_DATA_WIDTH   = 64,
    parameter DATA_ADDR_WIDTH = 126 * 126 * 16,
    parameter DATA_DATA_WIDTH = 8
) (
    input  logic                               clk,
    input  logic                               rst_n,
    //CNN ctrl
    input  logic                               start,
    input  logic                               Relu_en,
    input  logic                               MaxPool_en,
    input  logic [            $clog2(128)-1:0] input_channel,
    input  logic [            $clog2(128)-1:0] output_channel,
    output logic                               Done,
    //weight side
    output logic [  $clog2(WT_ADDR_WIDTH)-1:0] wt_raddr,
    output logic [          WT_DATA_WIDTH-1:0] wt_rdata,
    //Data Load
    output logic                               DATA_we,
    output logic [$clog2(DATA_ADDR_WIDTH)-1:0] DATA_waddr,
    input  logic [        DATA_DATA_WIDTH-1:0] DATA_wdata,
    //Data Store
    output logic [$clog2(DATA_ADDR_WIDTH)-1:0] DATA_raddr,
    input  logic [        DATA_DATA_WIDTH-1:0] DATA_rdata
);


endmodule
