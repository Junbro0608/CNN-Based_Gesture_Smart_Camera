module CNN_accelerator #(
    parameter WT_DEPTH = 11243,   //절대 가중치
    parameter MAX_LAYER_WORDS    = 8224,  //상대 가중치
    parameter WT_DATA_WIDTH    = 64,
    parameter DATA_ADDR_WIDTH  = 64 * 64 * 16,
    parameter DATA_DATA_WIDTH  = 8,
    parameter IMG_ADDR_WIDH    = 128,
    parameter IMG_DATA_WIDH    = 8
) (
    input  logic                                                  sysclk,
    input  logic                                                  rst_n,
    input  logic                                                  start,
    output logic                                                  done,
    output logic                                                  busy,
    output logic                                                  result,
    //push img
    output logic        [$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0] img_raddr,
    input  logic signed [               IMG_DATA_WIDH-1:0] img_rdata
);
    logic                                      CONVFC_mux_sel;

    // Controller <-> conv/fc
    logic                                      conv_start;
    logic                                      conv_conv_en;
    logic                                      conv_Relu_en;
    logic                                      conv_MaxPool_en;
    logic                                      conv_Done;

    logic                                      fc_start;
    logic                                      fc_finish_en;
    logic        [           $clog2(1024)-1:0] fc_input_length;
    logic        [             $clog2(64)-1:0] fc_output_length;
    logic                                      fc_Done;
    logic        [                        2:0] layer;

    // conv/fc <-> weight buffer
    logic        [$clog2(MAX_LAYER_WORDS)-1:0] conv_WT_raddr;
    logic        [$clog2(MAX_LAYER_WORDS)-1:0] fc_WT_raddr;

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
    logic        [                        7:0] padding_size;
    logic                                      padding_en;
    logic                                      padding_en_reg;
    logic                                      img_MUX_sel;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] padding_DATA_raddr;
    logic [$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0] padding_img_raddr;
    logic        [                        7:0] conv_tile_index;
    logic        [                        7:0] conv_pad_row;
    logic        [                        7:0] conv_pad_col;

    // write/read mux signals
    logic                                      mux_we;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] mux_waddr;
    logic signed [        DATA_DATA_WIDTH-1:0] mux_wdata;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] mux_raddr;

    // Typo-compatibility aliases used in existing instance connections
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] mux_wAddr;
    logic signed [        DATA_DATA_WIDTH-1:0] mux_wData;
    logic signed [        DATA_DATA_WIDTH-1:0] DATA_rData;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] padding_raddr_reg;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] conv_data_raddr;
    logic                                      clk;

    assign clk = sysclk;

    assign mux_wAddr = mux_waddr;
    assign mux_wData = mux_wdata;
    assign fc_DATA_rdata = DATA_rData;

    // Weight ping-pong control path
    logic                                      pingpong_W_sel;
    logic        [$clog2(MAX_LAYER_WORDS)-1:0] WT_rAddr;
    logic signed [          WT_DATA_WIDTH-1:0] WT_rData;
    logic                                      conv_w_sel_unused;
    logic                                      conv_packed_we_unused;
    logic                                      conv_packed_w_sel_unused;
    logic        [$clog2(DATA_ADDR_WIDTH)-1:0] conv_packed_waddr_unused;
    logic        [16*DATA_DATA_WIDTH-1:0]      conv_packed_wdata_unused;
    logic                                      conv_weight_ren_unused;

    CNN_acc_controller U_CNN_acc_controller (
        .clk             (clk),
        .rst_n           (rst_n),
        //conv_ctrl
        .conv_start      (conv_start),
        .conv_conv_en    (),
        .conv_Relu_en    (),
        .conv_MaxPool_en (),
        .cnn_Done        (conv_Done),
        //fc_ctrl
        .fc_start        (fc_start),
        .fc_finish_en    (fc_finish_en),
        .fc_input_length (fc_input_length),
        .fc_output_length(fc_output_length),
        .fc_Done         (fc_Done),
        //padding_ctrl
        .padding_size    (padding_size),      // 패딩 전 사이즈: 128/64/32
        .img_MUX_sel     (img_MUX_sel),
        .padding_en      (padding_en),
        //weight layer select
        .layer           (layer),
        //Mem_ctrl
        .CONVFC_MUX_sel  (CONVFC_mux_sel),
        .pingpong_W_sel  (pingpong_W_sel),    //0 : A write 1 : B write 메모리로 선언
        //outside
        .cnn_start       (start),
        .Done            (done),
        .busy            (busy)
    );

    //-----------------------------연산---------------------------------
    conv #(
        .NUM_CH                (16),
        .NUM_LAYERS            (3),
        .INPUT_WIDTH           (128),
        .INPUT_HEIGHT          (128),
        .DATA_ADDR_WIDTH       ($clog2(DATA_ADDR_WIDTH)),
        .WEIGHT_ADDR_WIDTH     ($clog2(MAX_LAYER_WORDS)),
        .LAYER0_OUTPUT_CHANNELS(16),
        .LAYER1_OUTPUT_CHANNELS(32),
        .LAYER2_OUTPUT_CHANNELS(64),
        .WEIGHT_WORD_WIDTH     (WT_DATA_WIDTH)
    ) U_conv (
        .clk         (clk),
        .rst_n       (rst_n),
        .start       (conv_start),
        .done        (conv_Done),
        .busy        (),
        .rAddr       (conv_DATA_raddr),
        .rData       (conv_DATA_rdata),
        .tile_index  (conv_tile_index),
        .pad_row     (conv_pad_row),
        .pad_col     (conv_pad_col),
        .we          (conv_DATA_we),
        .w_sel       (conv_w_sel_unused),
        .wAddr       (conv_DATA_waddr),
        .wData       (conv_DATA_wdata),
        .packed_we   (conv_packed_we_unused),
        .packed_w_sel(conv_packed_w_sel_unused),
        .packed_wAddr(conv_packed_waddr_unused),
        .packed_wData(conv_packed_wdata_unused),
        .weight_ren  (conv_weight_ren_unused),
        .weight_addr (conv_WT_raddr),
        .weight_rdata(WT_rData)
    );

    fc #(
        .WT_ADDR_WIDTH  (MAX_LAYER_WORDS),
        .WT_DATA_WIDTH  (WT_DATA_WIDTH),
        .DATA_ADDR_WIDTH(DATA_ADDR_WIDTH),
        .DATA_DATA_WIDTH(DATA_DATA_WIDTH)
    ) U_FC (
        .clk          (clk),
        .rst_n        (rst_n),
        //CNN ctrl
        .start        (fc_start),
        .layer        (layer),
        .finish_en    (fc_finish_en),
        .input_length (fc_input_length),
        .output_length({4'd0, fc_output_length}),
        .Done         (fc_Done),
        //weight side
        .wt_raddr     (fc_WT_raddr),
        .wt_rdata     (WT_rData),
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
        .IMG_ADDR_WIDH(128),
        .IMG_DATA_WIDH(IMG_DATA_WIDH),
        .TILE_INDEX_WIDTH(8)
    ) U_padding (
        .clk         (clk),
        .rst_n       (rst_n),
        .padding_size(padding_size),        // 패딩 전 사이즈: 128/64/32
        .img_MUX_sel (img_MUX_sel),
        .padding_en  (padding_en_reg),
        .direct_raddr_en(!padding_en_reg && !CONVFC_mux_sel),
        .direct_raddr(conv_DATA_raddr),
        //conv 좌표 io
        .tile_index  (conv_tile_index),
        .pad_row     (conv_pad_row),
        .pad_col     (conv_pad_col),
        .conv_rdata  (conv_DATA_rdata),     // conv read data
        //data_mem
        .data_raddr  (padding_DATA_raddr),
        .data_rdata  (DATA_rData),
        //img_mem
        .img_raddr   (padding_img_raddr),
        .img_rdata   (img_rdata)
    );

    // The registered padding address and this top-level address register give
    // Conv requests a three-cycle return latency. Pool4/5
    // direct reads and FC reads retain their original one-cycle latency.
    always_ff @(posedge clk) begin
        if (!rst_n) begin
            padding_raddr_reg <= '0;
            padding_en_reg <= 1'b0;
        end else begin
            padding_raddr_reg <= padding_DATA_raddr;
            padding_en_reg <= padding_en;
        end
    end

    assign conv_data_raddr = padding_en_reg
        ? padding_raddr_reg : padding_DATA_raddr;
    assign img_raddr = padding_img_raddr;

    // Data Buffer Raddr
    mux2 #(
        .WIDTH($clog2(DATA_ADDR_WIDTH))
    ) U_raddr2WTBuf_MUX (
        .in0(conv_data_raddr),
        .in1(fc_DATA_raddr),
        .sel(CONVFC_mux_sel),
        .out(mux_raddr)
    );

    //Data
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
        .WIDTH($clog2(MAX_LAYER_WORDS))
    ) U_weigth_raddr_MUX (
        .in0(conv_WT_raddr),
        .in1(fc_WT_raddr),
        .sel(CONVFC_mux_sel),
        .out(WT_rAddr)
    );

    weight_mem #(
        .WT_DEPTH       (WT_DEPTH),
        .MAX_LAYER_WORDS(MAX_LAYER_WORDS),
        .DATA_WIDTH     (WT_DATA_WIDTH)
    ) U_weight_mem (
        .rclk (clk),
        .layer(layer),
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

