`timescale 1ns / 1ps

module tb_padding_sizes;

    localparam int DATA_DATA_WIDTH = 8;
    localparam int IMG_ADDR_WIDH   = 128;
    localparam int IMG_DATA_WIDH   = 8;

    // Use two tiles so tile_index mapping can be verified.
    localparam int MAX_SIZE         = 128;
    localparam int TILE_COUNT       = 2;
    localparam int DATA_ADDR_WIDTH  = MAX_SIZE * MAX_SIZE * TILE_COUNT;
    localparam int TILE_INDEX_WIDTH = $clog2(TILE_COUNT);

    logic [7:0] padding_size;
    logic img_MUX_sel;
    logic padding_en;
    logic [TILE_INDEX_WIDTH-1:0] tile_index;
    logic [7:0] pad_row;
    logic [7:0] pad_col;
    logic signed [DATA_DATA_WIDTH-1:0] conv_rdata;
    logic [$clog2(DATA_ADDR_WIDTH)-1:0] data_raddr;
    logic signed [DATA_DATA_WIDTH-1:0] data_rdata;
    logic [$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0] img_raddr;
    logic signed [IMG_DATA_WIDH-1:0] img_rdata;

    logic signed [DATA_DATA_WIDTH-1:0] data_mem [0:DATA_ADDR_WIDTH-1];
    logic signed [IMG_DATA_WIDH-1:0] img_mem [0:(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1];

    int error_count;

    padding #(
        .DATA_ADDR_WIDTH(DATA_ADDR_WIDTH),
        .DATA_DATA_WIDTH(DATA_DATA_WIDTH),
        .IMG_ADDR_WIDH(IMG_ADDR_WIDH),
        .IMG_DATA_WIDH(IMG_DATA_WIDH),
        .TILE_INDEX_WIDTH(TILE_INDEX_WIDTH)
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

    function automatic logic signed [7:0] data_model(input int unsigned addr);
        data_model = $signed(((addr * 3) % 127) - 63);
    endfunction

    function automatic logic signed [7:0] img_model(input int unsigned addr);
        img_model = $signed(((addr * 5) % 127) - 63);
    endfunction

    always_comb begin
        data_rdata = data_mem[data_raddr];
        img_rdata  = img_mem[img_raddr];
    end

    task automatic init_memories;
        int i;
        begin
            for (i = 0; i < DATA_ADDR_WIDTH; i = i + 1) begin
                data_mem[i] = data_model(i);
            end
            for (i = 0; i < (IMG_ADDR_WIDH * IMG_ADDR_WIDH); i = i + 1) begin
                img_mem[i] = img_model(i);
            end
        end
    endtask

    task automatic check_one(
        input int size_n,
        input bit use_padding,
        input bit use_img_mux,
        input int t,
        input int r,
        input int c
    );
        int pad_w;
        int unsigned expected_src;
        int unsigned expected_img_addr;
        bit inside_valid;
        logic signed [7:0] expected_data;
        begin
            pad_w = size_n + 2;

            if (use_padding) begin
                inside_valid = (r > 0) && (r < (pad_w - 1)) && (c > 0) && (c < (pad_w - 1));
                expected_src = (t * size_n * size_n) + ((r - 1) * size_n) + (c - 1);
            end else begin
                inside_valid = (r < size_n) && (c < size_n);
                expected_src = (t * size_n * size_n) + (r * size_n) + c;
            end

            padding_size = size_n[7:0];
            padding_en   = use_padding;
            img_MUX_sel  = use_img_mux;
            tile_index   = t[TILE_INDEX_WIDTH-1:0];
            pad_row      = r[7:0];
            pad_col      = c[7:0];
            #1;

            if (!inside_valid) begin
                if (conv_rdata !== 0) begin
                    error_count = error_count + 1;
                    $display("[FAIL] size=%0d pad=%0d mux=%0d tile=%0d r=%0d c=%0d: border/outside conv_rdata=%0d exp=0",
                             size_n, use_padding, use_img_mux, t, r, c, conv_rdata);
                end
                if (data_raddr !== 0 || img_raddr !== 0) begin
                    error_count = error_count + 1;
                    $display("[FAIL] size=%0d pad=%0d mux=%0d tile=%0d r=%0d c=%0d: addr not zero on outside (data=%0d img=%0d)",
                             size_n, use_padding, use_img_mux, t, r, c, data_raddr, img_raddr);
                end
            end else begin
                if (use_img_mux) begin
                    expected_img_addr = expected_src[$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0];
                    expected_data = img_model(expected_img_addr);
                    if (img_raddr !== expected_img_addr[$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0]) begin
                        error_count = error_count + 1;
                        $display("[FAIL] size=%0d pad=%0d mux=%0d tile=%0d r=%0d c=%0d: img_raddr=%0d exp=%0d",
                                 size_n, use_padding, use_img_mux, t, r, c,
                                 img_raddr, expected_img_addr[$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0]);
                    end
                end else begin
                    expected_data = data_model(expected_src);
                    if (data_raddr !== expected_src[$clog2(DATA_ADDR_WIDTH)-1:0]) begin
                        error_count = error_count + 1;
                        $display("[FAIL] size=%0d pad=%0d mux=%0d tile=%0d r=%0d c=%0d: data_raddr=%0d exp=%0d",
                                 size_n, use_padding, use_img_mux, t, r, c,
                                 data_raddr, expected_src[$clog2(DATA_ADDR_WIDTH)-1:0]);
                    end
                end

                if (conv_rdata !== expected_data) begin
                    error_count = error_count + 1;
                    $display("[FAIL] size=%0d pad=%0d mux=%0d tile=%0d r=%0d c=%0d: conv_rdata=%0d exp=%0d",
                             size_n, use_padding, use_img_mux, t, r, c, conv_rdata, expected_data);
                end
            end
        end
    endtask

    task automatic run_case(input int size_n, input bit use_padding, input bit use_img_mux);
        int t;
        int r;
        int c;
        int row_max;
        int col_max;
        begin
            row_max = use_padding ? (size_n + 2) : size_n;
            col_max = row_max;

            for (t = 0; t < TILE_COUNT; t = t + 1) begin
                for (r = 0; r < row_max; r = r + 1) begin
                    for (c = 0; c < col_max; c = c + 1) begin
                        check_one(size_n, use_padding, use_img_mux, t, r, c);
                    end
                end
            end

            $display("[INFO] done size=%0d pad=%0d mux=%0d", size_n, use_padding, use_img_mux);
        end
    endtask

    initial begin
        error_count = 0;
        padding_size = 8'd0;
        img_MUX_sel = 1'b0;
        padding_en = 1'b0;
        tile_index = '0;
        pad_row = '0;
        pad_col = '0;

        init_memories();

        // size 128
        run_case(128, 1'b1, 1'b0);
        run_case(128, 1'b1, 1'b1);
        run_case(128, 1'b0, 1'b0);
        run_case(128, 1'b0, 1'b1);

        // size 64
        run_case(64, 1'b1, 1'b0);
        run_case(64, 1'b1, 1'b1);
        run_case(64, 1'b0, 1'b0);
        run_case(64, 1'b0, 1'b1);

        // size 32
        run_case(32, 1'b1, 1'b0);
        run_case(32, 1'b1, 1'b1);
        run_case(32, 1'b0, 1'b0);
        run_case(32, 1'b0, 1'b1);

        if (error_count == 0) begin
            $display("ALL TESTS PASSED: padding_size 128/64/32 verified");
        end else begin
            $display("TEST FAILED: mismatches=%0d", error_count);
        end

        $finish;
    end

endmodule
