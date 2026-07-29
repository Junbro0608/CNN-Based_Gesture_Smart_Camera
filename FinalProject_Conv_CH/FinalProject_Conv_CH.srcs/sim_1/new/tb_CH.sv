`timescale 1ns / 1ps

module tb_CH;

    logic clk = 1'b0;
    logic rst_n;
    logic ch_enable;
    logic acc_clear;
    logic first_ic;
    logic last_ic;
    logic pixel_valid;
    logic pixel_ready;
    logic [1:0] window_index;
    logic signed [7:0] pixel_in [0:8];
    logic weight_valid;
    logic signed [7:0] weight_in [0:8];
    logic signed [31:0] bias_in;
    logic signed [7:0] result_out;
    logic result_valid;
    logic result_ready;

    integer error_count = 0;

    CH #(
        .OUTPUT_SHIFT(8)
    ) dut (
        .clk          (clk),
        .rst_n        (rst_n),
        .ch_enable    (ch_enable),
        .acc_clear    (acc_clear),
        .first_ic     (first_ic),
        .last_ic      (last_ic),
        .pixel_valid  (pixel_valid),
        .pixel_ready  (pixel_ready),
        .window_index (window_index),
        .pixel_in     (pixel_in),
        .weight_valid (weight_valid),
        .weight_in    (weight_in),
        .bias_in      (bias_in),
        .result_out   (result_out),
        .result_valid (result_valid),
        .result_ready (result_ready)
    );

    always #5 clk = ~clk;

    task automatic set_vectors(
        input logic signed [7:0] pixel_value,
        input logic signed [7:0] weight_value
    );
        integer k;
        begin
            for (k = 0; k < 9; k = k + 1) begin
                pixel_in[k]  = pixel_value;
                weight_in[k] = weight_value;
            end
        end
    endtask

    // Pixel={1,2,...,9}, Weight={9,8,...,1}
    // conv_sum = 165
    task automatic set_reference_vectors;
        integer k;
        begin
            for (k = 0; k < 9; k = k + 1) begin
                pixel_in[k]  = k + 1;
                weight_in[k] = 9 - k;
            end
        end
    endtask

    // Pixel={-1,-2,...,-9}, Weight={1,1,...,1}
    // conv_sum = -45
    task automatic set_negative_vectors;
        integer k;
        begin
            for (k = 0; k < 9; k = k + 1) begin
                pixel_in[k]  = -(k + 1);
                weight_in[k] = 8'sd1;
            end
        end
    endtask

    task automatic drive_window(
        input logic [1:0] index_value,
        input logic       first_value,
        input logic       last_value,
        input logic       pixel_valid_value,
        input logic       weight_valid_value,
        input logic signed [7:0] pixel_value,
        input logic signed [7:0] weight_value,
        input logic signed [31:0] bias_value
    );
        begin
            @(negedge clk);
            window_index = index_value;
            first_ic     = first_value;
            last_ic      = last_value;
            pixel_valid  = pixel_valid_value;
            weight_valid = weight_valid_value;
            bias_in      = bias_value;
            set_vectors(pixel_value, weight_value);

            @(posedge clk);
            #1;
        end
    endtask

    task automatic expect_result(
        input logic expected_valid,
        input logic signed [7:0] expected_result,
        input string test_name
    );
        begin
            if (result_valid !== expected_valid) begin
                $error("%s: expected valid=%0b, got valid=%0b",
                       test_name, expected_valid, result_valid);
                error_count = error_count + 1;
            end

            if (expected_valid && result_out !== expected_result) begin
                $error("%s: expected result=%0d, got result=%0d",
                       test_name, expected_result, result_out);
                error_count = error_count + 1;
            end
        end
    endtask

    initial begin
        rst_n        = 1'b0;
        result_ready = 1'b1;
        ch_enable    = 1'b0;
        acc_clear    = 1'b0;
        first_ic     = 1'b0;
        last_ic      = 1'b0;
        pixel_valid  = 1'b0;
        window_index = 2'd0;
        weight_valid = 1'b0;
        bias_in      = 32'sd0;
        set_vectors(8'd0, 8'sd0);

        repeat (2) @(posedge clk);
        #1;
        expect_result(1'b0, 8'sd0, "reset");

        rst_n     = 1'b1;
        ch_enable = 1'b1;

        // ------------------------------------------------------------
        // Scenario 1: one input channel, nine different products.
        //
        // Pixel  = {1,2,...,9}
        // Weight = {9,8,...,1}
        // conv_sum = 165, Bias = 91
        // (165 + 91) >>> 8 = 1
        // ------------------------------------------------------------
        @(negedge clk);
        window_index = 2'd0;
        first_ic     = 1'b1;
        last_ic      = 1'b1;
        pixel_valid  = 1'b1;
        weight_valid = 1'b1;
        bias_in      = 32'sd91;
        set_reference_vectors();

        @(posedge clk);
        #1;
        expect_result(1'b1, 8'sd1, "different 3x3 products");

        // Complete the output handshake.
        drive_window(
            2'd0, 1'b0, 1'b0, 1'b0, 1'b0,
            8'd0, 8'sd0, 8'sd0
        );
        expect_result(1'b0, 8'sd0, "valid pulse");

        // ------------------------------------------------------------
        // Scenario 2: signed negative arithmetic.
        //
        // Pixel={-1,-2,...,-9}, Weight=1
        // conv_sum=-45, Bias=-211
        // (-45 - 211) >>> 8 = -1
        // ------------------------------------------------------------
        @(negedge clk);
        window_index = 2'd3;
        first_ic     = 1'b1;
        last_ic      = 1'b1;
        pixel_valid  = 1'b1;
        weight_valid = 1'b1;
        bias_in      = -32'sd211;
        set_negative_vectors();

        @(posedge clk);
        #1;
        expect_result(1'b1, -8'sd1, "signed negative arithmetic");

        // ------------------------------------------------------------
        // Scenario 3: valid/enable gating.
        // None of these inputs may start a convolution.
        // ------------------------------------------------------------
        drive_window(
            2'd0, 1'b1, 1'b1, 1'b0, 1'b1,
            8'd100, 8'sd100, 32'sd0
        );
        expect_result(1'b0, 8'sd0, "pixel_valid gating");

        drive_window(
            2'd0, 1'b1, 1'b1, 1'b1, 1'b0,
            8'd100, 8'sd100, 32'sd0
        );
        expect_result(1'b0, 8'sd0, "weight_valid gating");

        @(negedge clk);
        ch_enable    = 1'b0;
        first_ic     = 1'b1;
        last_ic      = 1'b1;
        pixel_valid  = 1'b1;
        weight_valid = 1'b1;
        window_index = 2'd0;
        bias_in      = 32'sd0;
        set_vectors(8'd100, 8'sd100);

        @(posedge clk);
        #1;
        expect_result(1'b0, 8'sd0, "ch_enable gating");

        ch_enable = 1'b1;

        // ------------------------------------------------------------
        // Scenario 4: three input channels and four independent
        // spatial accumulators.
        // ------------------------------------------------------------
        //
        // IC0, weight=1:
        //   windows 0..3 conv sums = 144, 288, 432, 576
        drive_window(
            2'd0, 1'b1, 1'b0, 1'b1, 1'b1,
            8'd16, 8'sd1, 8'sd0
        );
        expect_result(1'b0, 8'sd0, "IC0 window 0");

        drive_window(
            2'd1, 1'b1, 1'b0, 1'b1, 1'b1,
            8'd32, 8'sd1, 8'sd0
        );
        expect_result(1'b0, 8'sd0, "IC0 window 1");

        drive_window(
            2'd2, 1'b1, 1'b0, 1'b1, 1'b1,
            8'd48, 8'sd1, 8'sd0
        );
        expect_result(1'b0, 8'sd0, "IC0 window 2");

        drive_window(
            2'd3, 1'b1, 1'b0, 1'b1, 1'b1,
            8'd64, 8'sd1, 8'sd0
        );
        expect_result(1'b0, 8'sd0, "IC0 window 3");

        // IC1, weight=2, adds the same amount to each spatial accumulator.
        drive_window(
            2'd0, 1'b0, 1'b0, 1'b1, 1'b1,
            8'd8, 8'sd2, 8'sd0
        );
        expect_result(1'b0, 8'sd0, "IC1 window 0");

        drive_window(
            2'd1, 1'b0, 1'b0, 1'b1, 1'b1,
            8'd16, 8'sd2, 8'sd0
        );
        expect_result(1'b0, 8'sd0, "IC1 window 1");

        drive_window(
            2'd2, 1'b0, 1'b0, 1'b1, 1'b1,
            8'd24, 8'sd2, 8'sd0
        );
        expect_result(1'b0, 8'sd0, "IC1 window 2");

        drive_window(
            2'd3, 1'b0, 1'b0, 1'b1, 1'b1,
            8'd32, 8'sd2, 8'sd0
        );
        expect_result(1'b0, 8'sd0, "IC1 window 3");

        // Invalid data in the middle of accumulation must not alter
        // accumulator[2].
        drive_window(
            2'd2, 1'b0, 1'b0, 1'b1, 1'b0,
            8'd100, 8'sd100, 8'sd0
        );
        expect_result(1'b0, 8'sd0, "weight_valid gating");

        // IC2 is the final channel. Bias=4 is applied independently to all
        // four positions. Expected shifted results are 1, 1, 2, 3.
        drive_window(
            2'd0, 1'b0, 1'b1, 1'b1, 1'b1,
            8'd4, -8'sd1, 8'sd4
        );
        expect_result(1'b1, 8'sd1, "IC2 final window 0");

        drive_window(
            2'd1, 1'b0, 1'b1, 1'b1, 1'b1,
            8'd8, -8'sd1, 8'sd4
        );
        expect_result(1'b1, 8'sd1, "IC2 final window 1");

        drive_window(
            2'd2, 1'b0, 1'b1, 1'b1, 1'b1,
            8'd12, -8'sd1, 8'sd4
        );
        expect_result(1'b1, 8'sd2, "IC2 final window 2");

        drive_window(
            2'd3, 1'b0, 1'b1, 1'b1, 1'b1,
            8'd16, -8'sd1, 8'sd4
        );
        expect_result(1'b1, 8'sd3, "IC2 final window 3");

        // ------------------------------------------------------------
        // Scenario 5: hold the completed result while the downstream
        // block applies backpressure.
        // ------------------------------------------------------------
        @(negedge clk);
        result_ready = 1'b0;
        pixel_valid  = 1'b1;
        first_ic     = 1'b1;
        last_ic      = 1'b1;
        window_index = 2'd0;
        set_vectors(8'd100, 8'sd100);

        repeat (2) begin
            @(posedge clk);
            #1;

            if ((pixel_ready !== 1'b0)
                || (result_valid !== 1'b1)
                || (result_out !== 8'sd3)) begin
                $error("Result backpressure did not hold CH output");
                error_count = error_count + 1;
            end
        end

        @(negedge clk);
        pixel_valid  = 1'b0;
        result_ready = 1'b1;

        @(posedge clk);
        #1;

        if (result_valid !== 1'b0) begin
            $error("Result handshake did not release CH output");
            error_count = error_count + 1;
        end

        // ------------------------------------------------------------
        // Scenario 6: acc_clear has priority over a simultaneous input
        // and clears all four spatial accumulators.
        // ------------------------------------------------------------
        @(negedge clk);
        acc_clear    = 1'b1;
        first_ic     = 1'b1;
        last_ic      = 1'b1;
        pixel_valid  = 1'b1;
        weight_valid = 1'b1;
        window_index = 2'd2;
        bias_in      = 32'sd0;
        set_vectors(8'd16, 8'sd2);

        @(posedge clk);
        #1;
        expect_result(1'b0, 8'sd0, "acc_clear priority");

        @(negedge clk);
        acc_clear    = 1'b0;
        pixel_valid  = 1'b0;
        weight_valid = 1'b0;

        if (error_count == 0)
            $display("PASS: all four-accumulator CH tests passed");
        else
            $fatal(1, "FAIL: %0d CH test(s) failed", error_count);

        $finish;
    end

    initial begin
        #5000;
        $fatal(1, "FAIL: CH test timed out");
    end

endmodule
