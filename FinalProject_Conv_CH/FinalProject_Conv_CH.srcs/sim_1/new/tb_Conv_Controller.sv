`timescale 1ns / 1ps

module tb_Conv_Controller;

    localparam integer NUM_CH             = 4;
    localparam integer NUM_INPUT_CHANNELS = 2;
    localparam integer IMAGE_WIDTH        = 6;
    localparam integer IMAGE_HEIGHT       = 6;
    localparam integer ADDR_WIDTH         = 16;

    localparam integer CH_SELECT_WIDTH = $clog2(NUM_CH);
    localparam integer POOL_WIDTH      = (IMAGE_WIDTH-2)/2;
    localparam integer POOL_HEIGHT     = (IMAGE_HEIGHT-2)/2;
    localparam integer POOL_PIXELS     = POOL_WIDTH*POOL_HEIGHT;
    localparam integer CONV_WIDTH      = IMAGE_WIDTH-2;
    localparam integer CONV_HEIGHT     = IMAGE_HEIGHT-2;
    localparam integer CONV_PIXELS     = CONV_WIDTH*CONV_HEIGHT;

    localparam logic [ADDR_WIDTH-1:0] WEIGHT_BASE = 16'h1000;

    logic clk = 1'b0;
    logic rst_n;
    logic start;
    logic source_bank;
    logic MaxPool_en;
    logic [15:0] cfg_image_width;
    logic [15:0] cfg_image_height;
    logic [15:0] cfg_input_channels;
    logic [15:0] cfg_output_channel_base;
    logic [ADDR_WIDTH-1:0] weight_base_addr;
    logic busy;
    logic done;

    logic weight_load_start;
    logic weight_load_ready;
    logic [ADDR_WIDTH-1:0] weight_load_addr;
    logic weight_valid;

    logic data_read_enable;
    logic data_read_ready;
    logic data_read_bank;
    logic [ADDR_WIDTH-1:0] data_read_addr;
    logic shift_pixel_ready;
    logic shift_window_valid;
    logic shift_window_ready;
    logic shift_tile_done;
    logic shift_clear;

    logic [NUM_CH-1:0] ch_enable;
    logic acc_clear;
    logic first_ic;
    logic last_ic;

    logic result_buffer_clear;
    logic result_output_valid;
    logic result_output_ready;
    logic result_output_done;
    logic [CH_SELECT_WIDTH-1:0] result_output_channel;
    logic [1:0] result_output_position;

    logic data_write_enable;
    logic data_write_bank;
    logic [ADDR_WIDTH-1:0] data_write_addr;

    logic [15:0] input_channel_index;
    logic [15:0] pool_x_index;
    logic [15:0] pool_y_index;

    integer error_count = 0;
    integer weight_delay;
    integer output_delay;
    integer output_window_count;
    integer pool_delay;
    integer reads_in_tile;
    integer weight_load_count;
    integer total_read_count;
    integer total_write_count;

    integer expected_address;
    integer handshake_cycle;

    Conv_Controller #(
        .NUM_CH      (NUM_CH),
        .ADDR_WIDTH  (ADDR_WIDTH),
        .CONFIG_WIDTH(16)
    ) dut (
        .clk                (clk),
        .rst_n              (rst_n),
        .start              (start),
        .source_bank        (source_bank),
        .MaxPool_en         (MaxPool_en),
        .cfg_image_width    (cfg_image_width),
        .cfg_image_height   (cfg_image_height),
        .cfg_input_channels (cfg_input_channels),
        .cfg_output_channel_base(cfg_output_channel_base),
        .weight_base_addr   (weight_base_addr),
        .busy               (busy),
        .done               (done),
        .weight_load_start  (weight_load_start),
        .weight_load_addr   (weight_load_addr),
        .weight_load_ready  (weight_load_ready),
        .weight_valid       (weight_valid),
        .data_read_enable   (data_read_enable),
        .data_read_ready    (data_read_ready),
        .data_read_bank     (data_read_bank),
        .data_read_addr     (data_read_addr),
        .shift_pixel_ready  (shift_pixel_ready),
        .shift_window_valid (shift_window_valid),
        .shift_window_ready (shift_window_ready),
        .shift_tile_done    (shift_tile_done),
        .shift_clear        (shift_clear),
        .ch_enable          (ch_enable),
        .acc_clear          (acc_clear),
        .first_ic           (first_ic),
        .last_ic            (last_ic),
        .result_buffer_clear(result_buffer_clear),
        .result_output_valid(result_output_valid),
        .result_output_ready(result_output_ready),
        .result_output_done (result_output_done),
        .result_output_channel(result_output_channel),
        .result_output_position(result_output_position),
        .data_write_enable  (data_write_enable),
        .data_write_bank    (data_write_bank),
        .data_write_addr    (data_write_addr),
        .input_channel_index(input_channel_index),
        .pool_x_index       (pool_x_index),
        .pool_y_index       (pool_y_index)
    );

    always #5 clk = ~clk;

    assign shift_pixel_ready = !shift_window_valid;

    assign shift_tile_done =
        shift_window_valid
        && shift_window_ready
        && (output_window_count == 3);

    assign result_output_done =
        result_output_valid
        && result_output_ready
        && (result_output_channel == NUM_CH-1)
        && (MaxPool_en || (result_output_position == 2'd3));

    // Periodic backpressure on every controller-facing handshake.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            handshake_cycle    <= 0;
            weight_load_ready  <= 1'b0;
            data_read_ready    <= 1'b0;
            shift_window_ready <= 1'b0;
        end else begin
            handshake_cycle    <= handshake_cycle + 1;
            weight_load_ready  <= ((handshake_cycle % 3) != 0);
            data_read_ready    <= ((handshake_cycle % 4) != 1);
            shift_window_ready <= ((handshake_cycle % 5) != 2);
        end
    end

    // Weight Buffer response model.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            weight_valid <= 1'b0;
            weight_delay <= 0;
        end else begin
            if (weight_load_start && weight_load_ready) begin
                weight_valid <= 1'b0;
                weight_delay <= 2;
            end else if (weight_delay > 0) begin
                weight_delay <= weight_delay - 1;

                if (weight_delay == 1)
                    weight_valid <= 1'b1;
            end
        end
    end

    // Shift Buffer timing model. Four windows begin shortly after the 16th
    // Data Buffer read request.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            shift_window_valid <= 1'b0;
            output_delay       <= 0;
            output_window_count <= 0;
            reads_in_tile      <= 0;
        end else begin
            if (weight_load_start && weight_load_ready)
                reads_in_tile <= 0;

            if (data_read_enable && data_read_ready) begin
                reads_in_tile <= reads_in_tile + 1;

                if (reads_in_tile == 15)
                    output_delay <= 2;
            end

            if (output_delay > 0) begin
                output_delay <= output_delay - 1;

                if (output_delay == 1) begin
                    shift_window_valid  <= 1'b1;
                    output_window_count <= 0;
                end
            end else if (shift_window_valid && shift_window_ready) begin
                if (output_window_count == 3) begin
                    shift_window_valid  <= 1'b0;
                    output_window_count <= 0;
                end else begin
                    output_window_count <= output_window_count + 1;
                end
            end
        end
    end

    // CH_Result_Buffer model. Serialized pooled results become valid after
    // the last input channel's fourth convolution window.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            result_output_valid    <= 1'b0;
            result_output_channel  <= '0;
            result_output_position <= 2'd0;
            pool_delay             <= 0;
        end else begin
            if (result_buffer_clear) begin
                result_output_valid    <= 1'b0;
                result_output_channel  <= '0;
                result_output_position <= 2'd0;
            end

            if (shift_tile_done && last_ic)
                pool_delay <= 3;

            if (pool_delay > 0) begin
                pool_delay <= pool_delay - 1;

                if (pool_delay == 1) begin
                    result_output_valid   <= 1'b1;
                    result_output_channel <= '0;
                end
            end

            if (result_output_valid && result_output_ready) begin
                if (result_output_channel == NUM_CH-1) begin
                    result_output_channel <= '0;

                    if (MaxPool_en
                        || (result_output_position == 2'd3)) begin
                        result_output_valid    <= 1'b0;
                        result_output_position <= 2'd0;
                    end else begin
                        result_output_position
                            <= result_output_position + 1'b1;
                    end
                end else begin
                    result_output_channel
                        <= result_output_channel + 1'b1;
                end
            end
        end
    end

    // Protocol and address checks.
    always @(posedge clk) begin
        if (rst_n && weight_load_start && weight_load_ready) begin
            expected_address =
                WEIGHT_BASE
                + input_channel_index * (10*NUM_CH);

            if (weight_load_addr !== expected_address[ADDR_WIDTH-1:0]) begin
                $error("Weight address: expected %h, got %h",
                       expected_address[ADDR_WIDTH-1:0],
                       weight_load_addr);
                error_count = error_count + 1;
            end

            weight_load_count = weight_load_count + 1;
        end

        if (rst_n && data_read_enable && data_read_ready) begin
            if (!weight_valid) begin
                $error("Data read was issued before weight_valid");
                error_count = error_count + 1;
            end

            if (data_read_bank !== source_bank) begin
                $error("Data read bank is incorrect");
                error_count = error_count + 1;
            end

            expected_address =
                input_channel_index * (IMAGE_WIDTH*IMAGE_HEIGHT)
                + ((pool_y_index*2 + reads_in_tile/4) * IMAGE_WIDTH)
                + (pool_x_index*2 + reads_in_tile%4);

            if (data_read_addr !== expected_address[ADDR_WIDTH-1:0]) begin
                $error("Data read address: expected %0d, got %0d",
                       expected_address, data_read_addr);
                error_count = error_count + 1;
            end

            total_read_count = total_read_count + 1;
        end

        if (rst_n && data_write_enable) begin
            if (!result_output_valid) begin
                $error("Data write occurred without result_output_valid");
                error_count = error_count + 1;
            end

            if (data_write_bank === source_bank) begin
                $error("Data write bank must differ from source bank");
                error_count = error_count + 1;
            end

            if (MaxPool_en) begin
                expected_address =
                    result_output_channel * POOL_PIXELS
                    + pool_y_index * POOL_WIDTH
                    + pool_x_index;
            end else begin
                expected_address =
                    result_output_channel * CONV_PIXELS
                    + (pool_y_index*2 + result_output_position[1])
                        * CONV_WIDTH
                    + pool_x_index*2
                    + result_output_position[0];
            end

            if (data_write_addr !== expected_address[ADDR_WIDTH-1:0]) begin
                $error("Data write address: expected %0d, got %0d",
                       expected_address, data_write_addr);
                error_count = error_count + 1;
            end

            total_write_count = total_write_count + 1;
        end
    end

    initial begin
        rst_n             = 1'b0;
        start             = 1'b0;
        source_bank       = 1'b0;
        MaxPool_en        = 1'b1;
        cfg_image_width   = IMAGE_WIDTH;
        cfg_image_height  = IMAGE_HEIGHT;
        cfg_input_channels = NUM_INPUT_CHANNELS;
        cfg_output_channel_base = 0;
        weight_base_addr  = WEIGHT_BASE;
        weight_load_count = 0;
        total_read_count  = 0;
        total_write_count = 0;

        repeat (3) @(posedge clk);
        #1;

        if ((busy !== 1'b0) || (done !== 1'b0)) begin
            $error("Reset status outputs are incorrect");
            error_count = error_count + 1;
        end

        rst_n = 1'b1;

        @(negedge clk);
        source_bank = 1'b1;
        start       = 1'b1;

        @(posedge clk);
        #1;

        if ((busy !== 1'b1)
            || (acc_clear !== 1'b0)
            || (result_buffer_clear !== 1'b0)) begin
            // Clear pulses were accepted on the start edge and are low after
            // the state transition.
            if (busy !== 1'b1) begin
                $error("Controller did not leave IDLE after start");
                error_count = error_count + 1;
            end
        end

        @(negedge clk);
        start = 1'b0;

        wait (done === 1'b1);
        #1;

        if (weight_load_count
            != POOL_WIDTH*POOL_HEIGHT*NUM_INPUT_CHANNELS) begin
            $error("Expected %0d weight loads, got %0d",
                   POOL_WIDTH*POOL_HEIGHT*NUM_INPUT_CHANNELS,
                   weight_load_count);
            error_count = error_count + 1;
        end

        if (total_read_count
            != POOL_WIDTH*POOL_HEIGHT*NUM_INPUT_CHANNELS*16) begin
            $error("Expected %0d reads, got %0d",
                   POOL_WIDTH*POOL_HEIGHT
                       * NUM_INPUT_CHANNELS * 16,
                   total_read_count);
            error_count = error_count + 1;
        end

        if (total_write_count
            != POOL_WIDTH*POOL_HEIGHT*NUM_CH) begin
            $error("Expected %0d writes, got %0d",
                   POOL_WIDTH*POOL_HEIGHT*NUM_CH,
                   total_write_count);
            error_count = error_count + 1;
        end

        @(posedge clk);
        #1;

        if ((busy !== 1'b0) || (done !== 1'b0)) begin
            $error("Controller did not return to idle after done pulse");
            error_count = error_count + 1;
        end

        // Run the same image with MaxPool bypassed. Every tile must now
        // produce four spatial positions per output channel.
        weight_load_count = 0;
        total_read_count  = 0;
        total_write_count = 0;

        @(negedge clk);
        source_bank = 1'b0;
        MaxPool_en  = 1'b0;
        start       = 1'b1;

        @(negedge clk);
        start = 1'b0;

        wait (done === 1'b1);
        #1;

        if (weight_load_count
            != POOL_WIDTH*POOL_HEIGHT*NUM_INPUT_CHANNELS) begin
            $error("Bypass weight load count is incorrect");
            error_count = error_count + 1;
        end

        if (total_read_count
            != POOL_WIDTH*POOL_HEIGHT*NUM_INPUT_CHANNELS*16) begin
            $error("Bypass read count is incorrect");
            error_count = error_count + 1;
        end

        if (total_write_count
            != POOL_WIDTH*POOL_HEIGHT*NUM_CH*4) begin
            $error("Expected %0d bypass writes, got %0d",
                   POOL_WIDTH*POOL_HEIGHT*NUM_CH*4,
                   total_write_count);
            error_count = error_count + 1;
        end

        @(posedge clk);
        #1;

        if ((busy !== 1'b0) || (done !== 1'b0)) begin
            $error("Bypass run did not return to idle");
            error_count = error_count + 1;
        end

        if (error_count == 0)
            $display("PASS: pooled and bypass Conv_Controller tests passed");
        else
            $fatal(1,
                   "FAIL: %0d Conv_Controller test(s) failed",
                   error_count);

        $finish;
    end

    initial begin
        #20000;
        $fatal(1, "FAIL: Conv_Controller test timed out");
    end

endmodule
