module CNN_accelerator #(
    parameter WT_ADDR_WIDTH   = 10 * 128,
    parameter WT_DATA_WIDTH   = 64,
    parameter DATA_ADDR_WIDTH = 126 * 126 * 16,
    parameter DATA_DATA_WIDTH = 8
) (
    input logic clk,
    input logic rst_n,
    input logic start,
    output logic done,
    output logic busy,
    output logic result,
    //push img
    output logic img_raddr,
    input logic img_rdata,
    output logic [71:0] s_axis_mms2s_cmd_tdata,  // 명령어 tdata
    input logic s_axis_mms2s_cmd_tready,  // 명령어 tready
    output logic s_axis_mms2s_cmd_tvalid,  // 명령어 tvalid
    input logic [63:0] s_axis_mm2s_tdata,  //rdata push data
    input  logic [ 7:0] s_axis_mm2s_tkeep,        //rdata 64비트(8바이트) 중에서 몇 번째 바이트가 유효한지*무시*
    input logic s_axis_mm2s_tlast,  //rdata 마지막 데이터라는 신호
    output logic s_axis_mm2s_tready,  //rdata tready
    input logic s_axis_mm2s_tvalid  //rdata push done
);

    CNN_acc_controller U_CNN_acc_controller (
        .clk  (clk),
        .rst_n(rst_n)
    );


    conv #(
        .WT_ADDR_WIDTH  (WT_ADDR_WIDTH),
        .WT_DATA_WIDTH  (WT_DATA_WIDTH),
        .DATA_ADDR_WIDTH(DATA_ADDR_WIDTH),
        .DATA_DATA_WIDTH(DATA_DATA_WIDTH)
    ) U_conv (
        .clk,
        .rst_n,
        //CNN ctrl
        .start         (),
        .Relu_en       (),
        .MaxPool_en    (),
        .input_channel (),
        .output_channel(),
        .Done          (),
        //weight side
        .wt_raddr      (),
        .wt_rdata      (),
        //Data Load
        .DATA_we       (),
        .DATA_waddr    (),
        .DATA_wdata    (),
        //Data Store
        .DATA_raddr    (),
        .DATA_rdata    ()
    );

    fc #(
        .WT_ADDR_WIDTH  (WT_ADDR_WIDTH),
        .WT_DATA_WIDTH  (WT_DATA_WIDTH),
        .DATA_ADDR_WIDTH(DATA_ADDR_WIDTH),
        .DATA_DATA_WIDTH(DATA_DATA_WIDTH)
    ) U_FC (
        .clk          (clk),
        .rst_n        (rst_n),
        //CNN ctrl
        .start        (),
        .input_length (),
        .output_length(),
        .Done         (),
        //weight side
        .wt_raddr     (),
        .wt_rdata     (),
        //Data Load
        .DATA_we      (),
        .DATA_waddr   (),
        .DATA_wdata   (),
        //Data Store
        .DATA_raddr   (),
        .DATA_rdata   (),
        //result
        .result       (result)
    );

    //Data(254,016 bytes)
    pingpongBuffer #(
        .ADDR_WIDTH(DATA_ADDR_WIDTH),
        .DATA_WIDTH(DATA_DATA_WIDTH)
    ) U_Data_Buffer (
        //buffer ctrl
        .w_sel(DB_w_sel),
        //write
        .wclk (clk),
        .we   (DB_we),
        .wAddr(DB_wAddr),
        .wData(DB_wData),
        //read
        .rclk (clk),
        .rAddr(DB_rAddr),
        .rData(DB_rData)
    );

    dram_controller u_dram_controller (
        .clk  (clk),
        .rst_n(rst_n)
    );

    //Weigth(20,480 bytes)
    pingpongBuffer #(
        .ADDR_WIDTH(WT_ADDR_WIDTH),
        .DATA_WIDTH(WT_DATA_WIDTH)
    ) U_wight_Buffer (
        //buffer ctrl
        .w_sel(WT_w_sel),
        //write
        .wclk (clk),
        .we   (WT_we),
        .wAddr(WT_wAddr),
        .wData(WT_wData),
        //read
        .rclk (clk),
        .rAddr(WT_rAddr),
        .rData(WT_rData)
    );




endmodule

module mux3 #(
    parameter WIDTH = 1
) (
    input  logic [WIDTH-1:0] in0,
    input  logic [WIDTH-1:0] in1,
    input  logic [WIDTH-1:0] in2,
    input  logic [1:0]       sel,
    output logic [WIDTH-1:0] out
);
    always_comb begin
        case (sel)
            2'd0: out = in0;
            2'd1: out = in1;
            2'd2: out = in2;
            default: out = in0;
        endcase
    end
endmodule

