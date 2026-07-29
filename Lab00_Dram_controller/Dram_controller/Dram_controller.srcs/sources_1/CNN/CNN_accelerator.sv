module CNN_accelerator #(
    parameter WT_ADDR_WIDTH   = 10 * 128,
    parameter WT_DATA_WIDTH   = 64,
    parameter DATA_ADDR_WIDTH = 64 * 64 * 16,
    parameter DATA_DATA_WIDTH = 8,
    parameter IMG_ADDR_WIDH   = 128,
    parameter IMG_DATA_WIDH   = DATA_DATA_WIDTH
) (
    input logic clk,
    input logic rst_n,
    input logic start,
    output logic done,
    output logic busy,
    output logic result,
    //push img
    output logic [$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0] img_raddr,
    input logic signed [IMG_DATA_WIDH-1:0] img_rdata,
    //dram
    output logic [71:0] s_axis_mms2s_cmd_tdata,  // 명령어 tdata
    input logic s_axis_mms2s_cmd_tready,  // 명령어 tready
    output logic s_axis_mms2s_cmd_tvalid,  // 명령어 tvalid
    input logic signed [63:0] s_axis_mm2s_tdata,  //rdata push data
    input  logic [ 7:0] s_axis_mm2s_tkeep,        //rdata 64비트(8바이트) 중에서 몇 번째 바이트가 유효한지*무시*
    input logic s_axis_mm2s_tlast,  //rdata 마지막 데이터라는 신호
    output logic s_axis_mm2s_tready,  //rdata tready
    input logic s_axis_mm2s_tvalid  //rdata push done
);
    logic                                      CONVFC_mux_sel;

    // Controller <-> conv/fc
    logic                                      conv_start;
    logic                                      conv_conv_en;
    logic                                      conv_Relu_en;
    logic                                      conv_MaxPool_en;
    logic        [            $clog2(128)-1:0] conv_input_channel;
    logic        [            $clog2(128)-1:0] conv_output_channel;
    logic                                      conv_Done;

    logic                                      fc_start;
    logic                                      fc_finish_en;
    logic        [           $clog2(1024)-1:0] fc_input_length;
    logic        [             $clog2(64)-1:0] fc_output_length;
    logic                                      fc_Done;

    logic                                      Data_mem_sel;
    logic                                      dram_move_start;
    logic                                      dram_move_Done;

    // conv/fc <-> weight buffer
    logic        [  $clog2(WT_ADDR_WIDTH)-1:0] conv_WT_raddr;
    logic signed [          WT_DATA_WIDTH-1:0] conv_WT_rdata;
    logic        [  $clog2(WT_ADDR_WIDTH)-1:0] fc_WT_raddr;
    logic signed [          WT_DATA_WIDTH-1:0] fc_WT_rdata;

    // conv/fc <-> data buffer
    logic                                      conv_DATA_we;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] conv_DATA_waddr;
    logic signed [        DATA_DATA_WIDTH-1:0] conv_DATA_wdata;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] conv_DATA_raddr;
    logic signed [        DATA_DATA_WIDTH-1:0] conv_DATA_rdata;

    logic                                      fc_DATA_we;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] fc_DATA_waddr;
    logic signed [        DATA_DATA_WIDTH-1:0] fc_DATA_wdata;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] fc_DATA_raddr;
    logic signed [        DATA_DATA_WIDTH-1:0] fc_DATA_rdata;

    // padding control
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] padding_size;
    logic                                      padding_en;
    logic                                      img_MUX_sel;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] DATA_raddr;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] padding_DATA_raddr;

    // DRAM push image path
    logic                                      img_we;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] img_waddr;
    logic signed [        DATA_DATA_WIDTH-1:0] img_wdata;

    // write/read mux signals
    logic                                      mux_we;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] mux_waddr;
    logic signed [        DATA_DATA_WIDTH-1:0] mux_wdata;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] mux_raddr;

    // Typo-compatibility aliases used in existing instance connections
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] mux_wAddr;
    logic signed [        DATA_DATA_WIDTH-1:0] mux_wData;
    logic                                      DATA_w_sel;
    logic signed [        DATA_DATA_WIDTH-1:0] DATA_rData;

    assign mux_wAddr = mux_waddr;
    assign mux_wData = mux_wdata;
    assign DATA_w_sel = Data_mem_sel;
    assign conv_DATA_rdata = DATA_rData;
    assign fc_DATA_rdata = DATA_rData;

    // Weight ping-pong control path
    logic pingpong_W_sel;
    logic WT_we;
    logic [$clog2(WT_ADDR_WIDTH)-1:0] WT_wAddr;
    logic signed [WT_DATA_WIDTH-1:0] WT_wData;
    logic [$clog2(WT_ADDR_WIDTH)-1:0] WT_rAddr;
    logic signed [WT_DATA_WIDTH-1:0] WT_rData;

    CNN_acc_controller U_CNN_acc_controller (
        .clk             (clk),
        .rst_n           (rst_n),
        //conv_ctrl
        .conv_start      (conv_start),
        .conv_conv_en    (conv_conv_en),
        .conv_Relu_en    (conv_Relu_en),
        .conv_MaxPool_en (conv_MaxPool_en),
        .cnn_Done        (conv_Done),
        //fc_ctrl
        .fc_start        (fc_start),
        .fc_finish_en    (fc_finish_en),
        .fc_input_length (fc_input_length),
        .fc_output_length(fc_output_length),
        .fc_Done         (fc_Done),
        //weight_Move_ctrl
        .dram_move_start (dram_move_start),
        .dram_move_Done  (dram_move_Done),
        //Mem_ctrl
        .img_MUX_sel     (img_MUX_sel),
        .CONVFC_MUX_sel  (CONVFC_mux_sel),
        .pingpong_W_sel  (pingpong_W_sel),    //0 : A write 1 : B write 메모리로 선언
        //outside
        .cnn_start       (start),
        .Done            (done),
        .busy            (busy)
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
        .wt_raddr      (conv_WT_raddr),
        .wt_rdata      (conv_WT_rdata),
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
        .wt_raddr     (fc_WT_raddr),
        .wt_rdata     (fc_WT_rdata),
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
    mux2 #(
        .WIDTH(1 + $clog2(DATA_ADDR_WIDTH) + DATA_DATA_WIDTH)
    ) U_wwrite2DataBuf_MUX (
        .in0({conv_DATA_we, conv_DATA_waddr, conv_DATA_wdata}),
        .in1({fc_DATA_we, fc_DATA_waddr, fc_DATA_wdata}),
        .sel(CONVFC_mux_sel),
        .out({mux_we, mux_waddr, mux_wdata})
    );

    padding #(
        .DATA_ADDR_WIDTH(DATA_ADDR_WIDTH),
        .DATA_DATA_WIDTH(DATA_DATA_WIDTH),
        .IMG_ADDR_WIDH  (128),
        .IMG_DATA_WIDH  (DATA_DATA_WIDTH)
    ) U_padding (
        .padding_size(padding_size),  // 패딩 전 사이즈: 128/64/32
        .img_MUX_sel (img_MUX_sel),
        .padding_en  (padding_en),
        //conv io
        .conv_raddr  (conv_DATA_raddr),  // conv read addr
        .conv_rdata  (conv_DATA_rdata),  // conv read data
        //data_mem
        .data_raddr  (padding_DATA_raddr),
        .data_rdata  (DATA_rData),
        //img_mem
        .img_raddr   (img_raddr),
        .img_rdata   (img_rdata)
    );

    // Data Buffer Raddr
    mux2 #(
        .WIDTH($clog2(DATA_ADDR_WIDTH))
    ) U_raddr2WTBuf_MUX (
        .in0(padding_DATA_raddr),
        .in1(fc_DATA_raddr),
        .sel(CONVFC_mux_sel),
        .out(mux_raddr)
    );

    //Data(254,016 bytes)
    pingpongBuffer #(
        .ADDR_WIDTH(DATA_ADDR_WIDTH),
        .DATA_WIDTH(DATA_DATA_WIDTH)
    ) U_Data_Buffer (
        //buffer ctrl
        .w_sel(pingpong_W_sel),
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

    //-----------------------------weigth----------------------
    mux2 #(
        .WIDTH($clog2(WT_ADDR_WIDTH) + WT_DATA_WIDTH)
    ) U_weigth_raddr_MUX (
        .in0({conv_WT_raddr, conv_WT_rdata}),
        .in1({fc_WT_raddr, fc_WT_rdata}),
        .sel(CONVFC_mux_sel),
        .out({WT_rAddr, WT_rData})
    );

    dram_controller u_dram_controller (
        .clk              (clk),
        .rst_n            (rst_n),
        .start_req        (dram_move_start),
        .sys_addr         (32'h1000_0000),
        .sys_btt          (23'd8),
        .m_axis_cmd_tdata (s_axis_mms2s_cmd_tdata),
        .m_axis_cmd_tvalid(s_axis_mms2s_cmd_tvalid),
        .m_axis_cmd_tready(s_axis_mms2s_cmd_tready)
    );

    assign dram_move_Done = s_axis_mm2s_tlast & s_axis_mm2s_tvalid & s_axis_mm2s_tready;

    //Weigth(20,480 bytes)
    pingpongBuffer #(
        .ADDR_WIDTH(WT_ADDR_WIDTH),
        .DATA_WIDTH(WT_DATA_WIDTH)
    ) U_wight_Buffer (
        //buffer ctrl
        .w_sel(pingpong_W_sel),
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

