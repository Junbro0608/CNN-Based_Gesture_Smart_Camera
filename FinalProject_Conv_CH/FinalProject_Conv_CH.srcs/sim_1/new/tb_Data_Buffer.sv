`timescale 1ns / 1ps

module tb_Data_Buffer;

    localparam integer DATA_WIDTH = 12;
    localparam integer DEPTH      = 16;
    localparam integer ADDR_WIDTH = $clog2(DEPTH);

    logic clk = 1'b0;
    logic rst_n;

    logic                  write_enable;
    logic                  write_ready;
    logic                  write_bank;
    logic [ADDR_WIDTH-1:0] write_addr;
    logic [DATA_WIDTH-1:0] write_data;

    logic                  read_enable;
    logic                  read_ready;
    logic                  read_bank;
    logic [ADDR_WIDTH-1:0] read_addr;
    logic [DATA_WIDTH-1:0] read_data;
    logic                  read_valid;
    logic                  read_data_ready;

    integer error_count = 0;
    integer index;

    Data_Buffer #(
        .DATA_WIDTH(DATA_WIDTH),
        .DEPTH     (DEPTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) dut (
        .clk         (clk),
        .rst_n       (rst_n),
        .write_enable(write_enable),
        .write_ready (write_ready),
        .write_bank  (write_bank),
        .write_addr  (write_addr),
        .write_data  (write_data),
        .read_enable (read_enable),
        .read_ready  (read_ready),
        .read_bank   (read_bank),
        .read_addr   (read_addr),
        .read_data   (read_data),
        .read_valid  (read_valid),
        .read_data_ready(read_data_ready)
    );

    always #5 clk = ~clk;

    task automatic write_word(
        input logic                  bank_value,
        input logic [ADDR_WIDTH-1:0] addr_value,
        input logic [DATA_WIDTH-1:0] data_value
    );
        begin
            @(negedge clk);
            write_bank   = bank_value;
            write_addr   = addr_value;
            write_data   = data_value;
            write_enable = 1'b1;

            @(posedge clk);
            #1;

            @(negedge clk);
            write_enable = 1'b0;
        end
    endtask

    task automatic read_and_expect(
        input logic                  bank_value,
        input logic [ADDR_WIDTH-1:0] addr_value,
        input logic [DATA_WIDTH-1:0] expected_data,
        input string                 test_name
    );
        begin
            @(negedge clk);
            read_bank   = bank_value;
            read_addr   = addr_value;
            read_enable = 1'b1;

            // The synchronous RAM accepts the address at this rising edge.
            // read_data and read_valid are checked after the NBA update.
            @(posedge clk);
            #1;

            if (read_valid !== 1'b1) begin
                $error("%s: read_valid was not asserted", test_name);
                error_count = error_count + 1;
            end

            if (read_data !== expected_data) begin
                $error("%s: expected data %h, got %h",
                       test_name, expected_data, read_data);
                error_count = error_count + 1;
            end

            @(negedge clk);
            read_enable = 1'b0;

            @(posedge clk);
            #1;

            if (read_valid !== 1'b0) begin
                $error("%s: read_valid did not return low", test_name);
                error_count = error_count + 1;
            end
        end
    endtask

    task automatic expect_read_result(
        input logic [DATA_WIDTH-1:0] expected_data,
        input string                 test_name
    );
        begin
            @(posedge clk);
            #1;

            if (read_valid !== 1'b1) begin
                $error("%s: read_valid was not asserted", test_name);
                error_count = error_count + 1;
            end

            if (read_data !== expected_data) begin
                $error("%s: expected data %h, got %h",
                       test_name, expected_data, read_data);
                error_count = error_count + 1;
            end
        end
    endtask

    initial begin
        rst_n        = 1'b0;
        read_data_ready = 1'b1;
        write_enable = 1'b0;
        write_bank   = 1'b0;
        write_addr   = '0;
        write_data   = '0;
        read_enable  = 1'b0;
        read_bank    = 1'b0;
        read_addr    = '0;

        repeat (3) @(posedge clk);
        #1;

        if (read_valid !== 1'b0) begin
            $error("Reset: read_valid must be low");
            error_count = error_count + 1;
        end

        rst_n = 1'b1;

        // Scenario 1:
        // Model loading eight camera pixels from the external ping-pong
        // buffer into Data Buffer bank 0.
        for (index = 0; index < 8; index = index + 1)
            write_word(
                1'b0,
                index[ADDR_WIDTH-1:0],
                12'h100 + index
            );

        // Scenario 2:
        // Model convolution results written to bank 1. The same addresses
        // intentionally contain different values to verify bank isolation.
        for (index = 0; index < 8; index = index + 1)
            write_word(
                1'b1,
                index[ADDR_WIDTH-1:0],
                12'hA00 + index
            );

        read_and_expect(1'b0, 4'd0, 12'h100, "bank 0 address 0");
        read_and_expect(1'b0, 4'd7, 12'h107, "bank 0 address 7");
        read_and_expect(1'b1, 4'd0, 12'hA00, "bank 1 address 0");
        read_and_expect(1'b1, 4'd7, 12'hA07, "bank 1 address 7");

        // Scenario 3:
        // Continuous read requests model the Conv Controller feeding one
        // pixel per clock to the Shift Buffer.
        @(negedge clk);
        read_enable = 1'b1;
        read_bank   = 1'b0;
        read_addr   = 4'd2;

        expect_read_result(12'h102, "continuous read address 2");

        @(negedge clk);
        read_addr = 4'd3;

        expect_read_result(12'h103, "continuous read address 3");

        @(negedge clk);
        read_addr = 4'd4;

        expect_read_result(12'h104, "continuous read address 4");

        @(negedge clk);
        read_enable = 1'b0;

        @(posedge clk);
        #1;
        if (read_valid !== 1'b0) begin
            $error("Continuous read: read_valid did not return low");
            error_count = error_count + 1;
        end

        // Scenario 4:
        // Read the source bank while writing the destination bank on the same
        // clock, which is the normal convolution-layer operating mode.
        @(negedge clk);
        read_enable  = 1'b1;
        read_bank    = 1'b0;
        read_addr    = 4'd5;
        write_enable = 1'b1;
        write_bank   = 1'b1;
        write_addr   = 4'd5;
        write_data   = 12'hB55;

        @(posedge clk);
        #1;

        if ((read_valid !== 1'b1) || (read_data !== 12'h105)) begin
            $error("Simultaneous access: source-bank read failed");
            error_count = error_count + 1;
        end

        @(negedge clk);
        read_enable  = 1'b0;
        write_enable = 1'b0;

        read_and_expect(
            1'b1,
            4'd5,
            12'hB55,
            "simultaneous destination-bank write"
        );

        // Scenario 5:
        // Swap banks for the next layer: the previous destination bank now
        // becomes the source bank.
        read_and_expect(
            1'b1,
            4'd4,
            12'hA04,
            "next layer bank swap"
        );

        // Scenario 6: hold one read response under backpressure.
        @(negedge clk);
        read_data_ready = 1'b0;
        read_enable     = 1'b1;
        read_bank       = 1'b0;
        read_addr       = 4'd3;

        @(posedge clk);
        #1;

        @(negedge clk);
        read_enable = 1'b0;

        repeat (2) begin
            @(posedge clk);
            #1;

            if ((read_valid !== 1'b1)
                || (read_ready !== 1'b0)
                || (read_data !== 12'h103)) begin
                $error("Read response changed during backpressure");
                error_count = error_count + 1;
            end
        end

        @(negedge clk);
        read_data_ready = 1'b1;

        @(posedge clk);
        #1;

        if (read_valid !== 1'b0) begin
            $error("Read response did not clear after handshake");
            error_count = error_count + 1;
        end

        // Scenario 7:
        // Reset clears protocol validity but intentionally does not erase BRAM.
        @(negedge clk);
        rst_n = 1'b0;
        #1;

        if (read_valid !== 1'b0) begin
            $error("Second reset: read_valid must clear asynchronously");
            error_count = error_count + 1;
        end

        @(negedge clk);
        rst_n = 1'b1;

        read_and_expect(
            1'b0,
            4'd1,
            12'h101,
            "memory retained across reset"
        );

        if (error_count == 0)
            $display("PASS: all Data_Buffer tests passed");
        else
            $fatal(1,
                   "FAIL: %0d Data_Buffer test(s) failed",
                   error_count);

        $finish;
    end

    initial begin
        #5000;
        $fatal(1, "FAIL: Data_Buffer test timed out");
    end

endmodule
