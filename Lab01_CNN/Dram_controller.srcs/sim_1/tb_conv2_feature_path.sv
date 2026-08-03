`timescale 1ns / 1ps

module tb_conv2_feature_path;

    localparam int IMG_WIDTH = 128;
    localparam int IMG_PIXELS = IMG_WIDTH * IMG_WIDTH;
    localparam int BUFFER_DEPTH = 64 * 64 * 16;
    localparam int CONV1_OUTPUT_PIXELS = 64 * 64;
    localparam int CONV2_OUTPUT_PIXELS = 32 * 32;
    localparam int EXPECTED_CONV1_WRITES = CONV1_OUTPUT_PIXELS;
    localparam int EXPECTED_CONV2_WRITES = CONV2_OUTPUT_PIXELS;

    logic clk;
    logic rst_n;
    logic start;
    logic done;
    logic busy;
    logic [31:0] raddr;
    logic signed [7:0] rdata;
    logic [7:0] tile_index;
    logic [7:0] pad_row;
    logic [7:0] pad_col;
    logic we;
    logic w_sel;
    logic [31:0] waddr;
    logic signed [7:0] wdata;
    logic packed_we;
    logic packed_w_sel;
    logic [31:0] packed_waddr;
    logic [63:0] packed_wdata;
    logic weight_ren;
    logic [31:0] weight_addr;
    logic [63:0] weight_rdata;

    logic [$clog2(IMG_PIXELS)-1:0] img_raddr;
    logic signed [7:0] img_rdata;
    logic signed [7:0] img_mem [0:IMG_PIXELS-1];
    logic [$clog2(BUFFER_DEPTH)-1:0] padding_data_raddr;
    logic [$clog2(BUFFER_DEPTH)-1:0] delayed_data_raddr;
    logic signed [7:0] padding_data_rdata;
    logic signed [7:0] buffer_a [0:BUFFER_DEPTH-1];
    logic signed [7:0] buffer_b [0:BUFFER_DEPTH-1];

    integer conv1_write_count;
    integer conv2_write_count;
    integer error_count;
    integer image_index;
    integer buffer_index;
    integer cycle_count;
    integer ch_index;
    integer plane_pixels;

    conv #(
        .NUM_CH(8),
        .NUM_LAYERS(2),
        .INPUT_WIDTH(IMG_WIDTH),
        .INPUT_HEIGHT(IMG_WIDTH),
        .LAYER0_OUTPUT_CHANNELS(8),
        .LAYER1_OUTPUT_CHANNELS(8),
        .PACKED_WRITE_EN(1'b1),
        .ENABLE_STANDALONE_POOL(1'b0)
    ) dut (
        .clk         (clk),
        .rst_n       (rst_n),
        .start       (start),
        .done        (done),
        .busy        (busy),
        .rAddr       (raddr),
        .rData       (rdata),
        .tile_index  (tile_index),
        .pad_row     (pad_row),
        .pad_col     (pad_col),
        .we          (we),
        .w_sel       (w_sel),
        .wAddr       (waddr),
        .wData       (wdata),
        .packed_we   (packed_we),
        .packed_w_sel(packed_w_sel),
        .packed_wAddr(packed_waddr),
        .packed_wData(packed_wdata),
        .weight_ren  (weight_ren),
        .weight_addr (weight_addr),
        .weight_rdata(weight_rdata)
    );

    padding #(
        .DATA_ADDR_WIDTH(BUFFER_DEPTH),
        .DATA_DATA_WIDTH(8),
        .IMG_ADDR_WIDH(IMG_WIDTH),
        .IMG_DATA_WIDH(8),
        .TILE_INDEX_WIDTH(8)
    ) u_padding (
        .clk            (clk),
        .rst_n          (rst_n),
        .padding_size   ((dut.layer_index == 0) ? 8'd128 : 8'd64),
        .img_MUX_sel    (dut.layer_index == 0),
        .padding_en     (1'b1),
        .direct_raddr_en(1'b0),
        .direct_raddr   ('0),
        .tile_index     (tile_index),
        .pad_row        (pad_row),
        .pad_col        (pad_col),
        .conv_rdata     (rdata),
        .data_raddr     (padding_data_raddr),
        .data_rdata     (padding_data_rdata),
        .img_raddr      (img_raddr),
        .img_rdata      (img_rdata)
    );

    always #4 clk = ~clk;

    always @(posedge clk) begin
        img_rdata <= img_mem[img_raddr];
        delayed_data_raddr <= padding_data_raddr;
        padding_data_rdata <= buffer_b[delayed_data_raddr];

        if (weight_addr < (dut.layer_index == 0 ? 9 : 72))
            weight_rdata <= {8{8'sd1}};
        else
            weight_rdata <= '0;

        if (we) begin
            error_count <= error_count + 1;
            if (error_count < 8)
                $display("[FAIL] legacy scalar write asserted in packed mode");
        end

        if (packed_we) begin
            plane_pixels = (dut.layer_index == 0)
                ? CONV1_OUTPUT_PIXELS : CONV2_OUTPUT_PIXELS;

            for (ch_index = 0; ch_index < 8; ch_index = ch_index + 1) begin
                if (packed_w_sel)
                    buffer_b[packed_waddr + (ch_index * plane_pixels)]
                        <= $signed(packed_wdata[ch_index*8 +: 8]);
                else
                    buffer_a[packed_waddr + (ch_index * plane_pixels)]
                        <= $signed(packed_wdata[ch_index*8 +: 8]);
            end

            if (dut.layer_index == 0) begin
                conv1_write_count <= conv1_write_count + 1;
                for (ch_index = 0; ch_index < 8; ch_index = ch_index + 1)
                    if ($signed(packed_wdata[ch_index*8 +: 8]) !== 8'sd3) begin
                        error_count <= error_count + 1;
                        if (error_count < 8)
                            $display("[FAIL] Conv1 addr=%0d ch=%0d got=%0d exp=3",
                                     packed_waddr, ch_index,
                                     $signed(packed_wdata[ch_index*8 +: 8]));
                    end
            end else begin
                conv2_write_count <= conv2_write_count + 1;
                for (ch_index = 0; ch_index < 8; ch_index = ch_index + 1)
                    if ($signed(packed_wdata[ch_index*8 +: 8]) !== 8'sd1) begin
                        error_count <= error_count + 1;
                        if (error_count < 8)
                            $display("[FAIL] Conv2 addr=%0d ch=%0d got=%0d exp=1",
                                     packed_waddr, ch_index,
                                     $signed(packed_wdata[ch_index*8 +: 8]));
                    end
            end
        end
    end

    task automatic pulse_start;
        begin
            @(posedge clk);
            start <= 1'b1;
            @(posedge clk);
            start <= 1'b0;
        end
    endtask

    task automatic wait_done;
        begin
            cycle_count = 0;
            while ((done !== 1'b1) && (cycle_count < 4_000_000)) begin
                @(posedge clk);
                cycle_count = cycle_count + 1;
            end
            if (done !== 1'b1) begin
                error_count = error_count + 1;
                $display("[FAIL] stage timeout after %0d cycles", cycle_count);
            end
        end
    endtask

    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        start = 1'b0;
        img_rdata = '0;
        delayed_data_raddr = '0;
        padding_data_rdata = '0;
        weight_rdata = '0;
        conv1_write_count = 0;
        conv2_write_count = 0;
        error_count = 0;

        for (image_index = 0; image_index < IMG_PIXELS; image_index = image_index + 1)
            img_mem[image_index] = 8'sd127;
        for (buffer_index = 0; buffer_index < BUFFER_DEPTH; buffer_index = buffer_index + 1) begin
            buffer_a[buffer_index] = '0;
            buffer_b[buffer_index] = '0;
        end

        repeat (3) @(posedge clk);
        rst_n = 1'b1;

        pulse_start();
        wait_done();
        while (done === 1'b1) @(posedge clk);

        pulse_start();
        wait_done();
        @(posedge clk);

        if (conv1_write_count != EXPECTED_CONV1_WRITES) begin
            error_count = error_count + 1;
            $display("[FAIL] Conv1 write count=%0d exp=%0d", conv1_write_count, EXPECTED_CONV1_WRITES);
        end
        if (conv2_write_count != EXPECTED_CONV2_WRITES) begin
            error_count = error_count + 1;
            $display("[FAIL] Conv2 write count=%0d exp=%0d", conv2_write_count, EXPECTED_CONV2_WRITES);
        end

        if (error_count == 0)
            $display("PASS: Conv2 feature path wrote %0d packed vectors of 1", EXPECTED_CONV2_WRITES);
        else
            $display("FAIL: Conv2 feature path errors=%0d", error_count);
        $finish;
    end

endmodule