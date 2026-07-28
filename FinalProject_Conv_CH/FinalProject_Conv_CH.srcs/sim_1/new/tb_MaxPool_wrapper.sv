`timescale 1ns / 1ps

module tb_MaxPool_wrapper;

    localparam integer NUM_CH     = 4;
    localparam integer DATA_WIDTH = 8;

    logic clk = 1'b0;
    logic rst_n;
    logic clear;

    logic signed [DATA_WIDTH-1:0] conv_data [0:NUM_CH-1];
    logic [NUM_CH-1:0]            conv_valid;
    logic [NUM_CH-1:0]            conv_ready;

    logic        [DATA_WIDTH-1:0] relu_data [0:NUM_CH-1];
    logic [NUM_CH-1:0]            pool_valid;
    logic [NUM_CH-1:0]            pool_ready;

    logic signed [DATA_WIDTH-1:0] values [0:NUM_CH-1][0:3];
    logic signed [DATA_WIDTH-1:0] expected [0:NUM_CH-1];

    integer error_count = 0;
    integer ch;
    integer sample;

    MaxPool_wrapper #(
        .NUM_CH    (NUM_CH),
        .DATA_WIDTH(DATA_WIDTH)
    ) dut (
        .clk       (clk),
        .rst_n     (rst_n),
        .clear     (clear),
        .conv_data (conv_data),
        .conv_valid(conv_valid),
        .conv_ready(conv_ready),
        .relu_data (relu_data),
        .pool_valid(pool_valid),
        .pool_ready(pool_ready)
    );

    always #5 clk = ~clk;

    task automatic drive_parallel_sample(
        input integer sample_index,
        input logic [NUM_CH-1:0] valid_mask
    );
        integer channel_index;
        begin
            @(negedge clk);

            for (channel_index = 0;
                 channel_index < NUM_CH;
                 channel_index = channel_index + 1)
                conv_data[channel_index] =
                    values[channel_index][sample_index];

            conv_valid = valid_mask;

            @(posedge clk);
            #1;
        end
    endtask

    task automatic check_pending_results(
        input logic [NUM_CH-1:0] expected_valid_mask,
        input string test_name
    );
        integer channel_index;
        begin
            if (pool_valid !== expected_valid_mask) begin
                $error("%s: expected pool_valid=%b, got %b",
                       test_name, expected_valid_mask, pool_valid);
                error_count = error_count + 1;
            end

            for (channel_index = 0;
                 channel_index < NUM_CH;
                 channel_index = channel_index + 1) begin
                if (expected_valid_mask[channel_index]
                    && (relu_data[channel_index]
                        !== (expected[channel_index][DATA_WIDTH-1]
                            ? {DATA_WIDTH{1'b0}}
                            : expected[channel_index]))) begin
                    $error("%s CH%0d: ReLU output is incorrect",
                           test_name, channel_index);
                    error_count = error_count + 1;
                end

                if (conv_ready[channel_index]
                    !== !expected_valid_mask[channel_index]) begin
                    $error("%s CH%0d: conv_ready is incorrect",
                           test_name, channel_index);
                    error_count = error_count + 1;
                end
            end
        end
    endtask

    task automatic accept_one_channel(
        input integer channel_index,
        input logic [NUM_CH-1:0] remaining_valid_mask
    );
        begin
            @(negedge clk);
            conv_valid = '0;
            pool_ready = '0;
            pool_ready[channel_index] = 1'b1;

            @(posedge clk);
            #1;

            check_pending_results(
                remaining_valid_mask,
                "serialized Data Buffer write"
            );

            @(negedge clk);
            pool_ready = '0;
        end
    endtask

    task automatic pulse_clear;
        begin
            @(negedge clk);
            clear       = 1'b1;
            conv_valid  = '0;
            pool_ready  = '0;

            @(posedge clk);
            #1;

            if ((pool_valid !== '0)
                || (conv_ready !== {NUM_CH{1'b1}})) begin
                $error("clear did not reset all MaxPool channels");
                error_count = error_count + 1;
            end

            @(negedge clk);
            clear = 1'b0;
        end
    endtask

    initial begin
        rst_n      = 1'b0;
        clear      = 1'b0;
        conv_valid = '0;
        pool_ready = '0;

        for (ch = 0; ch < NUM_CH; ch = ch + 1)
            conv_data[ch] = '0;

        // Scenario 1 values:
        // CH0 max=25, CH1 signed max=-2, CH2 max=40, CH3 max=100.
        values[0][0] = 8'sd10;
        values[0][1] = 8'sd25;
        values[0][2] = 8'sd3;
        values[0][3] = 8'sd20;
        expected[0]  = 8'sd25;

        values[1][0] = -8'sd5;
        values[1][1] = -8'sd2;
        values[1][2] = -8'sd8;
        values[1][3] = -8'sd3;
        expected[1]  = -8'sd2;

        values[2][0] = 8'sd10;
        values[2][1] = 8'sd20;
        values[2][2] = 8'sd30;
        values[2][3] = 8'sd40;
        expected[2]  = 8'sd40;

        values[3][0] = 8'sd100;
        values[3][1] = 8'sd50;
        values[3][2] = 8'sd75;
        values[3][3] = 8'sd25;
        expected[3]  = 8'sd100;

        repeat (3) @(posedge clk);
        #1;

        if ((pool_valid !== '0)
            || (conv_ready !== {NUM_CH{1'b1}})) begin
            $error("Reset output values are incorrect");
            error_count = error_count + 1;
        end

        rst_n = 1'b1;

        // Four CH results arrive in parallel for all output channels.
        for (sample = 0; sample < 4; sample = sample + 1)
            drive_parallel_sample(sample, {NUM_CH{1'b1}});

        @(negedge clk);
        conv_valid = '0;
        #1;
        check_pending_results({NUM_CH{1'b1}}, "parallel completion");

        // Model the single Data Buffer write port selecting CH0..CH3.
        accept_one_channel(0, 4'b1110);
        accept_one_channel(1, 4'b1100);
        accept_one_channel(2, 4'b1000);
        accept_one_channel(3, 4'b0000);

        // Scenario 2: only CH0 and CH2 receive a complete group. This verifies
        // that channel valid counters are independent.
        values[0][0] = -8'sd10;
        values[0][1] = -8'sd1;
        values[0][2] = -8'sd7;
        values[0][3] = -8'sd3;
        expected[0]  = -8'sd1;

        values[2][0] = 8'sd4;
        values[2][1] = 8'sd9;
        values[2][2] = 8'sd2;
        values[2][3] = 8'sd6;
        expected[2]  = 8'sd9;

        for (sample = 0; sample < 4; sample = sample + 1)
            drive_parallel_sample(sample, 4'b0101);

        @(negedge clk);
        conv_valid = '0;
        #1;
        check_pending_results(4'b0101, "independent channel valid");

        accept_one_channel(0, 4'b0100);
        accept_one_channel(2, 4'b0000);

        // A partial group on every channel must be discarded by clear.
        drive_parallel_sample(0, {NUM_CH{1'b1}});
        drive_parallel_sample(1, {NUM_CH{1'b1}});
        pulse_clear();

        if (error_count == 0)
            $display("PASS: all MaxPool_wrapper tests passed");
        else
            $fatal(1,
                   "FAIL: %0d MaxPool_wrapper test(s) failed",
                   error_count);

        $finish;
    end

    initial begin
        #5000;
        $fatal(1, "FAIL: MaxPool_wrapper test timed out");
    end

endmodule
