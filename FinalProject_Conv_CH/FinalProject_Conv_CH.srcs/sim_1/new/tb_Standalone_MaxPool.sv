`timescale 1ns / 1ps

module tb_Standalone_MaxPool;

    localparam integer DATA_WIDTH = 8;
    localparam integer ADDR_WIDTH = 8;
    localparam integer DEPTH      = 64;

    logic clk = 1'b0;
    logic rst_n;
    logic start;
    logic source_bank;
    logic [15:0] input_width;
    logic [15:0] input_height;
    logic [15:0] channel_count;
    logic busy;
    logic done;

    logic [ADDR_WIDTH-1:0] rAddr;
    logic signed [DATA_WIDTH-1:0] rData;
    logic we;
    logic w_sel;
    logic [ADDR_WIDTH-1:0] wAddr;
    logic signed [DATA_WIDTH-1:0] wData;

    logic signed [DATA_WIDTH-1:0] bank_0 [0:DEPTH-1];
    logic signed [DATA_WIDTH-1:0] bank_1 [0:DEPTH-1];

    integer error_count = 0;
    integer write_count;
    integer index;

    Standalone_MaxPool #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .CONFIG_WIDTH(16)
    ) dut (
        .clk          (clk),
        .rst_n        (rst_n),
        .start        (start),
        .source_bank  (source_bank),
        .input_width  (input_width),
        .input_height (input_height),
        .channel_count(channel_count),
        .busy         (busy),
        .done         (done),
        .rAddr        (rAddr),
        .rData        (rData),
        .we           (we),
        .w_sel        (w_sel),
        .wAddr        (wAddr),
        .wData        (wData)
    );

    always #5 clk = ~clk;

    // Same asynchronous-read behavior as the external pingpongBuffer:
    // w_sel=1 writes bank 1 and reads bank 0, and vice versa.
    always_comb begin
        if (w_sel)
            rData = bank_0[rAddr];
        else
            rData = bank_1[rAddr];
    end

    always @(posedge clk) begin
        if (we) begin
            write_count = write_count + 1;

            if (w_sel)
                bank_1[wAddr] <= wData;
            else
                bank_0[wAddr] <= wData;
        end
    end

    task automatic pulse_start(
        input logic        source_value,
        input logic [15:0] width_value,
        input logic [15:0] height_value,
        input logic [15:0] channels_value
    );
        begin
            @(negedge clk);
            source_bank  = source_value;
            input_width  = width_value;
            input_height = height_value;
            channel_count = channels_value;
            start = 1'b1;

            @(negedge clk);
            start = 1'b0;
        end
    endtask

    task automatic check_value(
        input logic bank_select,
        input integer address,
        input logic signed [DATA_WIDTH-1:0] expected,
        input string test_name
    );
        logic signed [DATA_WIDTH-1:0] observed;
        begin
            if (bank_select)
                observed = bank_1[address];
            else
                observed = bank_0[address];

            if (observed !== expected) begin
                $error(
                    "%s: address %0d expected %0d, got %0d",
                    test_name, address, expected, observed
                );
                error_count = error_count + 1;
            end
        end
    endtask

    initial begin
        rst_n         = 1'b0;
        start         = 1'b0;
        source_bank   = 1'b0;
        input_width   = 16'd0;
        input_height  = 16'd0;
        channel_count = 16'd0;
        write_count   = 0;

        for (index = 0; index < DEPTH; index = index + 1) begin
            bank_0[index] = '0;
            bank_1[index] = '0;
        end

        // Channel 0, 4x4:
        //   -8   3 | -4  -2
        //    1  -5 |  7   6
        //   ------ + -------
        //   -9  -1 | -3  -7
        //   -6  -2 | -8  -4
        // Expected: 3, 7, -1, -3.
        bank_0[0]  = -8; bank_0[1]  =  3;
        bank_0[2]  = -4; bank_0[3]  = -2;
        bank_0[4]  =  1; bank_0[5]  = -5;
        bank_0[6]  =  7; bank_0[7]  =  6;
        bank_0[8]  = -9; bank_0[9]  = -1;
        bank_0[10] = -3; bank_0[11] = -7;
        bank_0[12] = -6; bank_0[13] = -2;
        bank_0[14] = -8; bank_0[15] = -4;

        // Channel 1, 4x4. Expected: 6, 8, 14, 16.
        for (index = 0; index < 16; index = index + 1)
            bank_0[16 + index] = index + 1;

        repeat (3) @(posedge clk);
        rst_n = 1'b1;

        // Pool4-style run: 2 channels, 4x4 -> 2 channels, 2x2.
        pulse_start(1'b0, 16'd4, 16'd4, 16'd2);
        wait (done === 1'b1);
        #1;

        if (write_count != 8) begin
            $error("first run expected 8 writes, got %0d", write_count);
            error_count = error_count + 1;
        end

        check_value(1'b1, 0,  8'sd3, "run1 CH0 output 0");
        check_value(1'b1, 1,  8'sd7, "run1 CH0 output 1");
        check_value(1'b1, 2, -8'sd1, "run1 CH0 output 2");
        check_value(1'b1, 3, -8'sd3, "run1 CH0 output 3");
        check_value(1'b1, 4,  8'sd6, "run1 CH1 output 0");
        check_value(1'b1, 5,  8'sd8, "run1 CH1 output 1");
        check_value(1'b1, 6,  8'sd14, "run1 CH1 output 2");
        check_value(1'b1, 7,  8'sd16, "run1 CH1 output 3");

        @(posedge clk);
        #1;

        if ((busy !== 1'b0) || (done !== 1'b0)) begin
            $error("engine did not return to IDLE after first done pulse");
            error_count = error_count + 1;
        end

        // Pool5-style reuse: read the previous 2x2 output from bank 1
        // and write one result per channel into bank 0.
        pulse_start(1'b1, 16'd2, 16'd2, 16'd2);
        wait (done === 1'b1);
        #1;

        if (write_count != 10) begin
            $error(
                "two runs expected 10 cumulative writes, got %0d",
                write_count
            );
            error_count = error_count + 1;
        end

        check_value(1'b0, 0, 8'sd7,  "run2 CH0 result");
        check_value(1'b0, 1, 8'sd16, "run2 CH1 result");

        if (error_count == 0)
            $display(
                "PASS: standalone signed MaxPool and bank reuse tests passed"
            );
        else
            $fatal(
                1,
                "FAIL: %0d Standalone_MaxPool test(s) failed",
                error_count
            );

        $finish;
    end

    initial begin
        #10000;
        $fatal(1, "FAIL: Standalone_MaxPool test timed out");
    end

endmodule
