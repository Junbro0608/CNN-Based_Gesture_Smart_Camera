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
    logic [1:0] mux_sel;

    CNN_acc_controller U_CNN_acc_controller (
        .clk               (clk),
        .rst_n             (rst_n),
        //conv_ctrl
        .cnn_start         (conv_start),
        .cnn_Relu_en       (conv_Relu_en),
        .cnn_MaxPool_en    (conv_MaxPool_en),
        .cnn_input_channel (conv_input_channel),
        .cnn_output_channel(conv_output_channel),
        .cnn_Done          (conv_Done),
        //fc_ctrl
        .fc_start          (fc_start),
        .fc_input_length   (fc_input_length),
        .fc_output_length  (fc_output_length),
        .fc_Done           (fc_Done),
        //Datamem_ctrl
        .DATA_w_sel      (Data_mem_sel),
        .mux_sel           (mux_sel),
        .DataMover_start   (DataMover_start),
        //outside
        .done              (done),
        .busy              (busy)
    );

    //-----------------------------연산---------------------------------
    conv #(
        .WT_ADDR_WIDTH  (WT_ADDR_WIDTH),
        .WT_DATA_WIDTH  (WT_DATA_WIDTH),
        .DATA_ADDR_WIDTH(DATA_ADDR_WIDTH),
        .DATA_DATA_WIDTH(DATA_DATA_WIDTH)
    ) U_conv (
        .clk,
        .rst_n,
        //CNN ctrl
        .start         (conv_start),
        .Relu_en       (conv_Relu_en),
        .MaxPool_en    (conv_MaxPool_en),
        .input_channel (conv_input_channel),
        .output_channel(conv_output_channel),
        .Done          (conv_Done),
        //weight side
        .wt_raddr      (conv_wt_raddr),
        .wt_rdata      (conv_wt_rdata),
        //Data Load
        .DATA_we       (conv_DATA_we),
        .DATA_waddr    (conv_DATA_waddr),
        .DATA_wdata    (conv_DATA_wdata),
        //Data Store
        .DATA_raddr    (conv_DATA_raddr),
        .DATA_rdata    (conv_DATA_rdata)
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
        .start        (fc_start),
        .input_length (fc_input_length),
        .output_length(fc_output_length),
        .Done         (fc_Done),
        //weight side
        .wt_raddr     (fc_Done),
        .wt_rdata     (fc_Done),
        //Data Load
        .DATA_we      (fc_DATA_we),
        .DATA_waddr   (fc_DATA_waddr),
        .DATA_wdata   (fc_DATA_wdata),
        //Data Store
        .DATA_raddr   (fc_DATA_raddr),
        .DATA_rdata   (fc_DATA_rdata),
        //result
        .result       (result)
    );

    //--------------------------Memory------------------------------------------
    //DataBuffer - WriteMux
    mux3 #(
        .WIDTH(1)
    ) U_we2DataBuf_MUX (
        .in0(conv_DATA_we),
        .in1(fc_DATA_we),
        .in2(img_we),
        .sel(mux_sel),
        .out(mux_we)
    );
    mux3 #(
        .WIDTH($clog2(DATA_ADDR_WIDTH))
    ) U_waddr2DataBuf_MUX (
        .in0(conv_DATA_waddr),
        .in1(fc_DATA_waddr),
        .in2(img_waddr),
        .sel(mux_sel),
        .out(mux_waddr)
    );
    mux3 #(
        .WIDTH(DATA_DATA_WIDTH)
    ) U_wdata2DataBuf_MUX (
        .in0(conv_DATA_wdata),
        .in1(fc_DATA_wdata),
        .in2(img_wdata),
        .sel(mux_sel),
        .out(mux_wdata)
    );
    // Data Buffer Raddr
    mux2 #(
        .WIDTH($clog2(DATA_ADDR_WIDTH))
    ) U_raddr2DataBuf_MUX (
        .in0(conv_DATA_raddr),
        .in1(fc_DATA_raddr),
        .sel(mux_sel[0]),
        .out(mux_raddr)
    );

    //Data(254,016 bytes)
    pingpongBuffer #(
        .ADDR_WIDTH(DATA_ADDR_WIDTH),
        .DATA_WIDTH(DATA_DATA_WIDTH)
    ) U_Data_Buffer (
        //buffer ctrl
        .w_sel(DATA_w_sel),
        //write
        .wclk (clk),
        .we   (mux_we),
        .wAddr(mux_wAddr),
        .wData(mux_wData),
        //read
        .rclk (clk),
        .rAddr(mux_raddr),
        .rData(DATA_rData)
    );

    dram_controller u_dram_controller (
        .clk(clk),
        .rst_n(rst_n),
        .DataMover_start(DataMover_start),
        .s_axis_mms2s_cmd_tdata(s_axis_mms2s_cmd_tdata),
        .s_axis_mms2s_cmd_tready(s_axis_mms2s_cmd_tready),
        .s_axis_mms2s_cmd_tvalid(s_axis_mms2s_cmd_tvalid),
        .s_axis_mms2s_cmd_tdata(s_axis_mms2s_cmd_tdata),  // 명령어 tdata
        .s_axis_mms2s_cmd_tready(s_axis_mms2s_cmd_tready),  // 명령어 tready
        .s_axis_mms2s_cmd_tvalid(s_axis_mms2s_cmd_tvalid),  // 명령어 tvalid
        .s_axis_mms2s_tdata(s_axis_mms2s_tdata),  // 명령어 tdata
        .s_axis_mms2s_tready(s_axis_mms2s_tready),  // 명령어 tready
        .s_axis_mms2s_tvalid(s_axis_mms2s_tvalid),  // 명령어 tvalid
        .s_axis_mm2s_tdata(s_axis_mm2s_tdata),  //rdata push data
        .s_axis_mm2s_tlast(s_axis_mm2s_tlast),  //rdata 마지막 데이터라는 신호
        .s_axis_mm2s_tready(s_axis_mm2s_tready),  //rdata tready
        .s_axis_mm2s_tvalid(s_axis_mm2s_tvalid)  //rdata push done
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
    input  logic [      1:0] sel,
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

module mux2 #(
    parameter WIDTH = 1
) (
    input logic [WIDTH-1:0] in0,
    input logic [WIDTH-1:0] in1,
    input logic sel,
    output logic [WIDTH-1:0] out
);
    always_comb begin
        case (sel)
            0: out = in0;
            1: out = in1;
        endcase
    end
endmodule

