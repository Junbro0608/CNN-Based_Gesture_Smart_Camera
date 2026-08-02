`timescale 1ns / 1ps

module tb_padding;

    localparam int DATA_ADDR_WIDTH = 64 * 64 * 16;
    localparam int DATA_DATA_WIDTH = 8;
    localparam int IMG_ADDR_WIDH   = 128;
    localparam int IMG_DATA_WIDH   = DATA_DATA_WIDTH;

    logic [$clog2(DATA_ADDR_WIDTH)-1:0]        padding_size;
    logic                                       img_MUX_sel;
    logic                                       padding_en;
    logic [$clog2((128+2)*(128+2))-1:0]        conv_raddr;
    logic signed [DATA_DATA_WIDTH-1:0]         conv_rdata;

    logic [$clog2(DATA_ADDR_WIDTH)-1:0]        data_raddr;
    logic signed [DATA_DATA_WIDTH-1:0]         data_rdata;

    logic [$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0] img_raddr;
    logic signed [IMG_DATA_WIDH-1:0]                img_rdata;

    logic signed [DATA_DATA_WIDTH-1:0] data_mem [0:DATA_ADDR_WIDTH-1];
    logic signed [IMG_DATA_WIDH-1:0]   img_mem  [0:IMG_ADDR_WIDH*IMG_ADDR_WIDH-1];

    int err_count;

    padding #(
        .DATA_ADDR_WIDTH(DATA_ADDR_WIDTH),
        .DATA_DATA_WIDTH(DATA_DATA_WIDTH),
        .IMG_ADDR_WIDH(IMG_ADDR_WIDH),
        .IMG_DATA_WIDH(IMG_DATA_WIDH)
    ) dut (
        .padding_size(padding_size),
        .img_MUX_sel(img_MUX_sel),
        .padding_en(padding_en),
        .conv_raddr(conv_raddr),
        .conv_rdata(conv_rdata),
        .data_raddr(data_raddr),
        .data_rdata(data_rdata),
        .img_raddr(img_raddr),
        .img_rdata(img_rdata)
    );

    function automatic logic signed [7:0] data_model(input int unsigned addr);
        // 1~128 반복 패턴
        data_model = $signed((addr % 128) + 1);
    endfunction

    always_comb begin
        data_rdata = data_mem[data_raddr];
        img_rdata  = img_mem[img_raddr];
    end

    task automatic init_virtual_mem;
        int i;
    begin
        for (i = 0; i < DATA_ADDR_WIDTH; i = i + 1) begin
            data_mem[i] = $signed((i % 128) + 1);
        end
        for (i = 0; i < (IMG_ADDR_WIDH * IMG_ADDR_WIDH); i = i + 1) begin
            img_mem[i] = $signed((i % 128) + 1);
        end
    end
    endtask

    task automatic run_full_scan_130x130;
        int a;
        int row;
        int col;
        int src;
        int border_cnt;
        int inner_cnt;
    begin
        border_cnt = 0;
        inner_cnt  = 0;

        padding_size = 128;
        padding_en   = 1'b1;
        img_MUX_sel  = 1'b0;  // data_mem(DRAM) 경로 검증

        for (a = 0; a < (130 * 130); a = a + 1) begin
            conv_raddr = a;
            #1;

            row = a / 130;
            col = a % 130;

            if ((row == 0) || (row == 129) || (col == 0) || (col == 129)) begin
                border_cnt = border_cnt + 1;
                if (conv_rdata !== 0) begin
                    err_count = err_count + 1;
                    $display("[FAIL] scan border a=%0d row=%0d col=%0d conv_rdata=%0d", a, row, col, conv_rdata);
                end
            end else begin
                inner_cnt = inner_cnt + 1;
                src = ((row - 1) << 7) + (col - 1);
                if (data_raddr !== src || conv_rdata !== data_model(src)) begin
                    err_count = err_count + 1;
                    $display("[FAIL] scan inner a=%0d row=%0d col=%0d got(data_raddr=%0d conv_rdata=%0d) exp(data_raddr=%0d conv_rdata=%0d)",
                             a, row, col, data_raddr, conv_rdata, src, data_model(src));
                end
            end
        end

        $display("[INFO] 130x130 scan done: border=%0d inner=%0d", border_cnt, inner_cnt);
    end
    endtask

    task automatic dump_padded_image_norm_130x130;
        int fd;
        int r;
        int c;
        int a;
        real pix_norm;
    begin
        fd = $fopen("padding_130x130_norm.txt", "w");
        if (fd == 0) begin
            err_count = err_count + 1;
            $display("[FAIL] cannot open output file: padding_130x130_norm.txt");
        end else begin
            padding_size = 128;
            padding_en   = 1'b1;
            img_MUX_sel  = 1'b0;

            for (r = 0; r < 130; r = r + 1) begin
                for (c = 0; c < 130; c = c + 1) begin
                    a = (r * 130) + c;
                    conv_raddr = a;
                    #1;

                    // data_mem 패턴이 1~128 반복이므로 128으로 정규화하여 0~1 범위로 저장
                    // 경계 패딩은 0으로 저장됨
                    pix_norm = $itor($unsigned(conv_rdata[7:0])) / 128.0;
                    $fwrite(fd, "%0.6f", pix_norm);
                    if (c != 129) $fwrite(fd, " ");
                end
                $fwrite(fd, "\n");
            end

            $fclose(fd);
            $display("[INFO] saved normalized padded image: padding_130x130_norm.txt");
        end
    end
    endtask

    initial begin
        err_count     = 0;
        padding_size  = '0;
        img_MUX_sel   = 1'b0;
        padding_en    = 1'b0;
        conv_raddr    = '0;

        init_virtual_mem();

        // 요청 시나리오: conv_raddr를 130x130 전체(0~16899) 순회
        run_full_scan_130x130();

        // 시뮬레이션 결과를 0~1 그레이스케일 텍스트로 저장
        dump_padded_image_norm_130x130();

        if (err_count == 0) begin
            $display("\nALL TESTS PASSED");
        end else begin
            $display("\nTEST FAILED: err_count=%0d", err_count);
        end

        $finish;
    end

endmodule
