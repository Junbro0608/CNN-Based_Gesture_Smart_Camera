`timescale 1ns / 1ps

module tb_fc;

    localparam int WT_ADDR_WIDTH = 10 * 128;
    localparam int WT_DATA_WIDTH = 64;
    localparam int DATA_ADDR_WIDTH = 126 * 126 * 16;
    localparam int DATA_DATA_WIDTH = 8;

    logic                               clk;
    logic                               rst_n;
    logic                               start;
    logic [            $clog2(128)-1:0] input_length;
    logic [            $clog2(128)-1:0] output_length;
    logic                               finish_en;
    logic                               Done;

    logic [  $clog2(WT_ADDR_WIDTH)-1:0] wt_raddr;
    logic [          WT_DATA_WIDTH-1:0] wt_rdata;

    logic                               DATA_we;
    logic [$clog2(DATA_ADDR_WIDTH)-1:0] DATA_waddr;
    logic [        DATA_DATA_WIDTH-1:0] DATA_wdata;

    logic [$clog2(DATA_ADDR_WIDTH)-1:0] DATA_raddr;
    logic [        DATA_DATA_WIDTH-1:0] DATA_rdata;

    logic                               result;

    // conv TB와 동일하게 4개 메모리 모델
    logic [          WT_DATA_WIDTH-1:0] wt_rd_mem     [  0:WT_ADDR_WIDTH-1];
    logic [        DATA_DATA_WIDTH-1:0] data_rd_mem   [0:DATA_ADDR_WIDTH-1];
    logic [        DATA_DATA_WIDTH-1:0] data_wr_mem   [0:DATA_ADDR_WIDTH-1];

    int                                 wrote_count;

    fc #(
        .WT_ADDR_WIDTH  (WT_ADDR_WIDTH),
        .WT_DATA_WIDTH  (WT_DATA_WIDTH),
        .DATA_ADDR_WIDTH(DATA_ADDR_WIDTH),
        .DATA_DATA_WIDTH(DATA_DATA_WIDTH)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .input_length(input_length),
        .output_length(output_length),
        .finish_en(finish_en),
        .Done(Done),
        .wt_raddr(wt_raddr),
        .wt_rdata(wt_rdata),
        .DATA_we(DATA_we),
        .DATA_waddr(DATA_waddr),
        .DATA_wdata(DATA_wdata),
        .DATA_raddr(DATA_raddr),
        .DATA_rdata(DATA_rdata),
        .result(result)
    );

    // 100 MHz
    always #5 clk = ~clk;

    // WT read memory
    always_comb begin
        wt_rdata = wt_rd_mem[wt_raddr];
    end

    // DATA read memory
    always_comb begin
        DATA_rdata = data_rd_mem[DATA_raddr];
    end

    // DATA write memory
    always_ff @(posedge clk) begin
        if (DATA_we) begin
            data_wr_mem[DATA_waddr] <= DATA_wdata;
            wrote_count <= wrote_count + 1;
        end
    end

    task automatic init_memories;
        int k;
        begin
            for (k = 0; k < WT_ADDR_WIDTH; k = k + 1) begin
                // 주소값 기반 0..N 패턴
                wt_rd_mem[k] = WT_DATA_WIDTH'(k);
            end
            for (k = 0; k < DATA_ADDR_WIDTH; k = k + 1) begin
                // DATA_DATA_WIDTH=8 이므로 0..255 반복 패턴
                data_rd_mem[k] = DATA_DATA_WIDTH'(k);
                data_wr_mem[k] = '0;
            end
            wrote_count = 0;

            $display("init data_rd_mem[0]=%0d, [1]=%0d, [2]=%0d, [255]=%0d, [256]=%0d",
                     data_rd_mem[0], data_rd_mem[1], data_rd_mem[2], data_rd_mem[255],
                     data_rd_mem[256]);
        end
    endtask

    task automatic pulse_start;
        begin
            @(posedge clk);
            start <= 1'b1;
            @(posedge clk);
            start <= 1'b0;
        end
    endtask

    task automatic wait_done_or_timeout(input int timeout_cycles);
        int c;
        begin
            c = 0;
            while ((Done !== 1'b1) && (c < timeout_cycles)) begin
                @(posedge clk);
                c = c + 1;
            end

            if (Done === 1'b1) begin
                $display("[%0t] Done asserted after %0d cycles, finish_en=%0b, result=%0b", $time,
                         c, finish_en, result);
            end else begin
                $display("[%0t] TIMEOUT: Done not asserted within %0d cycles", $time,
                         timeout_cycles);
            end
        end
    endtask

    initial begin
        clk           = 1'b0;
        rst_n         = 1'b0;
        start         = 1'b0;
        input_length  = 'd16;  //수정
        output_length = 'd1;  //수정
        finish_en     = 1'b1;  //수정

        init_memories();

        repeat (5) @(posedge clk);
        rst_n = 1'b1;
        repeat (2) @(posedge clk);

        // TEST#0: 기본 길이
        $display("\n[%0t] TEST#0: input_length=%0d, output_length=%0d", $time, input_length,
                 output_length);
        pulse_start();
        wait_done_or_timeout(5000);

        // TEST#1: 길이 변경
        input_length  = 'd32;
        output_length = 'd8;
        $display("\n[%0t] TEST#1: input_length=%0d, output_length=%0d", $time, input_length,
                 output_length);
        pulse_start();
        wait_done_or_timeout(5000);

        $display("\n[%0t] Simulation finished. DATA write count = %0d", $time, wrote_count);
        $finish;
    end
endmodule
