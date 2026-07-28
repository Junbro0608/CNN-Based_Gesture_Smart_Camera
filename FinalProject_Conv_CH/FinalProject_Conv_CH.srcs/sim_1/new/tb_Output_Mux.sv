`timescale 1ns / 1ps

module tb_Output_Mux;

    // Five channels intentionally exercise the invalid encodings 5, 6, and 7.
    localparam integer NUM_CH       = 5;
    localparam integer DATA_WIDTH   = 8;
    localparam integer SELECT_WIDTH = $clog2(NUM_CH);

    logic [DATA_WIDTH-1:0] relu_data [0:NUM_CH-1];
    logic [NUM_CH-1:0]     pool_valid;

    logic [SELECT_WIDTH-1:0] channel_select;
    logic                    select_enable;

    logic [DATA_WIDTH-1:0] ch_wdata;
    logic                  ch_wvalid;
    logic                  ch_wready;
    logic [NUM_CH-1:0]     pool_ready;

    integer error_count = 0;
    integer ch;

    Output_Mux #(
        .NUM_CH      (NUM_CH),
        .DATA_WIDTH  (DATA_WIDTH),
        .SELECT_WIDTH(SELECT_WIDTH)
    ) dut (
        .relu_data    (relu_data),
        .pool_valid   (pool_valid),
        .channel_select(channel_select),
        .select_enable(select_enable),
        .ch_wdata     (ch_wdata),
        .ch_wvalid    (ch_wvalid),
        .ch_wready    (ch_wready),
        .pool_ready   (pool_ready)
    );

    task automatic check_selection(
        input integer selected_channel,
        input logic   enable_value,
        input logic [NUM_CH-1:0] valid_mask,
        input string  test_name
    );
        logic [DATA_WIDTH-1:0] expected_data;
        logic                  expected_valid;
        logic [NUM_CH-1:0]     expected_ready;
        begin
            channel_select = selected_channel[SELECT_WIDTH-1:0];
            select_enable  = enable_value;
            pool_valid     = valid_mask;

            #1;

            expected_data  = '0;
            expected_valid = 1'b0;
            expected_ready = '0;

            if (selected_channel < NUM_CH) begin
                expected_data = relu_data[selected_channel];

                if (enable_value && valid_mask[selected_channel]) begin
                    expected_valid = 1'b1;
                    if (ch_wready)
                        expected_ready[selected_channel] = 1'b1;
                end
            end

            if (ch_wdata !== expected_data) begin
                $error("%s: expected data %h, got %h",
                       test_name, expected_data, ch_wdata);
                error_count = error_count + 1;
            end

            if (ch_wvalid !== expected_valid) begin
                $error("%s: expected valid %0b, got %0b",
                       test_name, expected_valid, ch_wvalid);
                error_count = error_count + 1;
            end

            if (pool_ready !== expected_ready) begin
                $error("%s: expected ready %b, got %b",
                       test_name, expected_ready, pool_ready);
                error_count = error_count + 1;
            end
        end
    endtask

    initial begin
        channel_select = '0;
        ch_wready      = 1'b1;
        select_enable  = 1'b0;
        pool_valid     = '0;

        for (ch = 0; ch < NUM_CH; ch = ch + 1)
            relu_data[ch] = 8'h10 + ch;

        #1;

        // A valid channel may be selected for observation, but it must not be
        // acknowledged or written until the controller enables the transfer.
        check_selection(
            2,
            1'b0,
            {NUM_CH{1'b1}},
            "select disabled"
        );

        // Every valid channel must route its own data and generate exactly one
        // corresponding pool_ready bit.
        for (ch = 0; ch < NUM_CH; ch = ch + 1)
            check_selection(
                ch,
                1'b1,
                {NUM_CH{1'b1}},
                "valid channel selection"
            );

        // Selecting a channel whose MaxPool result is not valid must not write
        // Data Buffer or consume the pending result.
        check_selection(
            1,
            1'b1,
            5'b10101,
            "selected channel invalid"
        );

        check_selection(
            2,
            1'b1,
            5'b10101,
            "selected channel valid"
        );

        // NUM_CH=5 uses a three-bit selector. Encodings 5 and 7 must safely
        // produce zeros instead of indexing beyond the array.
        check_selection(
            5,
            1'b1,
            {NUM_CH{1'b1}},
            "out-of-range channel 5"
        );

        check_selection(
            7,
            1'b1,
            {NUM_CH{1'b1}},
            "out-of-range channel 7"
        );

        // Verify that the MUX remains combinational when ReLU data changes.
        relu_data[3] = 8'hE7;
        check_selection(
            3,
            1'b1,
            {NUM_CH{1'b1}},
            "updated ReLU data"
        );

        // Valid and data must remain visible while the shared write port
        // applies backpressure, but the pool entry must not be acknowledged.
        ch_wready = 1'b0;
        check_selection(
            3,
            1'b1,
            {NUM_CH{1'b1}},
            "write backpressure"
        );
        ch_wready = 1'b1;

        if (error_count == 0)
            $display("PASS: all Output_Mux tests passed");
        else
            $fatal(1,
                   "FAIL: %0d Output_Mux test(s) failed",
                   error_count);

        $finish;
    end

endmodule
