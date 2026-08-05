`timescale 1ns / 1ps

module tb_padding_sync_latency;

    localparam int IMG_WIDTH = 128;
    localparam int IMG_PIXELS = IMG_WIDTH * IMG_WIDTH;
    localparam int REQUEST_COUNT = 8;

    logic clk;
    logic rst_n;
    logic [7:0] padding_size;
    logic img_MUX_sel;
    logic padding_en;
    logic [7:0] tile_index;
    logic [7:0] pad_row;
    logic [7:0] pad_col;
    logic signed [7:0] conv_rdata;
    logic [$clog2(64 * 64 * 16)-1:0] data_raddr;
    logic signed [7:0] data_rdata;
    logic [$clog2(IMG_PIXELS)-1:0] img_raddr;
    logic signed [7:0] img_rdata;
    logic signed [7:0] img_mem [0:IMG_PIXELS-1];

    logic request_active;
    logic expected_valid_0;
    logic expected_valid_1;
    logic expected_valid_2;
    logic signed [7:0] expected_data_0;
    logic signed [7:0] expected_data_1;
    logic signed [7:0] expected_data_2;
    integer request_index;
    integer checked_count;
    integer error_count;
    integer index;

    padding #(
        .DATA_ADDR_WIDTH(64 * 64 * 16),
        .DATA_DATA_WIDTH(8),
        .IMG_ADDR_WIDH(IMG_WIDTH),
        .IMG_DATA_WIDH(8),
        .TILE_INDEX_WIDTH(8)
    ) dut (
        .clk            (clk),
        .rst_n          (rst_n),
        .padding_size   (padding_size),
        .img_MUX_sel    (img_MUX_sel),
        .padding_en     (padding_en),
        .direct_raddr_en(1'b0),
        .direct_raddr   ('0),
        .tile_index     (tile_index),
        .pad_row        (pad_row),
        .pad_col        (pad_col),
        .conv_rdata     (conv_rdata),
        .data_raddr     (data_raddr),
        .data_rdata     (data_rdata),
        .img_raddr      (img_raddr),
        .img_rdata      (img_rdata)
    );

    always #4 clk = ~clk;

    // Same one-cycle synchronous image BRAM model used by the full-image TB.
    always_ff @(posedge clk) begin
        img_rdata <= img_mem[img_raddr];
    end

    always_ff @(posedge clk) begin
        if (!rst_n) begin
            expected_valid_0 <= 1'b0;
            expected_valid_1 <= 1'b0;
            expected_valid_2 <= 1'b0;
            expected_data_0 <= '0;
            expected_data_1 <= '0;
            expected_data_2 <= '0;
            checked_count <= 0;
            error_count <= 0;
        end else begin
            if (expected_valid_2) begin
                checked_count <= checked_count + 1;
                if (conv_rdata !== expected_data_2) begin
                    error_count <= error_count + 1;
                    $display("[FAIL] request data=%0d, captured=%0d at t=%0t",
                             expected_data_2, conv_rdata, $time);
                end
            end

            expected_valid_2 <= expected_valid_1;
            expected_data_2 <= expected_data_1;
            expected_valid_1 <= expected_valid_0;
            expected_data_1 <= expected_data_0;
            expected_valid_0 <= request_active;
            if (request_active)
                expected_data_0 <= img_mem[((pad_row - 1) << 7) + (pad_col - 1)];
        end
    end

    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        padding_size = 8'd128;
        img_MUX_sel = 1'b1;
        padding_en = 1'b1;
        tile_index = '0;
        pad_row = 8'd1;
        pad_col = 8'd1;
        data_rdata = '0;
        request_active = 1'b0;
        request_index = 0;

        for (index = 0; index < IMG_PIXELS; index = index + 1)
            img_mem[index] = index[7:0];

        repeat (2) @(posedge clk);
        rst_n = 1'b1;
        request_active = 1'b1;

        for (request_index = 0; request_index < REQUEST_COUNT;
             request_index = request_index + 1) begin
            @(negedge clk);
            pad_row = 8'd1;
            pad_col = request_index + 1;
        end

        @(negedge clk);
        request_active = 1'b0;
        repeat (4) @(posedge clk);

        if ((error_count == 0) && (checked_count == REQUEST_COUNT))
            $display("PASS: synchronous image data matches the three-cycle Conv read contract");
        else
            $display("FAIL: checked=%0d expected=%0d errors=%0d",
                     checked_count, REQUEST_COUNT, error_count);
        $finish;
    end

endmodule