`timescale 1ns / 1ps

module tb_MaxPool_2x2;

    localparam integer DATA_WIDTH = 8;

    logic clk = 1'b0;
    logic rst_n;
    logic clear;

    logic signed [DATA_WIDTH-1:0] conv_data;
    logic                         conv_valid;
    logic                         conv_ready;

    logic signed [DATA_WIDTH-1:0] pool_data;
    logic        [DATA_WIDTH-1:0] relu_data;
    logic                         pool_valid;
    logic                         pool_ready;

    integer error_count = 0;

    MaxPool_2x2 #(
        .DATA_WIDTH(DATA_WIDTH)
    ) dut (
        .clk       (clk),
        .rst_n     (rst_n),
        .clear     (clear),
        .conv_data (conv_data),
        .conv_valid(conv_valid),
        .conv_ready(conv_ready),
        .pool_data (pool_data),
        .relu_data (relu_data),
        .pool_valid(pool_valid),
        .pool_ready(pool_ready)
    );

    always #5 clk = ~clk;

    task automatic send_conv(
        input logic signed [DATA_WIDTH-1:0] data_value
    );
        begin
            while (conv_ready !== 1'b1)
                @(negedge clk);

            @(negedge clk);
            conv_data  = data_value;
            conv_valid = 1'b1;

            @(posedge clk);
            #1;
        end
    endtask

    task automatic insert_input_gap;
        begin
            @(negedge clk);
            conv_valid = 1'b0;

            @(posedge clk);
            #1;

            if (pool_valid !== 1'b0) begin
                $error("An input gap unexpectedly completed a pool result");
                error_count = error_count + 1;
            end
        end
    endtask

    task automatic expect_pool(
        input logic signed [DATA_WIDTH-1:0] expected_data,
        input string test_name
    );
        begin
            if (pool_valid !== 1'b1) begin
                $error("%s: pool_valid was not asserted", test_name);
                error_count = error_count + 1;
            end

            if (pool_data !== expected_data) begin
                $error("%s: expected %0d, got %0d",
                       test_name, expected_data, pool_data);
                error_count = error_count + 1;
            end

            if (relu_data !==
                (expected_data[DATA_WIDTH-1]
                    ? {DATA_WIDTH{1'b0}}
                    : expected_data)) begin
                $error("%s: ReLU output is incorrect", test_name);
                error_count = error_count + 1;
            end

            if (conv_ready !== 1'b0) begin
                $error("%s: conv_ready must be low while result is pending",
                       test_name);
                error_count = error_count + 1;
            end
        end
    endtask

    task automatic accept_pool(input string test_name);
        begin
            @(negedge clk);
            conv_valid = 1'b0;
            pool_ready = 1'b1;

            @(posedge clk);
            #1;

            if (pool_valid !== 1'b0) begin
                $error("%s: pool_valid did not clear after ready",
                       test_name);
                error_count = error_count + 1;
            end

            if (conv_ready !== 1'b1) begin
                $error("%s: conv_ready did not return high",
                       test_name);
                error_count = error_count + 1;
            end

            @(negedge clk);
            pool_ready = 1'b0;
        end
    endtask

    task automatic pulse_clear;
        begin
            @(negedge clk);
            clear      = 1'b1;
            conv_valid = 1'b0;
            pool_ready = 1'b0;

            @(posedge clk);
            #1;

            if ((pool_valid !== 1'b0)
                || (conv_ready !== 1'b1)) begin
                $error("clear did not reset MaxPool state");
                error_count = error_count + 1;
            end

            @(negedge clk);
            clear = 1'b0;
        end
    endtask

    initial begin
        rst_n     = 1'b0;
        clear     = 1'b0;
        conv_data = '0;
        conv_valid = 1'b0;
        pool_ready = 1'b0;

        repeat (3) @(posedge clk);
        #1;

        if ((pool_valid !== 1'b0)
            || (conv_ready !== 1'b1)) begin
            $error("Reset output values are incorrect");
            error_count = error_count + 1;
        end

        rst_n = 1'b1;

        // Scenario 1: four consecutive positive results.
        send_conv(8'sd10);
        send_conv(8'sd25);
        send_conv(8'sd3);
        send_conv(8'sd20);

        @(negedge clk);
        conv_valid = 1'b0;
        #1;
        expect_pool(8'sd25, "positive maximum");

        // The result must remain stable until Data Buffer accepts it.
        repeat (3) begin
            @(posedge clk);
            #1;
            expect_pool(8'sd25, "result hold");
        end

        accept_pool("positive result handshake");

        // Scenario 2: signed comparison with input gaps.
        send_conv(-8'sd20);
        insert_input_gap();
        send_conv(-8'sd5);
        send_conv(-8'sd30);
        insert_input_gap();
        send_conv(-8'sd8);

        @(negedge clk);
        conv_valid = 1'b0;
        #1;
        expect_pool(-8'sd5, "signed negative maximum");
        accept_pool("negative result handshake");

        // Scenario 3: clear discards a partially collected group.
        send_conv(8'sd100);
        send_conv(8'sd90);
        pulse_clear();

        send_conv(8'sd1);
        send_conv(8'sd4);
        send_conv(8'sd2);
        send_conv(8'sd3);

        @(negedge clk);
        conv_valid = 1'b0;
        #1;
        expect_pool(8'sd4, "partial group clear");
        accept_pool("post-clear result handshake");

        if (error_count == 0)
            $display("PASS: all MaxPool_2x2 tests passed");
        else
            $fatal(1,
                   "FAIL: %0d MaxPool_2x2 test(s) failed",
                   error_count);

        $finish;
    end

    initial begin
        #5000;
        $fatal(1, "FAIL: MaxPool_2x2 test timed out");
    end

endmodule
