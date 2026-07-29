`timescale 1ns / 1ps

module tb_Feature_Buffer_Mux;

    localparam integer DATA_WIDTH = 8;
    localparam integer ADDR_WIDTH = 16;

    logic select_pool;

    logic [ADDR_WIDTH-1:0] conv_rAddr;
    logic signed [DATA_WIDTH-1:0] conv_rData;
    logic conv_we;
    logic conv_w_sel;
    logic [ADDR_WIDTH-1:0] conv_wAddr;
    logic signed [DATA_WIDTH-1:0] conv_wData;

    logic [ADDR_WIDTH-1:0] pool_rAddr;
    logic signed [DATA_WIDTH-1:0] pool_rData;
    logic pool_we;
    logic pool_w_sel;
    logic [ADDR_WIDTH-1:0] pool_wAddr;
    logic signed [DATA_WIDTH-1:0] pool_wData;

    logic [ADDR_WIDTH-1:0] buffer_rAddr;
    logic signed [DATA_WIDTH-1:0] buffer_rData;
    logic buffer_we;
    logic buffer_w_sel;
    logic [ADDR_WIDTH-1:0] buffer_wAddr;
    logic signed [DATA_WIDTH-1:0] buffer_wData;

    integer error_count = 0;

    Feature_Buffer_Mux #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) dut (
        .select_pool (select_pool),
        .conv_rAddr  (conv_rAddr),
        .conv_rData  (conv_rData),
        .conv_we     (conv_we),
        .conv_w_sel  (conv_w_sel),
        .conv_wAddr  (conv_wAddr),
        .conv_wData  (conv_wData),
        .pool_rAddr  (pool_rAddr),
        .pool_rData  (pool_rData),
        .pool_we     (pool_we),
        .pool_w_sel  (pool_w_sel),
        .pool_wAddr  (pool_wAddr),
        .pool_wData  (pool_wData),
        .buffer_rAddr(buffer_rAddr),
        .buffer_rData(buffer_rData),
        .buffer_we   (buffer_we),
        .buffer_w_sel(buffer_w_sel),
        .buffer_wAddr(buffer_wAddr),
        .buffer_wData(buffer_wData)
    );

    task automatic check_conv_selection;
        begin
            select_pool = 1'b0;
            #1;

            if ((buffer_rAddr !== conv_rAddr)
                || (buffer_we !== conv_we)
                || (buffer_w_sel !== conv_w_sel)
                || (buffer_wAddr !== conv_wAddr)
                || (buffer_wData !== conv_wData)
                || (conv_rData !== buffer_rData)
                || (pool_rData !== 0)) begin
                $error("Conv buffer selection is incorrect");
                error_count = error_count + 1;
            end
        end
    endtask

    task automatic check_pool_selection;
        begin
            select_pool = 1'b1;
            #1;

            if ((buffer_rAddr !== pool_rAddr)
                || (buffer_we !== pool_we)
                || (buffer_w_sel !== pool_w_sel)
                || (buffer_wAddr !== pool_wAddr)
                || (buffer_wData !== pool_wData)
                || (pool_rData !== buffer_rData)
                || (conv_rData !== 0)) begin
                $error("Standalone MaxPool buffer selection is incorrect");
                error_count = error_count + 1;
            end
        end
    endtask

    initial begin
        conv_rAddr = 16'h1234;
        conv_we    = 1'b1;
        conv_w_sel = 1'b0;
        conv_wAddr = 16'h2345;
        conv_wData = -8'sd17;

        pool_rAddr = 16'hABCD;
        pool_we    = 1'b0;
        pool_w_sel = 1'b1;
        pool_wAddr = 16'hBCDE;
        pool_wData = 8'sd93;

        buffer_rData = -8'sd37;

        check_conv_selection();
        check_pool_selection();

        // Verify that the selected path remains purely combinational.
        pool_we        = 1'b1;
        pool_wData     = -8'sd101;
        buffer_rData   = 8'sd55;
        check_pool_selection();

        if (error_count == 0)
            $display("PASS: Conv/Standalone-MaxPool buffer MUX tests passed");
        else
            $fatal(
                1,
                "FAIL: %0d Feature_Buffer_Mux test(s) failed",
                error_count
            );

        $finish;
    end

endmodule
