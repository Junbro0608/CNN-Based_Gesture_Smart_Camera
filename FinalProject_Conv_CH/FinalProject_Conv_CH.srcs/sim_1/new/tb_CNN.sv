`timescale 1ns / 1ps

module tb_CNN;

    localparam integer NUM_CH             = 2;
    localparam integer NUM_INPUT_CHANNELS = 1;
    localparam integer IMAGE_WIDTH        = 6;
    localparam integer IMAGE_HEIGHT       = 6;
    localparam integer IMAGE_PIXELS       = IMAGE_WIDTH*IMAGE_HEIGHT;
    localparam integer IMAGE_ADDR_WIDTH   = $clog2(IMAGE_PIXELS);
    localparam integer ADDR_WIDTH         = 16;
    localparam integer POOL_WIDTH         = (IMAGE_WIDTH-2)/2;
    localparam integer POOL_HEIGHT        = (IMAGE_HEIGHT-2)/2;

    logic clk = 1'b0;
    logic rst_n;
    logic start;
    logic done;
    logic busy;

    logic                        img_read_enable;
    logic [IMAGE_ADDR_WIDTH-1:0] img_read_addr;
    logic [7:0]                  img_data;
    logic                        img_data_valid;
    logic                        img_data_ready;

    logic                  dram_start_req;
    logic [ADDR_WIDTH-1:0] dram_addr;
    logic [22:0]           dram_btt;

    logic [NUM_CH*8-1:0] weight_axis_tdata;
    logic                weight_axis_tvalid;
    logic                weight_axis_tready;
    logic                weight_axis_tlast;

    integer error_count = 0;
    integer image_request_count = 0;
    integer image_response_count = 0;
    integer dram_request_count = 0;
    integer result_write_count = 0;
    integer word_index;

    CNN #(
        .NUM_CH            (NUM_CH),
        .NUM_INPUT_CHANNELS(NUM_INPUT_CHANNELS),
        .IMAGE_WIDTH       (IMAGE_WIDTH),
        .IMAGE_HEIGHT      (IMAGE_HEIGHT),
        .DATA_ADDR_WIDTH   (ADDR_WIDTH),
        .WEIGHT_ADDR_WIDTH (ADDR_WIDTH),
        .WEIGHT_BASE_ADDR  (16'h2000)
    ) dut (
        .clk               (clk),
        .rst_n             (rst_n),
        .start             (start),
        .done              (done),
        .busy              (busy),
        .img_read_enable   (img_read_enable),
        .img_read_addr     (img_read_addr),
        .img_data          (img_data),
        .img_data_valid    (img_data_valid),
        .img_data_ready    (img_data_ready),
        .dram_start_req    (dram_start_req),
        .dram_addr         (dram_addr),
        .dram_btt          (dram_btt),
        .weight_axis_tdata (weight_axis_tdata),
        .weight_axis_tvalid(weight_axis_tvalid),
        .weight_axis_tready(weight_axis_tready),
        .weight_axis_tlast (weight_axis_tlast)
    );

    always #5 clk = ~clk;

    function automatic logic [NUM_CH*8-1:0] make_weight_word(
        input integer packet_word
    );
        integer channel_index;
        begin
            make_weight_word = '0;

            for (channel_index = 0;
                 channel_index < NUM_CH;
                 channel_index = channel_index + 1) begin
                if (packet_word < 9) begin
                    if (channel_index == 0)
                        make_weight_word[channel_index*8 +: 8] = 8'sd1;
                    else
                        make_weight_word[channel_index*8 +: 8] = -8'sd1;
                end else begin
                    make_weight_word[channel_index*8 +: 8] = 8'sd0;
                end
            end
        end
    endfunction

    // External ping-pong buffer model: the requested pixel appears exactly
    // one clock later together with img_data_valid.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            img_data       <= 8'd0;
            img_data_valid <= 1'b0;
        end else begin
            img_data_valid <= img_read_enable;

            if (img_read_enable)
                img_data <= 8'd20 + img_read_addr;
        end
    end

    // Count and check image requests/responses and internal final writes.
    always @(posedge clk) begin
        if (rst_n && img_read_enable) begin
            if (img_read_addr
                !== image_request_count[IMAGE_ADDR_WIDTH-1:0]) begin
                $error("Image address: expected %0d, got %0d",
                       image_request_count, img_read_addr);
                error_count = error_count + 1;
            end

            image_request_count = image_request_count + 1;
        end

        if (rst_n && img_data_valid)
            image_response_count = image_response_count + 1;

        if (rst_n && dut.controller_data_write_enable) begin
            result_write_count = result_write_count + 1;

            // CH1 uses negative weights, so its post-ReLU result must be zero.
            if ((dut.channel_select == 1)
                && (dut.data_write_data !== 8'd0)) begin
                $error("Negative channel was not clamped to zero by ReLU");
                error_count = error_count + 1;
            end
        end
    end

    // DataMover weight-stream model. Each dram_start_req produces ten
    // 64-bit-equivalent beats (16 bits in this NUM_CH=2 test).
    initial begin
        weight_axis_tdata  = '0;
        weight_axis_tvalid = 1'b0;
        weight_axis_tlast  = 1'b0;

        forever begin
            @(posedge dram_start_req);
            dram_request_count = dram_request_count + 1;

            if (dram_addr !== 16'h2000) begin
                $error("Unexpected weight address %h", dram_addr);
                error_count = error_count + 1;
            end

            if (dram_btt !== 23'd20) begin
                $error("Expected BTT=20, got %0d", dram_btt);
                error_count = error_count + 1;
            end

            for (word_index = 0;
                 word_index < 10;
                 word_index = word_index + 1) begin
                wait (weight_axis_tready === 1'b1);

                @(negedge clk);
                weight_axis_tdata  = make_weight_word(word_index);
                weight_axis_tvalid = 1'b1;
                weight_axis_tlast  = (word_index == 9);

                @(posedge clk);
                #1;

                @(negedge clk);
                weight_axis_tvalid = 1'b0;
                weight_axis_tlast  = 1'b0;
            end
        end
    end

    initial begin
        rst_n = 1'b0;
        start = 1'b0;

        repeat (3) @(posedge clk);
        #1;

        if ((busy !== 1'b0) || (done !== 1'b0)) begin
            $error("Reset status outputs are incorrect");
            error_count = error_count + 1;
        end

        rst_n = 1'b1;

        @(negedge clk);
        start = 1'b1;

        @(posedge clk);
        #1;

        if (busy !== 1'b1) begin
            $error("CNN did not become busy after start");
            error_count = error_count + 1;
        end

        @(negedge clk);
        start = 1'b0;

        wait (done === 1'b1);
        #1;

        if (image_request_count != IMAGE_PIXELS) begin
            $error("Expected %0d image requests, got %0d",
                   IMAGE_PIXELS, image_request_count);
            error_count = error_count + 1;
        end

        if (image_response_count != IMAGE_PIXELS) begin
            $error("Expected %0d image responses, got %0d",
                   IMAGE_PIXELS, image_response_count);
            error_count = error_count + 1;
        end

        if (dram_request_count != POOL_WIDTH*POOL_HEIGHT) begin
            $error("Expected %0d weight requests, got %0d",
                   POOL_WIDTH*POOL_HEIGHT, dram_request_count);
            error_count = error_count + 1;
        end

        if (result_write_count != POOL_WIDTH*POOL_HEIGHT*NUM_CH) begin
            $error("Expected %0d result writes, got %0d",
                   POOL_WIDTH*POOL_HEIGHT*NUM_CH,
                   result_write_count);
            error_count = error_count + 1;
        end

        @(posedge clk);
        #1;

        if ((busy !== 1'b0) || (done !== 1'b0)) begin
            $error("CNN did not return to idle after done");
            error_count = error_count + 1;
        end

        if (error_count == 0)
            $display("PASS: all integrated CNN tests passed");
        else
            $fatal(1,
                   "FAIL: %0d integrated CNN test(s) failed",
                   error_count);

        $finish;
    end

    initial begin
        #50000;
        $fatal(1, "FAIL: integrated CNN test timed out");
    end

endmodule
