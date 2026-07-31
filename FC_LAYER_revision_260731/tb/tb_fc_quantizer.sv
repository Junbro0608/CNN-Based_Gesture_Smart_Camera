`timescale 1ns / 1ps

module tb_fc_quantizer;

    logic                     clk;
    logic                     rst_n;
    logic                     valid_in;
    logic signed [31:0]       accumulator_s32;
    logic                     valid_out;
    logic        [7:0]        quantized_u8;

    integer test_count;

    fc_quantizer dut (
        .clk             (clk),
        .rst_n           (rst_n),
        .valid_in        (valid_in),
        .accumulator_s32 (accumulator_s32),
        .valid_out       (valid_out),
        .quantized_u8    (quantized_u8)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    task automatic apply_and_check;
        input logic signed [31:0] accumulator_value;
        input logic        [7:0]  expected_value;
        input string              test_name;
        begin
            @(negedge clk);
            accumulator_s32 = accumulator_value;
            valid_in        = 1'b1;

            @(posedge clk);
            #1;
            if (valid_out !== 1'b1) begin
                $fatal(1, "%0s valid_out was not asserted", test_name);
            end
            if (quantized_u8 !== expected_value) begin
                $fatal(
                    1,
                    "%0s mismatch: input=%08h expected=%02h actual=%02h",
                    test_name,
                    accumulator_value,
                    expected_value,
                    quantized_u8
                );
            end

            @(negedge clk);
            valid_in = 1'b0;

            @(posedge clk);
            #1;
            if (valid_out !== 1'b0) begin
                $fatal(1, "%0s valid_out pulse exceeded one clock", test_name);
            end

            test_count = test_count + 1;
        end
    endtask

    initial begin
        rst_n            = 1'b1;
        valid_in         = 1'b0;
        accumulator_s32  = 32'sd0;
        test_count       = 0;

        #2;
        rst_n = 1'b0;
        #1;
        if (valid_out !== 1'b0 || quantized_u8 !== 8'h00) begin
            $fatal(1, "Asynchronous reset failed");
        end

        repeat (2) @(posedge clk);
        @(negedge clk);
        rst_n = 1'b1;

        apply_and_check(32'h0000_0010, 8'h00, "low positive");
        apply_and_check(32'h00ff_ffff, 8'h00, "same upper byte different lower bits");
        apply_and_check(32'h0100_0000, 8'h01, "positive one upper byte");
        apply_and_check(32'h7f00_0000, 8'h7f, "maximum positive upper byte");
        apply_and_check(32'h8000_0000, 8'h80, "negative 128 raw byte");
        apply_and_check(32'hff00_0000, 8'hff, "negative one upper byte");
        apply_and_check(32'hffff_fff0, 8'hff, "negative value is not ReLU clamped");
        apply_and_check(32'h1234_5678, 8'h12, "upper byte 12");
        apply_and_check(32'hfedc_ba98, 8'hfe, "upper byte fe");
        apply_and_check(32'h12ab_cdef, 8'h12, "lower 24 bits do not affect output");

        if (test_count != 10) begin
            $fatal(1, "Quantizer test count mismatch: %0d", test_count);
        end

        $display(
            "PASS: tb_fc_quantizer completed %0d [31:24] checks.",
            test_count
        );
        $finish;
    end

endmodule
