`timescale 1ns / 1ps

// CNN의 외부 feature-buffer 포트를 실제 비동기-read ping-pong buffer에
// 연결하여 1개 convolution layer와 2x2 max-pooling을 검증한다.
module tb_CNN_Weight_Loader;
    localparam int NUM_CH      = 8;
    localparam int DATA_DEPTH  = 512;
    localparam int DATA_AW     = $clog2(DATA_DEPTH);
    localparam int WT_DEPTH    = 64;
    localparam int WT_AW       = $clog2(WT_DEPTH);
    localparam int INPUT_W     = 4;
    localparam int INPUT_H     = 4;
    localparam int PAD_W       = INPUT_W + 2;
    localparam int PAD_H       = INPUT_H + 2;
    localparam int POOL_W      = INPUT_W / 2;
    localparam int POOL_H      = INPUT_H / 2;
    localparam int OUT_PER_CH  = POOL_W * POOL_H;

    logic clk = 1'b0;
    logic rst_n = 1'b0;
    logic start = 1'b0;
    logic done;
    logic busy;

    logic weight_ren;
    logic [WT_AW-1:0] weight_addr;
    logic [63:0] weight_rdata;
    logic [WT_AW-1:0] wt_unused_waddr = '0;
    logic [63:0] wt_unused_wdata = '0;
    logic [63:0] packed_weight_word;

    logic cnn_w_sel;
    logic cnn_we;
    logic [DATA_AW-1:0] cnn_wAddr;
    logic signed [7:0] cnn_wData;
    logic [DATA_AW-1:0] cnn_rAddr;
    logic [7:0] buffer_rData;

    logic load_mode = 1'b1;
    logic load_we = 1'b0;
    logic [DATA_AW-1:0] load_wAddr = '0;
    logic [7:0] load_wData = '0;

    logic buffer_w_sel;
    logic buffer_we;
    logic [DATA_AW-1:0] buffer_wAddr;
    logic [7:0] buffer_wData;

    integer errors = 0;
    integer timeout_count;
    integer y;
    integer x;
    integer ch;
    integer py;
    integer px;
    integer ky;
    integer kx;
    integer conv_y;
    integer conv_x;
    integer tap_y;
    integer tap_x;
    integer pixel_value;
    integer conv_sum;
    integer shifted;
    integer candidate;
    integer expected;
    integer actual;
    integer max_value;
    integer write_count = 0;

    always #4 clk = ~clk;

    assign buffer_w_sel = load_mode ? 1'b0       : cnn_w_sel;
    assign buffer_we    = load_mode ? load_we    : cnn_we;
    assign buffer_wAddr = load_mode ? load_wAddr : cnn_wAddr;
    assign buffer_wData = load_mode ? load_wData : cnn_wData;

    always_ff @(posedge clk) begin
        if (cnn_we && !load_mode) begin
            write_count <= write_count + 1;
        end
    end

    CNN #(
        .NUM_CH                    (NUM_CH),
        .NUM_LAYERS                (1),
        .LAYER0_OUTPUT_CHANNELS    (NUM_CH),
        .INPUT_WIDTH               (INPUT_W),
        .INPUT_HEIGHT              (INPUT_H),
        .LAYER0_MAXPOOL_EN         (1'b1),
        .LAYER0_RELU_EN            (1'b1),
        .ENABLE_STANDALONE_POOL    (1'b0),
        .BUFFER_DATA_WIDTH         (8),
        .DATA_ADDR_WIDTH           (DATA_AW),
        .WEIGHT_ADDR_WIDTH         (WT_AW)
    ) U_CNN (
        .clk         (clk),
        .rst_n       (rst_n),
        .start       (start),
        .done        (done),
        .busy        (busy),
        .weight_ren  (weight_ren),
        .weight_addr (weight_addr),
        .weight_rdata(weight_rdata),
        .w_sel       (cnn_w_sel),
        .we          (cnn_we),
        .wAddr       (cnn_wAddr),
        .wData       (cnn_wData),
        .rAddr       (cnn_rAddr),
        .rData       ($signed(buffer_rData))
    );

    pingpongBuffer #(
        .ADDR_WIDTH(DATA_DEPTH),
        .DATA_WIDTH(8)
    ) U_PINGPONG (
        .w_sel (buffer_w_sel),
        .wclk  (clk),
        .we    (buffer_we),
        .wAddr (buffer_wAddr),
        .wData (buffer_wData),
        .rclk  (clk),
        .rAddr (cnn_rAddr),
        .rData (buffer_rData)
    );

    pingpongBuffer #(
        .ADDR_WIDTH(WT_DEPTH),
        .DATA_WIDTH(64)
    ) U_WEIGHT_PINGPONG (
        // w_sel=1 means that Bank A is the read bank.
        .w_sel (1'b1),
        .wclk  (clk),
        .we    (1'b0),
        .wAddr (wt_unused_waddr),
        .wData (wt_unused_wdata),
        .rclk  (clk),
        .rAddr (weight_addr),
        .rData (weight_rdata)
    );

    task automatic write_bank_a(
        input integer addr,
        input integer value
    );
        begin
            @(negedge clk);
            load_we    = 1'b1;
            load_wAddr = addr[DATA_AW-1:0];
            load_wData = value[7:0];
            @(posedge clk);
            #1;
            load_we = 1'b0;
        end
    endtask

    function automatic integer input_at(
        input integer iy,
        input integer ix
    );
        begin
            if ((iy < 0) || (iy >= INPUT_H) ||
                (ix < 0) || (ix >= INPUT_W)) begin
                input_at = 0;
            end else begin
                input_at = iy * INPUT_W + ix + 1;
            end
        end
    endfunction

    function automatic integer signed8(input integer value);
        integer tmp;
        begin
            tmp = value & 8'hff;
            signed8 = (tmp >= 128) ? (tmp - 256) : tmp;
        end
    endfunction

    initial begin
        // 두 bank를 알 수 있는 값으로 초기화한다.
        for (int i = 0; i < DATA_DEPTH; i = i + 1) begin
            U_PINGPONG.U_frameBuffer_A.mem[i] = 8'h00;
            U_PINGPONG.U_frameBuffer_B.mem[i] = 8'hA5;
        end

        // One output group and one input channel:
        //   address 0..8 = Weight K00..K22
        //   address 9    = Bias CH0..CH7
        for (int k = 0; k < 9; k = k + 1) begin
            packed_weight_word = '0;
            for (int c = 0; c < NUM_CH; c = c + 1) begin
                packed_weight_word[c*8 +: 8] = c + 1;
            end
            U_WEIGHT_PINGPONG.U_frameBuffer_A.mem[k] =
                packed_weight_word;
        end

        packed_weight_word = '0;
        for (int c = 0; c < NUM_CH; c = c + 1) begin
            packed_weight_word[c*8 +: 8] = c - 4;
        end
        U_WEIGHT_PINGPONG.U_frameBuffer_A.mem[9] =
            packed_weight_word;

        repeat (5) @(posedge clk);
        rst_n = 1'b1;

        // Bank A에 1-pixel zero padding을 포함한 6x6 입력을 적재한다.
        // w_sel=0일 때 A에 쓰고 B를 읽는다.
        for (y = 0; y < PAD_H; y = y + 1) begin
            for (x = 0; x < PAD_W; x = x + 1) begin
                if ((y == 0) || (y == PAD_H-1) ||
                    (x == 0) || (x == PAD_W-1)) begin
                    write_bank_a(y * PAD_W + x, 0);
                end else begin
                    write_bank_a(
                        y * PAD_W + x,
                        (y - 1) * INPUT_W + (x - 1) + 1
                    );
                end
            end
        end

        @(negedge clk);
        load_mode = 1'b0;
        start = 1'b1;
        @(posedge clk);
        #1;
        start = 1'b0;

        timeout_count = 0;
        while (!done && timeout_count < 5000) begin
            @(posedge clk);
            timeout_count = timeout_count + 1;
        end

        if (!done) begin
            $error("TIMEOUT: CNN done was not asserted");
            errors = errors + 1;
        end

        @(posedge clk);
        #1;

        if (write_count != NUM_CH * OUT_PER_CH) begin
            $error("write count mismatch: expected=%0d actual=%0d",
                   NUM_CH * OUT_PER_CH, write_count);
            errors = errors + 1;
        end

        // CNN은 source bank A를 읽고 destination bank B에 쓴다.
        for (ch = 0; ch < NUM_CH; ch = ch + 1) begin
            for (py = 0; py < POOL_H; py = py + 1) begin
                for (px = 0; px < POOL_W; px = px + 1) begin
                    max_value = -128;

                    // 2x2 convolution 결과를 만든 뒤 그 최대값을 선택한다.
                    for (int oy = 0; oy < 2; oy = oy + 1) begin
                        for (int ox = 0; ox < 2; ox = ox + 1) begin
                            conv_y = py * 2 + oy;
                            conv_x = px * 2 + ox;
                            conv_sum = ch - 4;

                            for (ky = 0; ky < 3; ky = ky + 1) begin
                                for (kx = 0; kx < 3; kx = kx + 1) begin
                                    tap_y = conv_y + ky - 1;
                                    tap_x = conv_x + kx - 1;
                                    pixel_value = input_at(tap_y, tap_x);
                                    conv_sum = conv_sum
                                             + pixel_value * (ch + 1);
                                end
                            end

                            shifted = conv_sum >>> 8;
                            candidate = signed8(shifted);
                            if (candidate > max_value) begin
                                max_value = candidate;
                            end
                        end
                    end

                    // 현재 CNN 설정은 MaxPool 다음 ReLU이다.
                    expected = (max_value < 0) ? 0 : max_value;
                    actual = signed8(
                        U_PINGPONG.U_frameBuffer_B.mem[
                            ch * OUT_PER_CH + py * POOL_W + px
                        ]
                    );

                    if (actual != expected) begin
                        $error("mismatch ch=%0d pool=(%0d,%0d) expected=%0d actual=%0d",
                               ch, py, px, expected, actual);
                        errors = errors + 1;
                    end
                end
            end
        end

        if (errors == 0) begin
            $display("PASS: CNN + Weight_Loader + two pingpong buffers");
            $display("PASS: 64-bit Weight/Bias loading and Conv/Pool/ReLU");
        end else begin
            $fatal(1, "FAIL: %0d error(s)", errors);
        end

        $finish;
    end
endmodule
