`timescale 1ns / 1ps

module tb_conv1_image_path;

    localparam int IMG_WIDTH = 128;
    localparam int IMG_PIXELS = IMG_WIDTH * IMG_WIDTH;
    localparam int EXPECTED_WRITES = 8 * 64 * 64;
    localparam logic signed [7:0] EXPECTED_VALUE = 8'sd3;

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
    logic weight_ren;
    logic [31:0] weight_addr;
    logic [63:0] weight_rdata;

    logic [$clog2(IMG_PIXELS)-1:0] img_raddr;
    logic signed [7:0] img_rdata;
    logic signed [7:0] img_mem [0:IMG_PIXELS-1];
    logic [15:0] padding_data_raddr;
    logic signed [7:0] padding_data_rdata;

    integer write_count;
    integer error_count;
    integer image_index;
    integer cycle_count;

    conv #(
        .NUM_CH(8),
        .NUM_LAYERS(1),
        .INPUT_WIDTH(IMG_WIDTH),
        .INPUT_HEIGHT(IMG_WIDTH),
        .LAYER0_OUTPUT_CHANNELS(8),
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
        .weight_ren  (weight_ren),
        .weight_addr (weight_addr),
        .weight_rdata(weight_rdata)
    );

    padding #(
        .DATA_ADDR_WIDTH(64 * 64 * 16),
        .DATA_DATA_WIDTH(8),
        .IMG_ADDR_WIDH(IMG_WIDTH),
        .IMG_DATA_WIDH(8),
        .TILE_INDEX_WIDTH(8)
    ) u_padding (
        .clk            (clk),
        .rst_n          (rst_n),
        .padding_size   (8'd128),
        .img_MUX_sel    (1'b1),
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
        if (weight_addr < 9)
            weight_rdata <= {8{8'sd1}};
        else
            weight_rdata <= '0;
    end

    always @(posedge clk) begin
        if (we) begin
            write_count <= write_count + 1;
            if ($signed(wdata) !== EXPECTED_VALUE) begin
                error_count <= error_count + 1;
                $display("[FAIL] write addr=%0d got=%0d exp=%0d", waddr,
                         $signed(wdata), EXPECTED_VALUE);
            end
        end
    end

    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        start = 1'b0;
        img_rdata = '0;
        weight_rdata = '0;
        padding_data_rdata = '0;
        write_count = 0;
        error_count = 0;

        for (image_index = 0; image_index < IMG_PIXELS;
             image_index = image_index + 1)
            img_mem[image_index] = 8'sd127;

        repeat (3) @(posedge clk);
        rst_n = 1'b1;
        @(posedge clk);
        start = 1'b1;
        @(posedge clk);
        start = 1'b0;

        cycle_count = 0;
        while ((done !== 1'b1) && (cycle_count < 2_000_000)) begin
            @(posedge clk);
            cycle_count = cycle_count + 1;
        end

        if (done !== 1'b1) begin
            error_count = error_count + 1;
            $display("[FAIL] Conv1 timeout after %0d cycles", cycle_count);
        end

        @(posedge clk);
        if (write_count != EXPECTED_WRITES) begin
            error_count = error_count + 1;
            $display("[FAIL] write count=%0d exp=%0d", write_count,
                     EXPECTED_WRITES);
        end

        if (error_count == 0)
            $display("PASS: Conv1 image path wrote %0d values of %0d",
                     write_count, EXPECTED_VALUE);
        else
            $display("FAIL: Conv1 image path errors=%0d", error_count);
        $finish;
    end

endmodule