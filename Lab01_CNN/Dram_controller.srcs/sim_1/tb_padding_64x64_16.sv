`timescale 1ns / 1ps

module tb_padding_64x64_16;

    localparam int SRC_W = 64;
    localparam int SRC_H = 64;
    localparam int TILE_COUNT = 16;
    localparam int PAD_W = SRC_W + 2;
    localparam int SRC_PIXELS = SRC_W * SRC_H * TILE_COUNT;
    localparam int PAD_PIXELS = PAD_W * PAD_W * TILE_COUNT;

    localparam string SRC_MEM_FILE = "./test_img/mem_out_64x64_16/data_64x64x16.mem";
    localparam string EXPECTED_RDATA_FILE = "./test_img/mem_out_64x64_16/expected_pad_66x66x16.mem";
    localparam string EXPECTED_RADDR_FILE = "./test_img/mem_out_64x64_16/expected_data_raddr_66x66x16.mem";

    logic [7:0] padding_size;
    logic img_MUX_sel;
    logic padding_en;
    logic [$clog2(TILE_COUNT)-1:0] tile_index;
    logic [7:0] pad_row;
    logic [7:0] pad_col;
    logic signed [7:0] conv_rdata;
    logic [$clog2(PAD_PIXELS)-1:0] data_raddr;
    logic signed [7:0] data_rdata;
    logic [$clog2(128 * 128)-1:0] img_raddr;
    logic signed [7:0] img_rdata;

    logic signed [7:0] source_mem [0:SRC_PIXELS-1];
    logic signed [7:0] expected_rdata_mem [0:PAD_PIXELS-1];
    logic [$clog2(PAD_PIXELS)-1:0] expected_raddr_mem [0:PAD_PIXELS-1];

    int error_count;
    int idx;

    padding #(
        .DATA_ADDR_WIDTH(PAD_PIXELS),
        .DATA_DATA_WIDTH(8),
        .IMG_ADDR_WIDH(128),
        .IMG_DATA_WIDH(8),
        .TILE_INDEX_WIDTH($clog2(TILE_COUNT))
    ) dut (
        .padding_size(padding_size),
        .img_MUX_sel(img_MUX_sel),
        .padding_en(padding_en),
        .tile_index(tile_index),
        .pad_row(pad_row),
        .pad_col(pad_col),
        .conv_rdata(conv_rdata),
        .data_raddr(data_raddr),
        .data_rdata(data_rdata),
        .img_raddr(img_raddr),
        .img_rdata(img_rdata)
    );

    always_comb begin
        if (data_raddr < SRC_PIXELS) begin
            data_rdata = source_mem[data_raddr];
        end else begin
            data_rdata = '0;
        end
        img_rdata = '0;
    end

    task automatic check_value(input string label, input logic signed [7:0] got, input logic signed [7:0] exp);
        begin
            if (got !== exp) begin
                error_count = error_count + 1;
                $display("[FAIL] %s: got=%0d exp=%0d", label, got, exp);
            end
        end
    endtask

    task automatic check_addr(input string label, input logic [$clog2(PAD_PIXELS)-1:0] got, input logic [$clog2(PAD_PIXELS)-1:0] exp);
        begin
            if (got !== exp) begin
                error_count = error_count + 1;
                $display("[FAIL] %s: got=%0d exp=%0d", label, got, exp);
            end
        end
    endtask

    initial begin
        error_count = 0;
        padding_size = 64;
        img_MUX_sel = 1'b0;
        padding_en = 1'b1;
        tile_index = '0;
        pad_row = '0;
        pad_col = '0;

        $readmemh(SRC_MEM_FILE, source_mem);
        $readmemh(EXPECTED_RDATA_FILE, expected_rdata_mem);
        $readmemh(EXPECTED_RADDR_FILE, expected_raddr_mem);

        for (int t = 0; t < TILE_COUNT; t = t + 1) begin
            for (int row = 0; row < PAD_W; row = row + 1) begin
                for (int col = 0; col < PAD_W; col = col + 1) begin
                    idx = (t * PAD_W * PAD_W) + (row * PAD_W) + col;
                    tile_index = t[$clog2(TILE_COUNT)-1:0];
                    pad_row = row[7:0];
                    pad_col = col[7:0];
                    #1;
                    check_value($sformatf("conv_rdata[t=%0d,r=%0d,c=%0d]", t, row, col), conv_rdata, expected_rdata_mem[idx]);
                    check_addr($sformatf("data_raddr[t=%0d,r=%0d,c=%0d]", t, row, col), data_raddr, expected_raddr_mem[idx]);
                end
            end
        end

        if (error_count == 0) begin
            $display("ALL TESTS PASSED: %0d padded addresses checked", PAD_PIXELS);
        end else begin
            $display("TEST FAILED: %0d mismatches", error_count);
        end

        $finish;
    end

endmodule