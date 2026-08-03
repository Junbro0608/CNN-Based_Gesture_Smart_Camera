`timescale 1ns / 1ps

module tb_pool4_feature_path;

    localparam int INPUT_WIDTH = 16;
    localparam int OUTPUT_WIDTH = INPUT_WIDTH / 2;
    localparam int CHANNELS = 8;
    localparam int INPUT_PIXELS = INPUT_WIDTH * INPUT_WIDTH;
    localparam int EXPECTED_WRITES = CHANNELS * OUTPUT_WIDTH * OUTPUT_WIDTH;

    logic clk;
    logic rst_n;
    logic start;
    logic source_bank;
    logic busy;
    logic done;
    logic [31:0] raddr;
    logic signed [7:0] rdata;
    logic we;
    logic w_sel;
    logic [31:0] waddr;
    logic signed [7:0] wdata;
    logic signed [7:0] buffer_a [0:INPUT_PIXELS * CHANNELS - 1];
    logic signed [7:0] buffer_b [0:INPUT_PIXELS * CHANNELS - 1];

    integer write_count;
    integer error_count;
    integer buffer_index;
    integer cycle_count;
    integer test_seed;

    Standalone_MaxPool #(
        .DATA_WIDTH(8),
        .ADDR_WIDTH(32),
        .CONFIG_WIDTH(16)
    ) dut (
        .clk          (clk),
        .rst_n        (rst_n),
        .start        (start),
        .source_bank  (source_bank),
        .input_width  (INPUT_WIDTH),
        .input_height (INPUT_WIDTH),
        .channel_count(CHANNELS),
        .busy         (busy),
        .done         (done),
        .rAddr        (raddr),
        .rData        (rdata),
        .we           (we),
        .w_sel        (w_sel),
        .wAddr        (waddr),
        .wData        (wdata)
    );

    function automatic logic signed [7:0] input_value(
        input integer seed,
        input integer channel,
        input integer row,
        input integer col
    );
        integer raw_value;
        begin
            raw_value = (seed + channel * 41 + row * 17 + col * 7) % 256;
            input_value = raw_value - 128;
        end
    endfunction

    function automatic logic signed [7:0] expected_value(
        input integer seed,
        input integer address
    );
        integer channel;
        integer output_row;
        integer output_col;
        integer row_offset;
        integer col_offset;
        integer maximum;
        integer sample;
        begin
            channel = address / (OUTPUT_WIDTH * OUTPUT_WIDTH);
            output_row = (address / OUTPUT_WIDTH) % OUTPUT_WIDTH;
            output_col = address % OUTPUT_WIDTH;
            maximum = -128;

            for (row_offset = 0; row_offset < 2; row_offset = row_offset + 1) begin
                for (col_offset = 0; col_offset < 2; col_offset = col_offset + 1) begin
                    sample = input_value(
                        seed,
                        channel,
                        output_row * 2 + row_offset,
                        output_col * 2 + col_offset
                    );
                    if (sample > maximum)
                        maximum = sample;
                end
            end

            expected_value = maximum;
        end
    endfunction

    task automatic load_source_bank(
        input logic bank,
        input integer seed
    );
        integer channel;
        integer row;
        integer col;
        integer address;
        begin
            for (channel = 0; channel < CHANNELS; channel = channel + 1) begin
                for (row = 0; row < INPUT_WIDTH; row = row + 1) begin
                    for (col = 0; col < INPUT_WIDTH; col = col + 1) begin
                        address = channel * INPUT_PIXELS + row * INPUT_WIDTH + col;
                        if (bank)
                            buffer_b[address] = input_value(seed, channel, row, col);
                        else
                            buffer_a[address] = input_value(seed, channel, row, col);
                    end
                end
            end
        end
    endtask

    task automatic run_pool(input logic bank, input integer seed);
        begin
            source_bank = bank;
            test_seed = seed;
            write_count = 0;
            error_count = 0;
            @(negedge clk);
            start = 1'b1;
            @(negedge clk);
            start = 1'b0;
            wait (done);
            @(negedge clk);

            if (write_count != EXPECTED_WRITES) begin
                $display("[FAIL] source bank %0d wrote %0d values, expected %0d",
                         bank, write_count, EXPECTED_WRITES);
                $fatal(1);
            end
            if (error_count != 0) begin
                $display("[FAIL] source bank %0d had %0d data/bank errors",
                         bank, error_count);
                $fatal(1);
            end
        end
    endtask

    always #4 clk = ~clk;

    // pingpongBuffer reads the bank opposite w_sel on the next clock.
    always @(posedge clk) begin
        if (w_sel)
            rdata <= buffer_a[raddr];
        else
            rdata <= buffer_b[raddr];

        if (we) begin
            write_count <= write_count + 1;
            if (w_sel == source_bank) begin
                error_count <= error_count + 1;
                $display("[FAIL] source bank %0d wrote back to its source bank", source_bank);
            end
            if ($signed(wdata) !== expected_value(test_seed, waddr)) begin
                error_count <= error_count + 1;
                if (error_count < 8)
                    $display("[FAIL] source=%0d addr=%0d got=%0d exp=%0d",
                             source_bank, waddr, $signed(wdata),
                             $signed(expected_value(test_seed, waddr)));
            end

            if (w_sel)
                buffer_b[waddr] <= wdata;
            else
                buffer_a[waddr] <= wdata;
        end
    end

    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        start = 1'b0;
        source_bank = 1'b0;
        rdata = '0;
        write_count = 0;
        error_count = 0;
        test_seed = 0;

        for (buffer_index = 0;
             buffer_index < INPUT_PIXELS * CHANNELS;
             buffer_index = buffer_index + 1) begin
            buffer_a[buffer_index] = '0;
            buffer_b[buffer_index] = '0;
        end

        repeat (3) @(negedge clk);
        rst_n = 1'b1;

        load_source_bank(1'b0, 13);
        run_pool(1'b0, 13);

        load_source_bank(1'b1, 79);
        run_pool(1'b1, 79);

        $display("PASS: Pool4 wrote %0d signed maxima for each source bank",
                 EXPECTED_WRITES);
        $finish;
    end

    initial begin
        cycle_count = 0;
        while (cycle_count < 50000) begin
            @(posedge clk);
            cycle_count = cycle_count + 1;
        end
        $display("[FAIL] Pool4 test timed out");
        $fatal(1);
    end

endmodule