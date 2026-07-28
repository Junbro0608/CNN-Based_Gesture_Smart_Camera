`timescale 1ns / 1ps

module tb_Shift_Buffer;

    localparam integer PIXEL_WIDTH = 8;

    logic clk = 1'b0;
    logic rst_n;
    logic clear;

    logic [PIXEL_WIDTH-1:0] pixel_data;
    logic                   pixel_valid;
    logic                   pixel_ready;

    logic [PIXEL_WIDTH-1:0] pixel_window [0:8];
    logic                   window_valid;
    logic                   window_ready;
    logic [1:0]             window_index;
    logic                   tile_done;

    integer error_count = 0;
    integer accepted_pixel_count;
    integer observed_window_count;
    integer active_tile_base;
    integer row;
    integer column;
    integer check_index;

    logic monitor_enable;

    Shift_Buffer #(
        .PIXEL_WIDTH(PIXEL_WIDTH)
    ) dut (
        .clk         (clk),
        .rst_n       (rst_n),
        .clear       (clear),
        .pixel_data  (pixel_data),
        .pixel_valid (pixel_valid),
        .pixel_ready (pixel_ready),
        .pixel_window(pixel_window),
        .window_valid(window_valid),
        .window_ready(window_ready),
        .window_index(window_index),
        .tile_done   (tile_done)
    );

    always #5 clk = ~clk;

    function automatic logic [PIXEL_WIDTH-1:0] tile_value(
        input integer tile_base,
        input integer tile_row,
        input integer tile_column
    );
        begin
            tile_value = tile_base + tile_row*10 + tile_column;
        end
    endfunction

    function automatic logic [PIXEL_WIDTH-1:0] expected_window_value(
        input integer tile_base,
        input integer selected_window,
        input integer selected_index
    );
        integer window_row;
        integer window_column;
        integer row_offset;
        integer column_offset;
        begin
            window_row    = selected_index / 3;
            window_column = selected_index % 3;

            case (selected_window)
                0: begin
                    row_offset    = 0;
                    column_offset = 0;
                end
                1: begin
                    row_offset    = 0;
                    column_offset = 1;
                end
                2: begin
                    row_offset    = 1;
                    column_offset = 0;
                end
                default: begin
                    row_offset    = 1;
                    column_offset = 1;
                end
            endcase

            expected_window_value =
                tile_value(
                    tile_base,
                    window_row + row_offset,
                    window_column + column_offset
                );
        end
    endfunction

    // Check the four windows at the exact rising edges where CH_wrapper would
    // accept them.
    always @(posedge clk) begin
        if (rst_n && window_valid && window_ready) begin
            if (!monitor_enable) begin
                $error("A window was produced outside an active tile test");
                error_count = error_count + 1;
            end

            if (window_index !== observed_window_count[1:0]) begin
                $error("Expected window_index %0d, got %0d",
                       observed_window_count, window_index);
                error_count = error_count + 1;
            end

            for (check_index = 0;
                 check_index < 9;
                 check_index = check_index + 1) begin
                if (pixel_window[check_index] !==
                    expected_window_value(
                        active_tile_base,
                        observed_window_count,
                        check_index
                    )) begin
                    $error(
                        "Window %0d index %0d: expected %0d, got %0d",
                        observed_window_count,
                        check_index,
                        expected_window_value(
                            active_tile_base,
                            observed_window_count,
                            check_index
                        ),
                        pixel_window[check_index]
                    );
                    error_count = error_count + 1;
                end
            end

            if ((observed_window_count == 3)
                && (tile_done !== 1'b1)) begin
                $error("tile_done was not asserted with the fourth window");
                error_count = error_count + 1;
            end

            if ((observed_window_count != 3)
                && (tile_done !== 1'b0)) begin
                $error("tile_done asserted before the fourth window");
                error_count = error_count + 1;
            end

            observed_window_count = observed_window_count + 1;
        end
    end

    task automatic send_tile(
        input integer tile_base,
        input logic   insert_stalls
    );
        begin
            active_tile_base     = tile_base;
            accepted_pixel_count = 0;
            observed_window_count = 0;
            monitor_enable       = 1'b1;

            for (row = 0; row < 4; row = row + 1) begin
                for (column = 0; column < 4; column = column + 1) begin
                    if (insert_stalls
                        && (((row == 1) && (column == 2))
                            || ((row == 3) && (column == 0)))) begin
                        @(negedge clk);
                        pixel_valid = 1'b0;

                        @(posedge clk);
                        #1;

                        if ((window_valid !== 1'b0)
                            || (pixel_ready !== 1'b1)) begin
                            $error(
                                "Capture stall changed the buffer state"
                            );
                            error_count = error_count + 1;
                        end
                    end

                    @(negedge clk);
                    pixel_data =
                        tile_value(tile_base, row, column);
                    pixel_valid = 1'b1;

                    while (pixel_ready !== 1'b1)
                        @(negedge clk);

                    @(posedge clk);
                    #1;
                    accepted_pixel_count =
                        accepted_pixel_count + 1;

                    if ((accepted_pixel_count < 16)
                        && (window_valid !== 1'b0)) begin
                        $error(
                            "A window was produced before 16 pixels arrived"
                        );
                        error_count = error_count + 1;
                    end
                end
            end

            // Do not present another tile while the four windows are emitted.
            @(negedge clk);
            pixel_valid = 1'b0;

            if (insert_stalls) begin
                // Stall the first output window and verify that both the
                // index and all nine pixels remain stable.
                window_ready = 1'b0;

                repeat (2) begin
                    @(posedge clk);
                    #1;

                    if ((window_valid !== 1'b1)
                        || (window_index !== 2'd0)
                        || (tile_done !== 1'b0)) begin
                        $error("Window control changed during backpressure");
                        error_count = error_count + 1;
                    end

                    for (check_index = 0;
                         check_index < 9;
                         check_index = check_index + 1) begin
                        if (pixel_window[check_index] !==
                            expected_window_value(
                                tile_base, 0, check_index
                            )) begin
                            $error("Window data changed during backpressure");
                            error_count = error_count + 1;
                        end
                    end
                end

                @(negedge clk);
                window_ready = 1'b1;
            end

            wait (pixel_ready === 1'b1);
            #1;

            if (observed_window_count != 4) begin
                $error("Expected four windows, observed %0d",
                       observed_window_count);
                error_count = error_count + 1;
            end

            if ((window_valid !== 1'b0)
                || (tile_done !== 1'b0)) begin
                $error("Output signals did not clear after the fourth window");
                error_count = error_count + 1;
            end

            monitor_enable = 1'b0;
        end
    endtask

    task automatic pulse_clear;
        begin
            @(negedge clk);
            clear       = 1'b1;
            pixel_valid = 1'b0;

            @(posedge clk);
            #1;

            if ((pixel_ready !== 1'b1)
                || (window_valid !== 1'b0)
                || (tile_done !== 1'b0)) begin
                $error("clear did not return the buffer to capture state");
                error_count = error_count + 1;
            end

            @(negedge clk);
            clear = 1'b0;
        end
    endtask

    initial begin
        rst_n                = 1'b0;
        window_ready         = 1'b1;
        clear                = 1'b0;
        pixel_data           = '0;
        pixel_valid          = 1'b0;
        monitor_enable       = 1'b0;
        active_tile_base     = 0;
        accepted_pixel_count = 0;
        observed_window_count = 0;

        repeat (3) @(posedge clk);
        #1;

        if ((pixel_ready !== 1'b1)
            || (window_valid !== 1'b0)
            || (tile_done !== 1'b0)) begin
            $error("Reset output values are incorrect");
            error_count = error_count + 1;
        end

        rst_n = 1'b1;

        // Tile 0 checks the exact four-window order and verifies that capture
        // stalls do not advance the 16-pixel input counter.
        send_tile(0, 1'b1);

        // Tile 1 verifies clear and proves that all old tile values are
        // replaced before any new valid window is emitted.
        pulse_clear();
        send_tile(100, 1'b0);

        if (error_count == 0)
            $display(
                "PASS: all four-convolution Shift_Buffer tests passed"
            );
        else
            $fatal(1,
                   "FAIL: %0d Shift_Buffer test(s) failed",
                   error_count);

        $finish;
    end

    initial begin
        #5000;
        $fatal(1, "FAIL: Shift_Buffer test timed out");
    end

endmodule
