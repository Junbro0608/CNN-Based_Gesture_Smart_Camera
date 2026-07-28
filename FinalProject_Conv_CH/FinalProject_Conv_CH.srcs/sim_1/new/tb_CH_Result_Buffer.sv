`timescale 1ns / 1ps

module tb_CH_Result_Buffer;

    localparam integer NUM_CH = 4;
    localparam integer DATA_WIDTH = 8;
    localparam integer CH_INDEX_WIDTH = $clog2(NUM_CH);

    logic clk = 1'b0;
    logic rst_n;
    logic clear;
    logic MaxPool_en;
    logic Relu_en;

    logic signed [DATA_WIDTH-1:0] conv_data [0:NUM_CH-1];
    logic [NUM_CH-1:0] conv_valid;
    logic [NUM_CH-1:0] conv_ready;

    logic [DATA_WIDTH-1:0] output_data;
    logic output_valid;
    logic output_ready;
    logic [CH_INDEX_WIDTH-1:0] output_channel;
    logic [1:0] output_position;
    logic output_done;

    integer stimulus [0:3][0:NUM_CH-1];
    integer error_count = 0;
    integer init_pos;
    integer init_ch;

    CH_Result_Buffer #(
        .NUM_CH   (NUM_CH),
        .DATA_WIDTH(DATA_WIDTH)
    ) dut (
        .clk            (clk),
        .rst_n          (rst_n),
        .clear          (clear),
        .MaxPool_en     (MaxPool_en),
        .Relu_en        (Relu_en),
        .conv_data      (conv_data),
        .conv_valid     (conv_valid),
        .conv_ready     (conv_ready),
        .output_data    (output_data),
        .output_valid   (output_valid),
        .output_ready   (output_ready),
        .output_channel (output_channel),
        .output_position(output_position),
        .output_done    (output_done)
    );

    always #5 clk = ~clk;

    function automatic integer expected_value(
        input integer pool_enable,
        input integer relu_enable,
        input integer position,
        input integer channel
    );
        integer value;
        integer scan_pos;
        begin
            value = stimulus[position][channel];

            if (pool_enable) begin
                value = stimulus[0][channel];

                for (scan_pos = 1; scan_pos < 4;
                     scan_pos = scan_pos + 1) begin
                    if (stimulus[scan_pos][channel] > value)
                        value = stimulus[scan_pos][channel];
                end
            end

            if (relu_enable && (value < 0))
                value = 0;

            expected_value = value & 255;
        end
    endfunction

    task automatic run_case(
        input integer pool_enable,
        input integer relu_enable
    );
        integer drive_pos;
        integer drive_ch;
        integer expected_position;
        integer expected_channel;
        integer expected_count;
        integer received_count;
        integer expected_data;
        logic [7:0] held_data;
        logic [1:0] held_position;
        logic [CH_INDEX_WIDTH-1:0] held_channel;
        begin
            @(negedge clk);
            MaxPool_en = pool_enable;
            Relu_en    = relu_enable;
            clear      = 1'b1;
            output_ready = 1'b0;

            @(negedge clk);
            clear = 1'b0;

            for (drive_pos = 0; drive_pos < 4;
                 drive_pos = drive_pos + 1) begin
                @(negedge clk);

                for (drive_ch = 0; drive_ch < NUM_CH;
                     drive_ch = drive_ch + 1)
                    conv_data[drive_ch] = stimulus[drive_pos][drive_ch];

                conv_valid = {NUM_CH{1'b1}};
                #1;

                if (conv_ready !== {NUM_CH{1'b1}}) begin
                    $error("Result buffer did not accept position %0d",
                           drive_pos);
                    error_count = error_count + 1;
                end

                @(posedge clk);
                #1;

                @(negedge clk);
                conv_valid = '0;
            end

            wait (output_valid === 1'b1);

            // Verify that the first serialized value is held under
            // backpressure.
            held_data     = output_data;
            held_position = output_position;
            held_channel  = output_channel;
            output_ready  = 1'b0;

            repeat (2) begin
                @(posedge clk);
                #1;

                if ((output_data !== held_data)
                    || (output_position !== held_position)
                    || (output_channel !== held_channel)) begin
                    $error("Serialized output changed under backpressure");
                    error_count = error_count + 1;
                end
            end

            expected_count = pool_enable ? NUM_CH : 4*NUM_CH;
            received_count = 0;

            while (received_count < expected_count) begin
                @(negedge clk);
                output_ready = 1'b1;

                if (output_valid) begin
                    expected_position =
                        pool_enable ? 0 : (received_count / NUM_CH);
                    expected_channel = received_count % NUM_CH;
                    expected_data = expected_value(
                        pool_enable,
                        relu_enable,
                        expected_position,
                        expected_channel
                    );

                    if (output_position !== expected_position[1:0]) begin
                        $error("Position expected %0d, got %0d",
                               expected_position, output_position);
                        error_count = error_count + 1;
                    end

                    if (output_channel
                        !== expected_channel[CH_INDEX_WIDTH-1:0]) begin
                        $error("Channel expected %0d, got %0d",
                               expected_channel, output_channel);
                        error_count = error_count + 1;
                    end

                    if (output_data !== expected_data[7:0]) begin
                        $error(
                            "pool=%0d relu=%0d pos=%0d ch=%0d expected %0d got %0d",
                            pool_enable, relu_enable,
                            expected_position, expected_channel,
                            expected_data, output_data
                        );
                        error_count = error_count + 1;
                    end

                    if (output_done
                        !== (received_count == expected_count-1)) begin
                        $error("output_done timing is incorrect");
                        error_count = error_count + 1;
                    end

                    received_count = received_count + 1;
                end

                @(posedge clk);
                #1;
            end

            @(negedge clk);
            output_ready = 1'b0;
        end
    endtask

    initial begin
        stimulus[0][0] = -5;
        stimulus[0][1] = 10;
        stimulus[0][2] = 7;
        stimulus[0][3] = -1;

        stimulus[1][0] = 3;
        stimulus[1][1] = 8;
        stimulus[1][2] = -2;
        stimulus[1][3] = -4;

        stimulus[2][0] = 1;
        stimulus[2][1] = 20;
        stimulus[2][2] = 6;
        stimulus[2][3] = -8;

        stimulus[3][0] = 2;
        stimulus[3][1] = 15;
        stimulus[3][2] = 9;
        stimulus[3][3] = -3;

        rst_n        = 1'b0;
        clear        = 1'b0;
        MaxPool_en   = 1'b0;
        Relu_en      = 1'b0;
        conv_valid   = '0;
        output_ready = 1'b0;

        for (init_ch = 0; init_ch < NUM_CH; init_ch = init_ch + 1)
            conv_data[init_ch] = '0;

        repeat (3) @(posedge clk);
        #1;
        rst_n = 1'b1;

        run_case(0, 0);
        run_case(0, 1);
        run_case(1, 0);
        run_case(1, 1);

        if (error_count == 0)
            $display("PASS: CH_Result_Buffer bypass/pool/ReLU tests passed");
        else
            $fatal(1, "FAIL: %0d CH_Result_Buffer errors", error_count);

        $finish;
    end

    initial begin
        #10000;
        $fatal(1, "FAIL: CH_Result_Buffer test timed out");
    end

endmodule
