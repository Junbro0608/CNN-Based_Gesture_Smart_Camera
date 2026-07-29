module fc #(
    parameter WT_ADDR_WIDTH   = 10 * 128,
    parameter WT_DATA_WIDTH   = 64,
    parameter DATA_ADDR_WIDTH = 126 * 126 * 16,
    parameter DATA_DATA_WIDTH = 8
) (
    input  logic                               clk,
    input  logic                               rst_n,
    //CNN ctrl
    input  logic                               start,
    input  logic [           $clog2(1024)-1:0] input_length,
    input  logic [             $clog2(64)-1:0] output_length,
    output logic                               finish_en,
    output logic                               Done,
    //weight side
    output logic [  $clog2(WT_ADDR_WIDTH)-1:0] wt_raddr,
    input  logic [          WT_DATA_WIDTH-1:0] wt_rdata,
    //Data Store
    output logic                               DATA_we,
    output logic [$clog2(DATA_ADDR_WIDTH)-1:0] DATA_waddr,
    output logic [        DATA_DATA_WIDTH-1:0] DATA_wdata,
    //Data Load
    output logic [$clog2(DATA_ADDR_WIDTH)-1:0] DATA_raddr,
    input  logic [        DATA_DATA_WIDTH-1:0] DATA_rdata,
    //result
    output logic                               result
);

    always_comb begin
        finish_en  = 1'b0;
        Done       = 1'b0;
        wt_raddr   = '0;
        DATA_we    = 1'b0;
        DATA_waddr = '0;
        DATA_wdata = '0;
        DATA_raddr = '0;
        result     = 1'b0;
    end

endmodule