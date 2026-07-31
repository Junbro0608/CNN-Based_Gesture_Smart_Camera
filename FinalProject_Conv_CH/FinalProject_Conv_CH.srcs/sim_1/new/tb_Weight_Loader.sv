`timescale 1ns / 1ps

module tb_Weight_Loader;
    localparam int NUM_CH       = 8;
    localparam int ADDR_WIDTH   = 12;
    localparam int CONFIG_WIDTH = 16;
    localparam int WT_DEPTH     = 4096;
    localparam int WT_MEM_AW    = $clog2(WT_DEPTH);

    logic clk = 1'b0;
    logic rst_n = 1'b0;

    logic load_start = 1'b0;
    logic load_ready;
    logic busy;
    logic weight_valid;

    logic [CONFIG_WIDTH-1:0] input_channels;
    logic [CONFIG_WIDTH-1:0] output_groups;
    logic [CONFIG_WIDTH-1:0] output_group_index;
    logic [CONFIG_WIDTH-1:0] input_channel_index;

    logic wt_ren;
    logic [ADDR_WIDTH-1:0] wt_raddr;
    logic [63:0] wt_rdata;

    logic signed [7:0]  weight_out [0:NUM_CH-1][0:8];
    logic signed [31:0] bias_out   [0:NUM_CH-1];

    logic [WT_MEM_AW-1:0] unused_waddr = '0;
    logic [63:0] unused_wdata = '0;

    integer errors = 0;
    integer read_count = 0;
    integer expected_addr [0:9];
    integer captured_addr [0:9];

    always #4 clk = ~clk;

    Weight_Loader #(
        .NUM_CH      (NUM_CH),
        .ADDR_WIDTH  (ADDR_WIDTH),
        .CONFIG_WIDTH(CONFIG_WIDTH)
    ) U_DUT (
        .clk                (clk),
        .rst_n              (rst_n),
        .load_start         (load_start),
        .load_ready         (load_ready),
        .busy               (busy),
        .weight_valid       (weight_valid),
        .input_channels     (input_channels),
        .output_groups      (output_groups),
        .output_group_index (output_group_index),
        .input_channel_index(input_channel_index),
        .wt_ren             (wt_ren),
        .wt_raddr           (wt_raddr),
        .wt_rdata           (wt_rdata),
        .weight_out         (weight_out),
        .bias_out           (bias_out)
    );

    // The same external ping-pong/frame-buffer implementation supplied by
    // the system. This test does not modify that RTL.
    pingpongBuffer #(
        .ADDR_WIDTH(WT_DEPTH),
        .DATA_WIDTH(64)
    ) U_WEIGHT_PINGPONG (
        // w_sel=1 means write B and read A.
        .w_sel (1'b1),
        .wclk  (clk),
        .we    (1'b0),
        .wAddr (unused_waddr),
        .wData (unused_wdata),
        .rclk  (clk),
        .rAddr (wt_raddr[WT_MEM_AW-1:0]),
        .rData (wt_rdata)
    );

    always @(posedge clk) begin
        if (wt_ren && read_count < 10) begin
            captured_addr[read_count] <= wt_raddr;
            read_count <= read_count + 1;
        end
    end

    function automatic signed [7:0] expected_weight(
        input integer group_index,
        input integer input_index,
        input integer kernel_index,
        input integer lane
    );
        integer value;
        begin
            value = -100
                    + group_index * 20
                    + input_index * 3
                    + kernel_index
                    + lane;
            expected_weight = value;
        end
    endfunction

    function automatic signed [7:0] expected_bias(
        input integer group_index,
        input integer lane
    );
        integer value;
        begin
            value = -90 + group_index * 25 + lane * 3;
            expected_bias = value;
        end
    endfunction

    task automatic initialize_conv2_memory;
        integer group_index;
        integer input_index;
        integer kernel_index;
        integer lane;
        integer address;
        logic [63:0] packed_word;
        begin
            for (address = 0; address < WT_DEPTH;
                 address = address + 1) begin
                U_WEIGHT_PINGPONG.U_frameBuffer_A.mem[address] = '0;
            end

            // Conv2: 4 output groups, 16 input channels.
            for (group_index = 0; group_index < 4;
                 group_index = group_index + 1) begin
                for (input_index = 0; input_index < 16;
                     input_index = input_index + 1) begin
                    for (kernel_index = 0; kernel_index < 9;
                         kernel_index = kernel_index + 1) begin
                        address =
                            ((group_index * 16) + input_index) * 9
                            + kernel_index;
                        packed_word = '0;

                        for (lane = 0; lane < NUM_CH;
                             lane = lane + 1) begin
                            packed_word[lane*8 +: 8] =
                                expected_weight(
                                    group_index,
                                    input_index,
                                    kernel_index,
                                    lane
                                );
                        end

                        U_WEIGHT_PINGPONG
                            .U_frameBuffer_A.mem[address] = packed_word;
                    end
                end

                // Conv2 bias starts at word address 4*16*9 = 576.
                address = 4 * 16 * 9 + group_index;
                packed_word = '0;

                for (lane = 0; lane < NUM_CH; lane = lane + 1) begin
                    packed_word[lane*8 +: 8] =
                        expected_bias(group_index, lane);
                end

                U_WEIGHT_PINGPONG
                    .U_frameBuffer_A.mem[address] = packed_word;
            end
        end
    endtask

    task automatic start_load(
        input integer group_index,
        input integer input_index
    );
        begin
            while (!load_ready)
                @(posedge clk);

            @(negedge clk);
            output_group_index  = group_index;
            input_channel_index = input_index;
            load_start          = 1'b1;

            @(posedge clk);
            #1;
            load_start = 1'b0;
        end
    endtask

    task automatic wait_valid;
        integer timeout;
        begin
            timeout = 0;

            while (!weight_valid && timeout < 30) begin
                @(posedge clk);
                timeout = timeout + 1;
            end

            if (!weight_valid) begin
                $error("TIMEOUT: weight_valid was not asserted");
                errors = errors + 1;
            end
        end
    endtask

    task automatic check_loaded_values(
        input integer group_index,
        input integer input_index
    );
        integer kernel_index;
        integer lane;
        integer expected;
        begin
            for (lane = 0; lane < NUM_CH; lane = lane + 1) begin
                for (kernel_index = 0; kernel_index < 9;
                     kernel_index = kernel_index + 1) begin
                    expected = expected_weight(
                        group_index,
                        input_index,
                        kernel_index,
                        lane
                    );

                    if (weight_out[lane][kernel_index] !== expected) begin
                        $error(
                            "weight mismatch group=%0d ic=%0d ch=%0d k=%0d expected=%0d actual=%0d",
                            group_index,
                            input_index,
                            lane,
                            kernel_index,
                            expected,
                            weight_out[lane][kernel_index]
                        );
                        errors = errors + 1;
                    end
                end

                expected = expected_bias(group_index, lane);

                if (bias_out[lane] !== expected) begin
                    $error(
                        "bias mismatch group=%0d ch=%0d expected=%0d actual=%0d",
                        group_index,
                        lane,
                        expected,
                        bias_out[lane]
                    );
                    errors = errors + 1;
                end
            end
        end
    endtask

    task automatic check_read_addresses(
        input integer weight_base,
        input integer bias_address
    );
        integer index;
        begin
            for (index = 0; index < 9; index = index + 1)
                expected_addr[index] = weight_base + index;

            expected_addr[9] = bias_address;

            if (read_count != 10) begin
                $error(
                    "read count mismatch expected=10 actual=%0d",
                    read_count
                );
                errors = errors + 1;
            end

            for (index = 0; index < read_count; index = index + 1) begin
                if (captured_addr[index] !== expected_addr[index]) begin
                    $error(
                        "address mismatch index=%0d expected=%0d actual=%0d",
                        index,
                        expected_addr[index],
                        captured_addr[index]
                    );
                    errors = errors + 1;
                end
            end
        end
    endtask

    initial begin
        input_channels      = 16;
        output_groups       = 4;
        output_group_index  = 0;
        input_channel_index = 0;

        initialize_conv2_memory();

        repeat (5) @(posedge clk);
        rst_n = 1'b1;
        repeat (2) @(posedge clk);

        // Conv2 output group 2, input channel 5:
        // weight base = ((2*16)+5)*9 = 333
        // bias address = (4*16*9)+2 = 578
        read_count = 0;
        start_load(2, 5);
        wait_valid();
        @(posedge clk);
        #1;
        check_loaded_values(2, 5);
        check_read_addresses(333, 578);

        // A new accepted request must clear the previous weight_valid value.
        read_count = 0;
        start_load(0, 0);

        if (weight_valid !== 1'b0) begin
            $error("weight_valid did not clear on a new load request");
            errors = errors + 1;
        end

        wait_valid();
        @(posedge clk);
        #1;
        check_loaded_values(0, 0);
        check_read_addresses(0, 576);

        if (errors == 0) begin
            $display("PASS: Weight_Loader address sequence");
            $display("PASS: nine 64-bit weight words unpacked");
            $display("PASS: one 64-bit bias word sign-extended");
            $display("PASS: external pingpongBuffer left unchanged");
        end else begin
            $fatal(1, "FAIL: %0d error(s)", errors);
        end

        $finish;
    end

endmodule
