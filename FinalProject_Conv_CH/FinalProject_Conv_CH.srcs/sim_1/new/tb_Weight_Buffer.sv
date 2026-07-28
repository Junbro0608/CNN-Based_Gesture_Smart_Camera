`timescale 1ns / 1ps

module tb_Weight_Buffer;

    localparam integer NUM_CH     = 8;
    localparam integer ADDR_WIDTH = 16;

    logic clk = 1'b0;
    logic rst_n;

    logic load_start;
    logic load_ready;
    logic [ADDR_WIDTH-1:0] load_addr;
    logic busy;
    logic weight_valid;
    logic packet_error;
    logic request_valid;
    logic request_ready;
    logic [ADDR_WIDTH-1:0] request_addr;

    logic [NUM_CH*8-1:0] s_axis_weight_tdata;
    logic                s_axis_weight_tvalid;
    logic                s_axis_weight_tready;
    logic                s_axis_weight_tlast;

    logic signed [7:0] weight_out [0:NUM_CH-1][0:8];
    logic signed [7:0] bias_out   [0:NUM_CH-1];

    logic [NUM_CH*8-1:0] packet_0 [0:9];
    logic [NUM_CH*8-1:0] packet_1 [0:9];

    integer error_count = 0;
    integer word;
    integer ch;

    Weight_Buffer #(
        .NUM_CH    (NUM_CH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) dut (
        .clk                 (clk),
        .rst_n               (rst_n),
        .load_start          (load_start),
        .load_ready          (load_ready),
        .load_addr           (load_addr),
        .busy                (busy),
        .weight_valid        (weight_valid),
        .packet_error        (packet_error),
        .request_valid       (request_valid),
        .request_ready       (request_ready),
        .request_addr        (request_addr),
        .s_axis_weight_tdata (s_axis_weight_tdata),
        .s_axis_weight_tvalid(s_axis_weight_tvalid),
        .s_axis_weight_tready(s_axis_weight_tready),
        .s_axis_weight_tlast (s_axis_weight_tlast),
        .weight_out          (weight_out),
        .bias_out            (bias_out)
    );

    always #5 clk = ~clk;

    task automatic pulse_load_start;
        begin
            @(negedge clk);
            load_start = 1'b1;
            request_ready = 1'b0;

            @(posedge clk);
            #1;

            if (busy !== 1'b1) begin
                $error("Load start: busy was not asserted");
                error_count = error_count + 1;
            end

            if (weight_valid !== 1'b0) begin
                $error("Load start: weight_valid was not cleared");
                error_count = error_count + 1;
            end

            if (packet_error !== 1'b0) begin
                $error("Load start: packet_error was not cleared");
                error_count = error_count + 1;
            end

            if ((request_valid !== 1'b1)
                || (request_addr !== load_addr)
                || (s_axis_weight_tready !== 1'b0)) begin
                $error("Load start: address request was not registered");
                error_count = error_count + 1;
            end

            @(negedge clk);
            load_start = 1'b0;

            repeat (2) begin
                @(posedge clk);
                #1;

                if ((request_valid !== 1'b1)
                    || (request_addr !== load_addr)
                    || (s_axis_weight_tready !== 1'b0)) begin
                    $error("Address request changed during backpressure");
                    error_count = error_count + 1;
                end
            end

            @(negedge clk);
            request_ready = 1'b1;

            @(posedge clk);
            #1;

            if ((request_valid !== 1'b0)
                || (s_axis_weight_tready !== 1'b1)) begin
                $error("Load start: stream did not open after request");
                error_count = error_count + 1;
            end
        end
    endtask

    task automatic send_stream_word(
        input logic [NUM_CH*8-1:0] data_value,
        input logic                last_value
    );
        begin
            // Add an idle cycle to confirm that the buffer waits for tvalid.
            @(negedge clk);
            s_axis_weight_tvalid = 1'b0;
            s_axis_weight_tlast  = 1'b0;

            @(negedge clk);
            s_axis_weight_tdata  = data_value;
            s_axis_weight_tlast  = last_value;
            s_axis_weight_tvalid = 1'b1;

            while (s_axis_weight_tready !== 1'b1)
                @(negedge clk);

            @(posedge clk);
            #1;

            @(negedge clk);
            s_axis_weight_tvalid = 1'b0;
            s_axis_weight_tlast  = 1'b0;
        end
    endtask

    task automatic send_packet(input integer packet_number);
        integer stream_word;
        begin
            for (stream_word = 0;
                 stream_word < 10;
                 stream_word = stream_word + 1) begin
                if (packet_number == 0)
                    send_stream_word(
                        packet_0[stream_word],
                        stream_word == 9
                    );
                else
                    send_stream_word(
                        packet_1[stream_word],
                        stream_word == 9
                    );
            end
        end
    endtask

    task automatic check_load_complete;
        begin
            #1;

            if (busy !== 1'b0) begin
                $error("Load complete: busy did not return low");
                error_count = error_count + 1;
            end

            if (weight_valid !== 1'b1) begin
                $error("Load complete: weight_valid was not asserted");
                error_count = error_count + 1;
            end

            if (packet_error !== 1'b0) begin
                $error("Load complete: packet_error was asserted");
                error_count = error_count + 1;
            end

            if (s_axis_weight_tready !== 1'b0) begin
                $error("Load complete: AXI tready did not return low");
                error_count = error_count + 1;
            end
        end
    endtask

    task automatic check_packet(input integer packet_number);
        integer kernel_index;
        integer channel_index;
        logic signed [7:0] expected_value;
        begin
            for (channel_index = 0;
                 channel_index < NUM_CH;
                 channel_index = channel_index + 1) begin
                for (kernel_index = 0;
                     kernel_index < 9;
                     kernel_index = kernel_index + 1) begin
                    if (packet_number == 0)
                        expected_value =
                            $signed(packet_0[kernel_index]
                                    [channel_index*8 +: 8]);
                    else
                        expected_value =
                            $signed(packet_1[kernel_index]
                                    [channel_index*8 +: 8]);

                    if (weight_out[channel_index][kernel_index]
                        !== expected_value) begin
                        $error("Packet %0d, CH%0d, kernel %0d mismatch",
                               packet_number,
                               channel_index,
                               kernel_index);
                        $display(
                            "  expected %0d, got %0d",
                            expected_value,
                            weight_out[channel_index][kernel_index]
                        );
                        error_count = error_count + 1;
                    end
                end

                if (packet_number == 0)
                    expected_value =
                        $signed(packet_0[9][channel_index*8 +: 8]);
                else
                    expected_value =
                        $signed(packet_1[9][channel_index*8 +: 8]);

                if (bias_out[channel_index] !== expected_value) begin
                    $error("Packet %0d, CH%0d bias mismatch",
                           packet_number, channel_index);
                    $display("  expected %0d, got %0d",
                             expected_value, bias_out[channel_index]);
                    error_count = error_count + 1;
                end
            end
        end
    endtask

    initial begin
        // Kernel values include both negative and positive signed bytes.
        // Word 9 contains the bias values.
        for (word = 0; word < 10; word = word + 1) begin
            packet_0[word] = '0;
            packet_1[word] = '0;

            for (ch = 0; ch < NUM_CH; ch = ch + 1) begin
                if (word < 9) begin
                    packet_0[word][ch*8 +: 8] =
                        $signed(word*NUM_CH + ch - 32);
                    packet_1[word][ch*8 +: 8] =
                        $signed(50 - word*7 - ch);
                end else begin
                    packet_0[word][ch*8 +: 8] = $signed(-8 + ch);
                    packet_1[word][ch*8 +: 8] = $signed(20 + ch);
                end
            end
        end

        rst_n                = 1'b0;
        load_start           = 1'b0;
        load_addr            = 16'h2400;
        request_ready        = 1'b1;
        s_axis_weight_tdata  = '0;
        s_axis_weight_tvalid = 1'b0;
        s_axis_weight_tlast  = 1'b0;

        repeat (3) @(posedge clk);
        #1;

        if ((busy !== 1'b0)
            || (weight_valid !== 1'b0)
            || (packet_error !== 1'b0)
            || (s_axis_weight_tready !== 1'b0)) begin
            $error("Reset output values are incorrect");
            error_count = error_count + 1;
        end

        rst_n = 1'b1;

        // First valid ten-beat AXI packet.
        pulse_load_start();
        send_packet(0);
        check_load_complete();
        check_packet(0);

        // weight_valid must remain asserted while the packet is reused.
        repeat (3) begin
            @(posedge clk);
            #1;
            if (weight_valid !== 1'b1) begin
                $error("weight_valid did not remain high after loading");
                error_count = error_count + 1;
            end
        end

        // Verify that an early TLAST is rejected.
        pulse_load_start();
        send_stream_word(packet_1[0], 1'b0);
        send_stream_word(packet_1[1], 1'b0);
        send_stream_word(packet_1[2], 1'b1);

        if ((busy !== 1'b0)
            || (weight_valid !== 1'b0)
            || (packet_error !== 1'b1)) begin
            $error("Early TLAST was not rejected");
            error_count = error_count + 1;
        end

        // A new load clears the error and replaces all stored values.
        pulse_load_start();
        send_packet(1);
        check_load_complete();
        check_packet(1);

        if (error_count == 0)
            $display("PASS: all AXI-stream Weight_Buffer tests passed");
        else
            $fatal(1,
                   "FAIL: %0d Weight_Buffer test(s) failed",
                   error_count);

        $finish;
    end

    initial begin
        #5000;
        $fatal(1, "FAIL: Weight_Buffer test timed out");
    end

endmodule
