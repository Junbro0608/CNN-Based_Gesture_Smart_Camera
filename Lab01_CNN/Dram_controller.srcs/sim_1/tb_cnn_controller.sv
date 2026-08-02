`timescale 1ns / 1ps

module tb_cnn_controller;

    logic clk;
    logic rst_n;

    logic conv_start;
    logic conv_conv_en;
    logic conv_Relu_en;
    logic conv_MaxPool_en;
    logic cnn_Done;

    logic fc_start;
    logic fc_finish_en;
    logic [$clog2(1024)-1:0] fc_input_length;
    logic [$clog2(64)-1:0] fc_output_length;
    logic fc_Done;

    logic dram_move_start;
    logic dram_move_Done;

    logic img_MUX_sel;
    logic CONVFC_MUX_sel;
    logic pingpong_W_sel;

    logic cnn_start;
    logic Done;
    logic busy;

    int err_count;

    cnn_controller dut (
        .clk(clk),
        .rst_n(rst_n),
        .conv_start(conv_start),
        .conv_conv_en(conv_conv_en),
        .conv_Relu_en(conv_Relu_en),
        .conv_MaxPool_en(conv_MaxPool_en),
        .cnn_Done(cnn_Done),
        .fc_start(fc_start),
        .fc_finish_en(fc_finish_en),
        .fc_input_length(fc_input_length),
        .fc_output_length(fc_output_length),
        .fc_Done(fc_Done),
        .dram_move_start(dram_move_start),
        .dram_move_Done(dram_move_Done),
        .img_MUX_sel(img_MUX_sel),
        .CONVFC_MUX_sel(CONVFC_MUX_sel),
        .pingpong_W_sel(pingpong_W_sel),
        .cnn_start(cnn_start),
        .Done(Done),
        .busy(busy)
    );

    always #5 clk = ~clk;

    task automatic expect_bit(input string name, input logic got, input logic exp);
    begin
        if (got !== exp) begin
            err_count = err_count + 1;
            $display("[FAIL] %s: got=%0b exp=%0b", name, got, exp);
        end
    end
    endtask

    task automatic expect_vec(input string name, input logic [2:0] got, input logic [2:0] exp);
    begin
        if (got !== exp) begin
            err_count = err_count + 1;
            $display("[FAIL] %s: got=%03b exp=%03b", name, got, exp);
        end
    end
    endtask

    task automatic pulse_dram_done;
    begin
        repeat (5) @(posedge clk);
        dram_move_Done = 1'b1;
        @(posedge clk);
        #1;
        dram_move_Done = 1'b0;
    end
    endtask

    task automatic pulse_cnn_done;
    begin
        repeat (10) @(posedge clk);
        cnn_Done = 1'b1;
        @(posedge clk);
        #1;
        cnn_Done = 1'b0;
    end
    endtask

    task automatic pulse_fc_done;
    begin
        repeat (10) @(posedge clk);
        fc_Done = 1'b1;
        @(posedge clk);
        #1;
        fc_Done = 1'b0;
    end
    endtask

    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        cnn_start = 1'b0;
        cnn_Done = 1'b0;
        fc_Done = 1'b0;
        dram_move_Done = 1'b0;
        err_count = 0;

        repeat (2) @(posedge clk);
        rst_n = 1'b1;
        #1;

        // IDLE
        expect_bit("IDLE busy", busy, 1'b0);
        expect_bit("IDLE Done", Done, 1'b0);

        // IDLE -> WT_GET (start trigger)
        cnn_start = 1'b1;
        #1;
        expect_bit("IDLE->WT_GET dram_move_start", dram_move_start, 1'b1);
        @(posedge clk);
        #1;
        cnn_start = 1'b0;

        // WT_GET -> CONV_1 (dram done)
        pulse_dram_done();
        #1;
        expect_bit("WT_GET->CONV_1 conv_start", conv_start, 1'b1);
        expect_bit("WT_GET->CONV_1 dram_move_start", dram_move_start, 1'b1);
        expect_bit("WT_GET->CONV_1 pingpong_W_sel", pingpong_W_sel, 1'b1);
        expect_vec("WT_GET->CONV_1 en", {conv_conv_en, conv_Relu_en, conv_MaxPool_en}, 3'b111);

        // CONV_1 -> CONV_2 (cnn done + dram done)
        pulse_cnn_done();
        pulse_dram_done();
        #1;
        expect_bit("CONV_1->CONV_2 conv_start", conv_start, 1'b1);
        expect_bit("CONV_1->CONV_2 dram_move_start", dram_move_start, 1'b1);
        expect_bit("CONV_1->CONV_2 pingpong_W_sel", pingpong_W_sel, 1'b0);
        expect_vec("CONV_1->CONV_2 en", {conv_conv_en, conv_Relu_en, conv_MaxPool_en}, 3'b111);

        // CONV_2 -> CONV_3
        pulse_cnn_done();
        pulse_dram_done();
        #1;
        expect_bit("CONV_2->CONV_3 conv_start", conv_start, 1'b1);
        expect_bit("CONV_2->CONV_3 pingpong_W_sel", pingpong_W_sel, 1'b1);
        expect_vec("CONV_2->CONV_3 en", {conv_conv_en, conv_Relu_en, conv_MaxPool_en}, 3'b111);

        // CONV_3 -> MAXPOOL_1
        pulse_cnn_done();
        #1;
        expect_bit("CONV_3->MAXPOOL_1 conv_start", conv_start, 1'b1);
        expect_vec("CONV_3->MAXPOOL_1 en", {conv_conv_en, conv_Relu_en, conv_MaxPool_en}, 3'b001);

        // MAXPOOL_1 -> MAXPOOL_2
        pulse_cnn_done();
        #1;
        expect_bit("MAXPOOL_1->MAXPOOL_2 conv_start", conv_start, 1'b1);
        expect_bit("MAXPOOL_1->MAXPOOL_2 dram_move_start", dram_move_start, 1'b1);
        expect_bit("MAXPOOL_1->MAXPOOL_2 pingpong_W_sel", pingpong_W_sel, 1'b1);
        expect_vec("MAXPOOL_1->MAXPOOL_2 en", {conv_conv_en, conv_Relu_en, conv_MaxPool_en}, 3'b001);

        // MAXPOOL_2 -> FC_1
        pulse_cnn_done();
        #1;
        expect_bit("MAXPOOL_2->FC_1 fc_start", fc_start, 1'b1);
        expect_bit("MAXPOOL_2->FC_1 dram_move_start", dram_move_start, 1'b1);
        expect_bit("MAXPOOL_2->FC_1 pingpong_W_sel", pingpong_W_sel, 1'b0);

        // FC_1 -> FC_2
        pulse_fc_done();
        pulse_dram_done();
        #1;
        expect_bit("FC_1->FC_2 fc_start", fc_start, 1'b1);
        expect_bit("FC_1->FC_2 fc_finish_en", fc_finish_en, 1'b1);
        expect_bit("FC_1->FC_2 dram_move_start", dram_move_start, 1'b1);
        expect_bit("FC_1->FC_2 pingpong_W_sel", pingpong_W_sel, 1'b1);

        // FC_2 -> IDLE
        pulse_fc_done();
        #1;
        expect_bit("FC_2->IDLE Done", Done, 1'b1);

        @(posedge clk);
        #1;

        if (err_count == 0) begin
            $display("\nALL TESTS PASSED");
        end else begin
            $display("\nTEST FAILED: err_count=%0d", err_count);
        end

        $finish;
    end

endmodule
