module CNN_accelerator #(
    parameter WT_ADDR_WIDTH   = 10 * 128,
    parameter WT_DATA_WIDTH   = 64,
    parameter DATA_ADDR_WIDTH = 126 * 126 * 16,
    parameter DATA_DATA_WIDTH = 8
) (
    input  logic clk,
    input  logic rst_n,
    input  logic done,
    input  logic busy,
    output logic result,
    //push img
    output logic img_raddr,
    input  logic img_rdata
);

    CNN_acc_controller U_CNN_acc_controller (
        .clk  (clk),
        .rst_n(rst_n)
    );

    //Wigth(20,480 bytes)
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




endmodule
