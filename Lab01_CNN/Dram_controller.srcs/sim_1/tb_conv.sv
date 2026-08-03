`timescale 1ns / 1ps

module tb_conv;

    localparam int WT_ADDR_WIDTH   = 10 * 128;
    localparam int WT_DATA_WIDTH   = 64;
    localparam int DATA_ADDR_WIDTH = 126 * 126 * 16;
    localparam int DATA_DATA_WIDTH = 8;

    logic                               clk;
    logic                               rst_n;
    logic                               start;
    logic                               Relu_en;
    logic                               MaxPool_en;
    logic [            $clog2(128)-1:0] input_channel;
    logic [            $clog2(128)-1:0] output_channel;
    logic                               Done;

    logic [  $clog2(WT_ADDR_WIDTH)-1:0] wt_raddr;
    logic [          WT_DATA_WIDTH-1:0] wt_rdata;

    logic                               DATA_we;
    logic [$clog2(DATA_ADDR_WIDTH)-1:0] DATA_waddr;
    logic [        DATA_DATA_WIDTH-1:0] DATA_wdata;

    logic [$clog2(DATA_ADDR_WIDTH)-1:0] DATA_raddr;
    logic [        DATA_DATA_WIDTH-1:0] DATA_rdata;

    // 요청하신 4개 메모리
    logic [WT_DATA_WIDTH-1:0]           wt_rd_mem   [0:WT_ADDR_WIDTH-1];
    logic [DATA_DATA_WIDTH-1:0]         data_rd_mem [0:DATA_ADDR_WIDTH-1];
    logic [DATA_DATA_WIDTH-1:0]         data_wr_mem [0:DATA_ADDR_WIDTH-1];

    int                                 i;
    int                                 wrote_count;

    conv #(
        .WT_ADDR_WIDTH(WT_ADDR_WIDTH),
        .WT_DATA_WIDTH(WT_DATA_WIDTH),
        .DATA_ADDR_WIDTH(DATA_ADDR_WIDTH),
        .DATA_DATA_WIDTH(DATA_DATA_WIDTH)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .Relu_en(Relu_en),
        .MaxPool_en(MaxPool_en),
        .input_channel(input_channel),
        .output_channel(output_channel),
        .Done(Done),
        .wt_raddr(wt_raddr),
        .wt_rdata(wt_rdata),
        .DATA_we(DATA_we),
        .DATA_waddr(DATA_waddr),
        .DATA_wdata(DATA_wdata),
        .DATA_raddr(DATA_raddr),
        .DATA_rdata(DATA_rdata)
    );

    // 100MHz
    always #5 clk = ~clk;

    // WT read memory model
    always_comb begin
        wt_rdata = wt_rd_mem[wt_raddr];
    end

    // DATA read memory model
    always_comb begin
        DATA_rdata = data_rd_mem[DATA_raddr];
    end

    // DATA write memory model
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
                // read memory는 주소값 기반 패턴(0..N)으로 채움
                wt_rd_mem[k] = WT_DATA_WIDTH'(k);
            end
            for (k = 0; k < DATA_ADDR_WIDTH; k = k + 1) begin
                // DATA_DATA_WIDTH(8bit)라 0..255 반복 패턴으로 저장됨
                data_rd_mem[k] = DATA_DATA_WIDTH'(k);
                data_wr_mem[k] = '0;
            end
            wrote_count = 0;

            // 초기화 확인용 샘플 출력
            $display("init data_rd_mem[0]=%0d, [1]=%0d, [2]=%0d, [255]=%0d, [256]=%0d",
                     data_rd_mem[0], data_rd_mem[1], data_rd_mem[2],
                     data_rd_mem[255], data_rd_mem[256]);
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
                $display("[%0t] Done asserted after %0d cycles", $time, c);
            end else begin
                $display("[%0t] TIMEOUT: Done not asserted within %0d cycles", $time, timeout_cycles);
            end
        end
    endtask

    initial begin
        clk            = 1'b0;
        rst_n          = 1'b0;
        start          = 1'b0;
        Relu_en        = 1'b0;
        MaxPool_en     = 1'b0;
        input_channel  = 'd16;  //수정
        output_channel = 'd16;  //수정

        init_memories();

        repeat (5) @(posedge clk);
        rst_n = 1'b1;
        repeat (2) @(posedge clk);

        // 00 -> 01 -> 10 -> 11 순서 테스트
        Relu_en    = 1'b0; MaxPool_en = 1'b0;
        $display("\n[%0t] TEST#0: Relu_en=%0b, MaxPool_en=%0b", $time, Relu_en, MaxPool_en);
        pulse_start();
        wait_done_or_timeout(5000);

        Relu_en    = 1'b0; MaxPool_en = 1'b1;
        $display("\n[%0t] TEST#1: Relu_en=%0b, MaxPool_en=%0b", $time, Relu_en, MaxPool_en);
        pulse_start();
        wait_done_or_timeout(5000);

        Relu_en    = 1'b1; MaxPool_en = 1'b0;
        $display("\n[%0t] TEST#2: Relu_en=%0b, MaxPool_en=%0b", $time, Relu_en, MaxPool_en);
        pulse_start();
        wait_done_or_timeout(5000);

        Relu_en    = 1'b1; MaxPool_en = 1'b1;
        $display("\n[%0t] TEST#3: Relu_en=%0b, MaxPool_en=%0b", $time, Relu_en, MaxPool_en);
        pulse_start();
        wait_done_or_timeout(5000);

        $display("\n[%0t] Simulation finished. DATA write count = %0d", $time, wrote_count);
        $finish;
    end

endmodule
