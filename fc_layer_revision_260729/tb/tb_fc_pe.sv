`timescale 1ns / 1ps

module tb_fc_pe;

    logic                     clk;
    logic                     rst_n;
    logic signed [7:0]        activation_u8;
    logic signed [7:0]        weight_s8;
    logic signed [31:0]       bias_s32;
    logic                     bias_load;
    logic                     mac_valid;
    logic                     lane_valid;
    logic signed [31:0]       accumulator_s32;

    logic signed [31:0]       expected_accumulator;
    integer                   test_count;
    integer                   error_count;

    fc_pe dut (
        .clk             (clk),
        .rst_n           (rst_n),
        .activation_u8   (activation_u8),
        .weight_s8       (weight_s8),
        .bias_s32        (bias_s32),
        .bias_load       (bias_load),
        .mac_valid       (mac_valid),
        .lane_valid      (lane_valid),
        .accumulator_s32 (accumulator_s32)
    );

    initial begin
        clk = 1'b0;
    end

    always #5 clk = ~clk;

    function automatic logic signed [31:0] golden_mac;
        input logic signed [31:0] current_accumulator;
        input logic signed [7:0]  activation_value;
        input logic signed [7:0]  weight_value;
        integer                   activation_integer;
        integer                   weight_integer;
        integer                   product_integer;
        begin
            activation_integer = $signed(activation_value);
            weight_integer     = $signed(weight_value);
            product_integer    = activation_integer * weight_integer;
            golden_mac         = current_accumulator + product_integer;
        end
    endfunction

    task automatic check_accumulator;
        input logic signed [31:0] expected_value;
        input [8*80-1:0]         test_name;
        begin
            test_count = test_count + 1;

            if ($signed(accumulator_s32) !== expected_value) begin
                error_count = error_count + 1;
                $error(
                    "FAIL: %0s, expected=%0d, actual=%0d",
                    test_name,
                    expected_value,
                    $signed(accumulator_s32)
                );
            end
            else begin
                $display(
                    "CHECK PASS: %0s, accumulator=%0d",
                    test_name,
                    $signed(accumulator_s32)
                );
            end
        end
    endtask

    task automatic apply_reset;
        begin
            rst_n         = 1'b1;
            activation_u8 = 8'sd0;
            weight_s8     = 8'sd0;
            bias_s32      = 32'sd0;
            bias_load     = 1'b0;
            mac_valid     = 1'b0;
            lane_valid    = 1'b0;

            #2;
            rst_n = 1'b0;
            expected_accumulator = 32'sd0;
            #1;
            check_accumulator(expected_accumulator, "asynchronous reset assertion");

            repeat (2) @(posedge clk);
            #1;
            check_accumulator(expected_accumulator, "reset holds accumulator at zero");

            @(negedge clk);
            rst_n = 1'b1;
        end
    endtask

    task automatic load_bias;
        input logic signed [31:0] bias_value;
        input [8*80-1:0]         test_name;
        begin
            @(negedge clk);
            bias_s32      = bias_value;
            bias_load     = 1'b1;
            mac_valid     = 1'b0;
            lane_valid    = 1'b0;

            expected_accumulator = bias_value;

            @(posedge clk);
            #1;
            check_accumulator(expected_accumulator, test_name);
        end
    endtask

    task automatic apply_mac;
        input logic signed [7:0]  activation_value;
        input logic signed [7:0]  weight_value;
        input logic               mac_valid_value;
        input logic               lane_valid_value;
        input [8*80-1:0]          test_name;
        begin
            @(negedge clk);
            activation_u8 = activation_value;
            weight_s8     = weight_value;
            bias_load     = 1'b0;
            mac_valid     = mac_valid_value;
            lane_valid    = lane_valid_value;

            if (mac_valid_value && lane_valid_value) begin
                expected_accumulator = golden_mac(
                    expected_accumulator,
                    activation_value,
                    weight_value
                );
            end

            @(posedge clk);
            #1;
            check_accumulator(expected_accumulator, test_name);
        end
    endtask

    task automatic load_bias_with_mac;
        input logic signed [31:0] bias_value;
        input logic signed [7:0]  activation_value;
        input logic signed [7:0]  weight_value;
        input [8*80-1:0]          test_name;
        begin
            @(negedge clk);
            activation_u8 = activation_value;
            weight_s8     = weight_value;
            bias_s32      = bias_value;
            bias_load     = 1'b1;
            mac_valid     = 1'b1;
            lane_valid    = 1'b1;

            expected_accumulator = bias_value;

            @(posedge clk);
            #1;
            check_accumulator(expected_accumulator, test_name);
        end
    endtask

    initial begin
        rst_n                = 1'b1;
        activation_u8        = 8'sd0;
        weight_s8            = 8'sd0;
        bias_s32             = 32'sd0;
        bias_load            = 1'b0;
        mac_valid            = 1'b0;
        lane_valid           = 1'b0;
        expected_accumulator = 32'sd0;
        test_count           = 0;
        error_count          = 0;

        apply_reset();

        load_bias(32'sd0, "zero bias load");
        apply_mac(8'sd0, 8'sd37, 1'b1, 1'b1, "activation zero");

        load_bias(32'sd1000, "positive bias load");
        apply_mac(8'sd127, 8'sd5, 1'b1, 1'b1, "positive activation times positive weight");

        load_bias(32'sd0, "signed test 1 bias");
        apply_mac(-8'sd8, 8'sd2, 1'b1, 1'b1, "-8 * 2 = -16");

        load_bias(32'sd0, "signed test 2 bias");
        apply_mac(-8'sd8, -8'sd2, 1'b1, 1'b1, "-8 * -2 = 16");

        load_bias(32'sd0, "signed test 3 bias");
        apply_mac(8'sd8, -8'sd2, 1'b1, 1'b1, "8 * -2 = -16");

        load_bias(32'sd0, "signed int8 minimum bias");
        apply_mac(8'sh80, 8'sh80, 1'b1, 1'b1, "-128 * -128 = 16384");

        load_bias(32'sd10, "positive bias for signed MAC");
        apply_mac(-8'sd1, 8'sd1, 1'b1, 1'b1, "bias 10 + -1 * 1 = 9");

        load_bias(-32'sd10, "negative bias for signed MAC");
        apply_mac(-8'sd2, -8'sd3, 1'b1, 1'b1, "bias -10 + -2 * -3 = -4");

        load_bias(32'sd10, "bias before multiple accumulation");
        apply_mac(8'sd1, 8'sd2, 1'b1, 1'b1, "multiple accumulation cycle 1");
        apply_mac(-8'sd8, -8'sd2, 1'b1, 1'b1, "multiple accumulation cycle 2");
        apply_mac(8'sd7, -8'sd3, 1'b1, 1'b1, "multiple accumulation cycle 3");

        apply_mac(8'sh80, 8'sh80, 1'b0, 1'b1, "mac_valid zero holds accumulator");
        apply_mac(-8'sd8, 8'sd127, 1'b1, 1'b0, "lane_valid zero holds accumulator");

        load_bias_with_mac(
            32'sd321,
            -8'sd8,
            -8'sd7,
            "bias_load has priority over MAC"
        );

        load_bias(-32'sd50, "bias reload replaces previous accumulation");
        apply_mac(8'sd10, 8'sd4, 1'b1, 1'b1, "new accumulation after bias reload");

        @(negedge clk);
        bias_load = 1'b0;
        mac_valid = 1'b0;
        lane_valid = 1'b0;

        if (error_count == 0) begin
            $display("PASS: tb_fc_pe completed %0d self-checks with no errors.", test_count);
            $finish;
        end
        else begin
            $fatal(
                1,
                "FAIL: tb_fc_pe detected %0d errors across %0d self-checks.",
                error_count,
                test_count
            );
        end
    end

endmodule
