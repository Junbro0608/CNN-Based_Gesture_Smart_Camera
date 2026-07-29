`timescale 1ns / 1ps

// Checks only the programmable CNN layer/group scheduler. conv_done is forced
// by the testbench so the test does not repeat the datapath verification that
// is already performed by tb_CNN.
module tb_CNN_Config;

    localparam integer NUM_CH = 8;

    logic clk = 1'b0;
    logic rst_n;
    logic start_one;
    logic done_one;
    logic busy_one;
    logic start_two;
    logic done_two;
    logic busy_two;

    logic [31:0] rAddr_one;
    logic        we_one;
    logic        w_sel_one;
    logic [31:0] wAddr_one;
    logic [7:0]  wData_one;
    logic        weight_ren_one;
    logic [31:0] weight_addr_one;

    logic [31:0] rAddr_two;
    logic        we_two;
    logic        w_sel_two;
    logic [31:0] wAddr_two;
    logic [7:0]  wData_two;
    logic        weight_ren_two;
    logic [31:0] weight_addr_two;

    logic signed [7:0] zero_weight [0:NUM_CH-1][0:8];
    logic signed [31:0] zero_bias  [0:NUM_CH-1];

    integer ch;
    integer kernel;
    integer group;
    integer error_count;

    CNN #(
        .NUM_CH                  (NUM_CH),
        .NUM_LAYERS              (1),
        .LAYER0_OUTPUT_CHANNELS  (8),
        .INPUT_WIDTH             (128),
        .INPUT_HEIGHT            (128),
        .LAYER0_MAXPOOL_EN       (1'b1),
        .LAYER0_RELU_EN          (1'b0)
    ) dut_one_layer (
        .clk        (clk),
        .rst_n      (rst_n),
        .start      (start_one),
        .done       (done_one),
        .busy       (busy_one),
        .rAddr      (rAddr_one),
        .rData      (8'd0),
        .we         (we_one),
        .w_sel      (w_sel_one),
        .wAddr      (wAddr_one),
        .wData      (wData_one),
        .weight_ren (weight_ren_one),
        .weight_addr(weight_addr_one),
        .weight_data(zero_weight),
        .bias_data  (zero_bias)
    );

    CNN #(
        .NUM_CH                  (NUM_CH),
        .NUM_LAYERS              (2),
        .LAYER0_OUTPUT_CHANNELS  (16),
        .LAYER1_OUTPUT_CHANNELS  (32),
        .INPUT_WIDTH             (64),
        .INPUT_HEIGHT            (64),
        .LAYER0_MAXPOOL_EN       (1'b1),
        .LAYER1_MAXPOOL_EN       (1'b1),
        .LAYER0_RELU_EN          (1'b0),
        .LAYER1_RELU_EN          (1'b0)
    ) dut_two_layers (
        .clk        (clk),
        .rst_n      (rst_n),
        .start      (start_two),
        .done       (done_two),
        .busy       (busy_two),
        .rAddr      (rAddr_two),
        .rData      (8'd0),
        .we         (we_two),
        .w_sel      (w_sel_two),
        .wAddr      (wAddr_two),
        .wData      (wData_two),
        .weight_ren (weight_ren_two),
        .weight_addr(weight_addr_two),
        .weight_data(zero_weight),
        .bias_data  (zero_bias)
    );

    always #5 clk = ~clk;

    task automatic pulse_one_layer_done;
        begin
            wait (dut_one_layer.cnn_state == 2'd2);
            force dut_one_layer.conv_done = 1'b1;
            @(posedge clk);
            #1;
            release dut_one_layer.conv_done;
        end
    endtask

    task automatic pulse_two_layer_done;
        begin
            wait (dut_two_layers.cnn_state == 2'd2);
            force dut_two_layers.conv_done = 1'b1;
            @(posedge clk);
            #1;
            release dut_two_layers.conv_done;
        end
    endtask

    initial begin
        rst_n       = 1'b0;
        start_one   = 1'b0;
        start_two   = 1'b0;
        error_count = 0;

        for (ch = 0; ch < NUM_CH; ch = ch + 1) begin
            zero_bias[ch] = 32'sd0;
            for (kernel = 0; kernel < 9; kernel = kernel + 1)
                zero_weight[ch][kernel] = 8'sd0;
        end

        repeat (3) @(posedge clk);
        rst_n = 1'b1;

        if ((dut_one_layer.LAYER1_PAD_WIDTH != 130)
            || (dut_one_layer.LAYER2_PAD_WIDTH != 66)
            || (dut_one_layer.LAYER3_PAD_WIDTH != 34)) begin
            $error("128 input did not produce padded sizes 130/66/34");
            error_count = error_count + 1;
        end

        if ((dut_two_layers.LAYER1_PAD_WIDTH != 66)
            || (dut_two_layers.LAYER2_PAD_WIDTH != 34)
            || (dut_two_layers.LAYER3_PAD_WIDTH != 18)) begin
            $error("64 input did not produce padded sizes 66/34/18");
            error_count = error_count + 1;
        end

        // NUM_LAYERS=1, 1 -> 8: exactly one physical output group.
        @(posedge clk);
        start_one = 1'b1;
        @(posedge clk);
        start_one = 1'b0;

        wait (dut_one_layer.cnn_state == 2'd2);
        if ((dut_one_layer.layer_index != 0)
            || (dut_one_layer.cfg_input_channels != 1)
            || (dut_one_layer.cfg_output_channels != 8)
            || (dut_one_layer.cfg_output_groups != 1)
            || (dut_one_layer.cfg_image_width != 130)
            || (dut_one_layer.cfg_image_height != 130)) begin
            $error("1->8 configuration mismatch");
            error_count = error_count + 1;
        end

        pulse_one_layer_done();
        if (!done_one || busy_one) begin
            $error("1->8 did not finish after its only group");
            error_count = error_count + 1;
        end

        // NUM_LAYERS=2, 1 -> 16 -> 32:
        // Layer 0 has two groups and Layer 1 has four groups.
        @(posedge clk);
        start_two = 1'b1;
        @(posedge clk);
        start_two = 1'b0;

        for (group = 0; group < 2; group = group + 1) begin
            wait (dut_two_layers.cnn_state == 2'd2);
            if ((dut_two_layers.layer_index != 0)
                || (dut_two_layers.output_group_index != group)
                || (dut_two_layers.cfg_input_channels != 1)
                || (dut_two_layers.cfg_output_channels != 16)
                || (dut_two_layers.cfg_output_groups != 2)
                || (dut_two_layers.cfg_image_width != 66)
                || (dut_two_layers.cfg_image_height != 66)) begin
                $error("1->16 Layer 0 group %0d mismatch", group);
                error_count = error_count + 1;
            end
            pulse_two_layer_done();
        end

        for (group = 0; group < 4; group = group + 1) begin
            wait (dut_two_layers.cnn_state == 2'd2);
            if ((dut_two_layers.layer_index != 1)
                || (dut_two_layers.output_group_index != group)
                || (dut_two_layers.cfg_input_channels != 16)
                || (dut_two_layers.cfg_output_channels != 32)
                || (dut_two_layers.cfg_output_groups != 4)
                || (dut_two_layers.cfg_image_width != 34)
                || (dut_two_layers.cfg_image_height != 34)) begin
                $error("16->32 Layer 1 group %0d mismatch", group);
                error_count = error_count + 1;
            end
            pulse_two_layer_done();
        end

        if (!done_two || busy_two) begin
            $error("1->16->32 did not finish after Layer 1");
            error_count = error_count + 1;
        end

        if (error_count == 0)
            $display("PASS: configurable 1->8 and 1->16->32 schedules");
        else
            $fatal(1, "FAIL: %0d configurable-schedule errors", error_count);

        $finish;
    end

    initial begin
        #10000;
        $fatal(1, "Timeout");
    end

endmodule
