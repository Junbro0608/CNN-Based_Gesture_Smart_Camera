`timescale 1ns / 1ps

module tb_CH;

    logic clk = 1'b0;
    logic rst_n;
    logic ch_enable;
    logic acc_clear;
    logic first_ic;
    logic last_ic;
    logic pixel_valid;
    logic [7:0] pixel_in [0:8];
    logic weight_valid;
    logic signed [7:0] weight_in [0:8];
    logic signed [7:0] bias_in;
    logic signed [7:0] result_out;
    logic result_valid;

    integer i;
    integer error_count = 0;

    CH #(
        .OUTPUT_SHIFT(8)
    ) dut (
        .clk,
        .rst_n,
        .ch_enable,
        .acc_clear,
        .first_ic,
        .last_ic,
        .pixel_valid,
        .pixel_in,
        .weight_valid,
        .weight_in,
        .bias_in,
        .result_out,
        .result_valid
    );

    always #5 clk = ~clk;

    task automatic set_vectors(
        input logic [7:0] pixel_value,
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

    task automatic drive_channel(
        input logic first_value,
        input logic last_value,
        input logic pixel_valid_value,
        input logic weight_valid_value,
        input logic [7:0] pixel_value,
        input logic signed [7:0] weight_value,
        input logic signed [7:0] bias_value
    );
        begin
            @(negedge clk);
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
        rst_n       = 1'b0;
        ch_enable   = 1'b0;
        acc_clear   = 1'b0;
        first_ic    = 1'b0;
        last_ic     = 1'b0;
        pixel_valid = 1'b0;
        weight_valid = 1'b0;
        bias_in     = 8'sd0;
        set_vectors(8'd0, 8'sd0);

        repeat (2) @(posedge clk);
        #1;
        expect_result(1'b0, 8'sd0, "reset");

        rst_n     = 1'b1;
        ch_enable = 1'b1;

        // 9*(16*2)+8 = 296, 296 >>> 8 = 1.
        drive_channel(1, 1, 1, 1, 8'd16, 8'sd2, 8'sd8);
        expect_result(1'b1, 8'sd1, "single input channel");

        // result_valid must return to zero on the following idle cycle.
        drive_channel(0, 0, 0, 0, 8'd0, 8'sd0, 8'sd0);
        expect_result(1'b0, 8'sd0, "valid pulse");

        // 9*(255*-1) = -2295, arithmetic -2295 >>> 8 = -9.
        drive_channel(1, 1, 1, 1, 8'd255, -8'sd1, 8'sd0);
        expect_result(1'b1, -8'sd9, "unsigned pixel and negative weight");

        // Three-channel accumulation:
        // ic0=9*(16*1)=144
        // ic1=9*(8*2)=144
        // ic2=9*(4*-1)=-36, bias=4
        // total=256, 256 >>> 8 = 1.
        drive_channel(1, 0, 1, 1, 8'd16, 8'sd1, 8'sd0);
        expect_result(1'b0, 8'sd0, "multi-channel first");

        drive_channel(0, 0, 1, 1, 8'd8, 8'sd2, 8'sd0);
        expect_result(1'b0, 8'sd0, "multi-channel middle");

        // Invalid Weight must not change the accumulated value.
        drive_channel(0, 0, 1, 0, 8'd100, 8'sd100, 8'sd0);
        expect_result(1'b0, 8'sd0, "weight_valid gating");

        drive_channel(0, 1, 1, 1, 8'd4, -8'sd1, 8'sd4);
        expect_result(1'b1, 8'sd1, "multi-channel last");

        // Clear has priority and prevents a simultaneous transaction.
        @(negedge clk);
        acc_clear    = 1'b1;
        first_ic     = 1'b1;
        last_ic      = 1'b1;
        pixel_valid  = 1'b1;
        weight_valid = 1'b1;
        bias_in      = 8'sd0;
        set_vectors(8'd16, 8'sd2);
        @(posedge clk);
        #1;
        expect_result(1'b0, 8'sd0, "acc_clear priority");
        acc_clear = 1'b0;

        if (error_count == 0)
            $display("PASS: all CH tests passed");
        else
            $fatal(1, "FAIL: %0d CH test(s) failed", error_count);

        $finish;
    end

endmodule
