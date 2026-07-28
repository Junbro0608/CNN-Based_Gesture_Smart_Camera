`timescale 1ns / 1ps

module tb_Conv_Controller;

    localparam integer NUM_CH             = 4;
    localparam integer NUM_INPUT_CHANNELS = 2;
    localparam integer IMAGE_WIDTH        = 6;
    localparam integer IMAGE_HEIGHT       = 6;
    localparam integer ADDR_WIDTH         = 16;

    localparam integer CH_SELECT_WIDTH = $clog2(NUM_CH);
    localparam integer IC_WIDTH        = $clog2(NUM_INPUT_CHANNELS);
    localparam integer POOL_WIDTH      = (IMAGE_WIDTH-2)/2;
    localparam integer POOL_HEIGHT     = (IMAGE_HEIGHT-2)/2;
    localparam integer POOL_X_WIDTH    = $clog2(POOL_WIDTH);
    localparam integer POOL_Y_WIDTH    = $clog2(POOL_HEIGHT);
    localparam integer POOL_PIXELS     = POOL_WIDTH*POOL_HEIGHT;

    localparam logic [ADDR_WIDTH-1:0] WEIGHT_BASE = 16'h1000;

    logic clk = 1'b0;
    logic rst_n;
    logic start;
    logic source_bank;
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

    logic [NUM_CH-1:0] pool_valid;
    logic maxpool_clear;

    logic [CH_SELECT_WIDTH-1:0] channel_select;
    logic select_enable;
    logic ch_wvalid;
    logic ch_wready;

    logic data_write_enable;
    logic data_write_bank;
    logic [ADDR_WIDTH-1:0] data_write_addr;

    logic [IC_WIDTH-1:0] input_channel_index;
    logic [POOL_X_WIDTH-1:0] pool_x_index;
    logic [POOL_Y_WIDTH-1:0] pool_y_index;

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
        .NUM_CH            (NUM_CH),
        .NUM_INPUT_CHANNELS(NUM_INPUT_CHANNELS),
        .IMAGE_WIDTH       (IMAGE_WIDTH),
        .IMAGE_HEIGHT      (IMAGE_HEIGHT),
        .ADDR_WIDTH        (ADDR_WIDTH)
    ) dut (
        .clk                (clk),
        .rst_n              (rst_n),
        .start              (start),
        .source_bank        (source_bank),
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
        .pool_valid         (pool_valid),
        .maxpool_clear      (maxpool_clear),
        .channel_select     (channel_select),
        .select_enable      (select_enable),
        .ch_wvalid          (ch_wvalid),
        .ch_wready          (ch_wready),
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

    assign ch_wvalid =
        select_enable && pool_valid[channel_select];

    // Periodic backpressure on every controller-facing handshake.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            handshake_cycle    <= 0;
            weight_load_ready  <= 1'b0;
            data_read_ready    <= 1'b0;
            shift_window_ready <= 1'b0;
            ch_wready          <= 1'b0;
        end else begin
            handshake_cycle    <= handshake_cycle + 1;
            weight_load_ready  <= ((handshake_cycle % 3) != 0);
            data_read_ready    <= ((handshake_cycle % 4) != 1);
            shift_window_ready <= ((handshake_cycle % 5) != 2);
            ch_wready          <= ((handshake_cycle % 3) != 1);
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

    // MaxPool wrapper model. Results become valid after the last input
    // channel's fourth convolution window.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pool_valid <= '0;
            pool_delay <= 0;
        end else begin
            if (maxpool_clear)
                pool_valid <= '0;

            if (shift_tile_done && last_ic)
                pool_delay <= 3;

            if (pool_delay > 0) begin
                pool_delay <= pool_delay - 1;

                if (pool_delay == 1)
                    pool_valid <= {NUM_CH{1'b1}};
            end

            if (ch_wvalid && ch_wready)
                pool_valid[channel_select] <= 1'b0;
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
            if (!ch_wvalid) begin
                $error("Data write occurred without ch_wvalid");
                error_count = error_count + 1;
            end

            if (data_write_bank === source_bank) begin
                $error("Data write bank must differ from source bank");
                error_count = error_count + 1;
            end

            expected_address =
                channel_select * POOL_PIXELS
                + pool_y_index * POOL_WIDTH
                + pool_x_index;

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
            || (maxpool_clear !== 1'b0)) begin
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

        if (error_count == 0)
            $display("PASS: all Conv_Controller tests passed");
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
