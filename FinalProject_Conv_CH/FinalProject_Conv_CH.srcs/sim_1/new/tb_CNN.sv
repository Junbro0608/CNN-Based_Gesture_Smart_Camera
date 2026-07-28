`timescale 1ns / 1ps

// Full 1->32->64->128 three-layer CNN test. Layers 0/1 use MaxPool+ReLU;
// Layer 2 bypasses MaxPool and applies ReLU to every convolution result.
module tb_CNN;

    localparam integer NUM_CH           = 8;
    localparam integer L0_CHANNELS      = 32;
    localparam integer L1_CHANNELS      = 64;
    localparam integer L2_CHANNELS      = 128;
    localparam integer IMAGE_WIDTH      = 32;
    localparam integer IMAGE_HEIGHT     = 32;
    localparam integer IMAGE_PIXELS     = IMAGE_WIDTH*IMAGE_HEIGHT;
    localparam integer ADDR_WIDTH       = 32;
    localparam integer BUFFER_DATA_WIDTH = 8;

    localparam integer L0_WIDTH  = (IMAGE_WIDTH-2)/2;
    localparam integer L0_HEIGHT = (IMAGE_HEIGHT-2)/2;
    localparam integer L1_WIDTH  = (L0_WIDTH-2)/2;
    localparam integer L1_HEIGHT = (L0_HEIGHT-2)/2;
    // Layer 2 bypasses MaxPool, so its valid-convolution result remains 4x4.
    localparam integer L2_WIDTH  = L1_WIDTH-2;
    localparam integer L2_HEIGHT = L1_HEIGHT-2;
    localparam integer L2_TILE_WIDTH  = (L1_WIDTH-2)/2;
    localparam integer L2_TILE_HEIGHT = (L1_HEIGHT-2)/2;

    localparam integer L0_PIXELS = L0_WIDTH*L0_HEIGHT;
    localparam integer L1_PIXELS = L1_WIDTH*L1_HEIGHT;
    localparam integer L2_PIXELS = L2_WIDTH*L2_HEIGHT;
    localparam integer L0_DEPTH  = L0_PIXELS*L0_CHANNELS;
    localparam integer L1_DEPTH  = L1_PIXELS*L1_CHANNELS;
    localparam integer L2_DEPTH  = L2_PIXELS*L2_CHANNELS;

    localparam integer L0_WEIGHT_REQUESTS =
        L0_PIXELS * (L0_CHANNELS/NUM_CH) * 1;
    localparam integer L1_WEIGHT_REQUESTS =
        L1_PIXELS * (L1_CHANNELS/NUM_CH) * L0_CHANNELS;
    localparam integer L2_WEIGHT_REQUESTS =
        (L2_TILE_WIDTH*L2_TILE_HEIGHT)
        * (L2_CHANNELS/NUM_CH) * L1_CHANNELS;

    localparam logic [31:0] WEIGHT_BASE_L0 = 32'h1000_0000;
    localparam logic [31:0] WEIGHT_BASE_L1 = 32'h1100_0000;
    localparam logic [31:0] WEIGHT_BASE_L2 = 32'h1200_0000;

    logic clk = 1'b0;
    logic rst_n;
    logic start;
    logic done;
    logic busy;

    logic [ADDR_WIDTH-1:0]      rAddr;
    logic [BUFFER_DATA_WIDTH-1:0] rData;
    logic                       we;
    logic                       w_sel;
    logic [ADDR_WIDTH-1:0]      wAddr;
    logic [BUFFER_DATA_WIDTH-1:0] wData;

    logic                         weight_ren;
    logic [ADDR_WIDTH-1:0]        weight_addr;
    logic signed [7:0] weight_data [0:NUM_CH-1][0:8];
    logic signed [7:0] bias_data   [0:NUM_CH-1];

    // Waveform guide: 0 reset/idle, 2 layer0, 3 layer1,
    // 4 layer2, 5 done.
    logic [2:0] scenario_id;

    logic [7:0] golden_l0 [0:L0_DEPTH-1];
    logic [7:0] golden_l1 [0:L1_DEPTH-1];
    logic [7:0] golden_l2 [0:L2_DEPTH-1];

    logic [7:0] observed_l0 [0:7];
    logic [7:0] observed_l1 [0:7];
    logic [7:0] observed_l2 [0:7];

    integer error_count = 0;
    integer weight_request_count [0:2];
    integer group_start_count [0:2];
    integer result_write_count [0:2];

    integer packet_layer;
    integer packet_word;
    integer packet_channel;
    integer packet_global_channel;
    integer packet_input_channel;
    integer expected_addr;
    integer expected_bank;
    integer global_channel;
    integer final_addr;
    integer print_index;
    integer init_addr;
    integer init_ch;
    integer init_kernel;

    logic [BUFFER_DATA_WIDTH-1:0] external_bank_0 [0:L0_DEPTH-1];
    logic [BUFFER_DATA_WIDTH-1:0] external_bank_1 [0:L0_DEPTH-1];

    // Golden-model loop variables.
    integer gm_oc;
    integer gm_ic;
    integer gm_py;
    integer gm_px;
    integer gm_wy;
    integer gm_wx;
    integer gm_ky;
    integer gm_kx;
    integer gm_sum;
    integer gm_q;
    integer gm_max;
    integer gm_in_y;
    integer gm_in_x;
    integer gm_in_addr;
    integer gm_out_addr;

    CNN #(
        .NUM_CH            (NUM_CH),
        .NUM_LAYERS         (3),
        .LAYER0_OUTPUT_CHANNELS(L0_CHANNELS),
        .LAYER1_OUTPUT_CHANNELS(L1_CHANNELS),
        .LAYER2_OUTPUT_CHANNELS(L2_CHANNELS),
        .IMAGE_WIDTH       (IMAGE_WIDTH),
        .IMAGE_HEIGHT      (IMAGE_HEIGHT),
        .DATA_ADDR_WIDTH   (ADDR_WIDTH),
        .BUFFER_DATA_WIDTH (BUFFER_DATA_WIDTH),
        .WEIGHT_ADDR_WIDTH (ADDR_WIDTH),
        .LAYER2_MAXPOOL_EN (1'b0),
        .LAYER2_RELU_EN    (1'b1),
        .WEIGHT_BASE_LAYER0(WEIGHT_BASE_L0),
        .WEIGHT_BASE_LAYER1(WEIGHT_BASE_L1),
        .WEIGHT_BASE_LAYER2(WEIGHT_BASE_L2)
    ) dut (
        .clk               (clk),
        .rst_n             (rst_n),
        .start             (start),
        .done              (done),
        .busy              (busy),
        .rAddr             (rAddr),
        .rData             (rData),
        .we                (we),
        .w_sel             (w_sel),
        .wAddr             (wAddr),
        .wData             (wData),
        .weight_ren        (weight_ren),
        .weight_addr       (weight_addr),
        .weight_data       (weight_data),
        .bias_data         (bias_data)
    );

    always #5 clk = ~clk;

    // Reproducible random-looking input in the unsigned 8-bit range.
    // The first values are 19, 92, 165, 238, 55, ...
    function automatic integer image_value(input integer address);
        begin
            image_value = (address*73 + 19) % 256;
        end
    endfunction

    // Reproducible signed weights in the range -2 through +6. Negative
    // values are included, while the positive mean prevents later ReLU
    // layers from collapsing almost entirely to zero.
    function automatic integer weight_value(
        input integer layer_number,
        input integer output_channel,
        input integer input_channel,
        input integer kernel_index
    );
        integer code;
        begin
            code =
                layer_number*7
                + output_channel*5
                + input_channel*3
                + kernel_index*2
                + 1;
            weight_value = (code % 9) - 2;
        end
    endfunction

    // Every output channel has a distinct signed bias within each layer.
    function automatic integer bias_value(
        input integer layer_number,
        input integer output_channel
    );
        begin
            case (layer_number)
                0: bias_value =
                    output_channel - (L0_CHANNELS >> 1);
                1: bias_value =
                    output_channel - (L1_CHANNELS >> 1);
                default:
                    bias_value =
                        output_channel - (L2_CHANNELS >> 1);
            endcase
        end
    endfunction

    // Match CH exactly: arithmetic >>>8, truncate to signed 8 bits, then
    // return the signed integer used by MaxPool.
    function automatic integer quantize_signed8(input integer full_sum);
        integer shifted;
        integer byte_value;
        begin
            shifted = full_sum >>> 8;
            byte_value = shifted & 255;

            if (byte_value >= 128)
                quantize_signed8 = byte_value - 256;
            else
                quantize_signed8 = byte_value;
        end
    endfunction

    // Independent software-style model of all three layers.
    task automatic build_golden_results;
        begin
            // Layer 0: 32x32x1 -> 15x15x32.
            for (gm_oc = 0;
                 gm_oc < L0_CHANNELS;
                 gm_oc = gm_oc + 1) begin
                for (gm_py = 0;
                     gm_py < L0_HEIGHT;
                     gm_py = gm_py + 1) begin
                    for (gm_px = 0;
                         gm_px < L0_WIDTH;
                         gm_px = gm_px + 1) begin
                        gm_max = -128;

                        for (gm_wy = 0; gm_wy < 2; gm_wy = gm_wy+1)
                        begin
                            for (gm_wx = 0;
                                 gm_wx < 2;
                                 gm_wx = gm_wx+1) begin
                                gm_sum = bias_value(0, gm_oc);

                                for (gm_ky = 0;
                                     gm_ky < 3;
                                     gm_ky = gm_ky+1) begin
                                    for (gm_kx = 0;
                                         gm_kx < 3;
                                         gm_kx = gm_kx+1) begin
                                        gm_in_y = gm_py*2 + gm_wy + gm_ky;
                                        gm_in_x = gm_px*2 + gm_wx + gm_kx;
                                        gm_in_addr =
                                            gm_in_y*IMAGE_WIDTH + gm_in_x;
                                        gm_sum = gm_sum
                                            + image_value(gm_in_addr)
                                            * weight_value(
                                                0, gm_oc, 0,
                                                gm_ky*3 + gm_kx
                                            );
                                    end
                                end

                                gm_q = quantize_signed8(gm_sum);
                                if (gm_q > gm_max)
                                    gm_max = gm_q;
                            end
                        end

                        gm_out_addr =
                            gm_oc*L0_PIXELS + gm_py*L0_WIDTH + gm_px;
                        golden_l0[gm_out_addr] =
                            (gm_max < 0) ? 8'd0 : gm_max[7:0];
                    end
                end
            end

            // Layer 1: 15x15x32 -> 6x6x64.
            for (gm_oc = 0;
                 gm_oc < L1_CHANNELS;
                 gm_oc = gm_oc + 1) begin
                for (gm_py = 0;
                     gm_py < L1_HEIGHT;
                     gm_py = gm_py + 1) begin
                    for (gm_px = 0;
                         gm_px < L1_WIDTH;
                         gm_px = gm_px + 1) begin
                        gm_max = -128;

                        for (gm_wy = 0; gm_wy < 2; gm_wy = gm_wy+1)
                        begin
                            for (gm_wx = 0;
                                 gm_wx < 2;
                                 gm_wx = gm_wx+1) begin
                                gm_sum = bias_value(1, gm_oc);

                                for (gm_ic = 0;
                                     gm_ic < L0_CHANNELS;
                                     gm_ic=gm_ic+1)
                                begin
                                    for (gm_ky = 0;
                                         gm_ky < 3;
                                         gm_ky = gm_ky+1) begin
                                        for (gm_kx = 0;
                                             gm_kx < 3;
                                             gm_kx = gm_kx+1) begin
                                            gm_in_y =
                                                gm_py*2 + gm_wy + gm_ky;
                                            gm_in_x =
                                                gm_px*2 + gm_wx + gm_kx;
                                            gm_in_addr =
                                                gm_ic*L0_PIXELS
                                                + gm_in_y*L0_WIDTH
                                                + gm_in_x;
                                            gm_sum = gm_sum
                                                + golden_l0[gm_in_addr]
                                                * weight_value(
                                                    1, gm_oc, gm_ic,
                                                    gm_ky*3 + gm_kx
                                                );
                                        end
                                    end
                                end

                                gm_q = quantize_signed8(gm_sum);
                                if (gm_q > gm_max)
                                    gm_max = gm_q;
                            end
                        end

                        gm_out_addr =
                            gm_oc*L1_PIXELS + gm_py*L1_WIDTH + gm_px;
                        golden_l1[gm_out_addr] =
                            (gm_max < 0) ? 8'd0 : gm_max[7:0];
                    end
                end
            end

            // Layer 2: 6x6x64 -> 4x4x128.
            // MaxPool is bypassed; ReLU is applied to every convolution.
            for (gm_oc = 0;
                 gm_oc < L2_CHANNELS;
                 gm_oc = gm_oc + 1) begin
                for (gm_py = 0;
                     gm_py < L2_HEIGHT;
                     gm_py = gm_py + 1) begin
                    for (gm_px = 0;
                         gm_px < L2_WIDTH;
                         gm_px = gm_px + 1) begin
                        gm_sum = bias_value(2, gm_oc);

                        for (gm_ic = 0;
                             gm_ic < L1_CHANNELS;
                             gm_ic=gm_ic+1) begin
                            for (gm_ky = 0;
                                 gm_ky < 3;
                                 gm_ky=gm_ky+1) begin
                                for (gm_kx = 0;
                                     gm_kx < 3;
                                     gm_kx=gm_kx+1) begin
                                    gm_in_y = gm_py + gm_ky;
                                    gm_in_x = gm_px + gm_kx;
                                    gm_in_addr =
                                        gm_ic*L1_PIXELS
                                        + gm_in_y*L1_WIDTH
                                        + gm_in_x;
                                    gm_sum = gm_sum
                                        + golden_l1[gm_in_addr]
                                        * weight_value(
                                            2, gm_oc, gm_ic,
                                            gm_ky*3 + gm_kx
                                        );
                                end
                            end
                        end

                        gm_q = quantize_signed8(gm_sum);
                        gm_out_addr =
                            gm_oc*L2_PIXELS + gm_py*L2_WIDTH + gm_px;
                        golden_l2[gm_out_addr] =
                            (gm_q < 0) ? 8'd0 : gm_q[7:0];
                    end
                end
            end
        end
    endtask

    always_comb begin
        if (!rst_n)
            scenario_id = 3'd0;
        else if (done)
            scenario_id = 3'd5;
        else if (busy)
            scenario_id = 3'd2 + dut.layer_index;
        else
            scenario_id = 3'd0;
    end

    // Exact behavior of the existing pingpongBuffer:
    //   w_sel=0 writes Bank A and reads Bank B.
    //   w_sel=1 writes Bank B and reads Bank A.
    // The input image is already present in Bank A before CNN start.
    always @(posedge clk) begin
        if (w_sel)
            rData <= external_bank_0[rAddr];
        else
            rData <= external_bank_1[rAddr];

        if (we) begin
            if (w_sel)
                external_bank_1[wAddr] <= wData;
            else
                external_bank_0[wAddr] <= wData;
        end
    end

    // External synchronous Weight Buffer model. A request address is
    // accepted with weight_ren and the complete kernel/bias response is
    // registered for the CNN to capture on the following clock.
    always @(posedge clk) begin
        if (weight_ren) begin
            packet_layer = dut.layer_index;
            packet_input_channel = dut.current_input_channel;
            weight_request_count[packet_layer] =
                weight_request_count[packet_layer] + 1;

            if (packet_layer == 0)
                expected_addr =
                    WEIGHT_BASE_L0
                    + dut.output_group_index*(1*80)
                    + packet_input_channel*80;
            else if (packet_layer == 1)
                expected_addr =
                    WEIGHT_BASE_L1
                    + dut.output_group_index*(L0_CHANNELS*80)
                    + packet_input_channel*80;
            else
                expected_addr =
                    WEIGHT_BASE_L2
                    + dut.output_group_index*(L1_CHANNELS*80)
                    + packet_input_channel*80;

            if (weight_addr !== expected_addr[31:0]) begin
                $error("Layer %0d weight address expected %h, got %h",
                       packet_layer, expected_addr[31:0], weight_addr);
                error_count = error_count + 1;
            end

            for (packet_channel = 0;
                 packet_channel < NUM_CH;
                 packet_channel=packet_channel+1) begin
                packet_global_channel =
                    dut.output_group_index*NUM_CH + packet_channel;

                for (packet_word = 0;
                     packet_word < 9;
                     packet_word=packet_word+1) begin
                    weight_data[packet_channel][packet_word]
                        <= weight_value(
                            packet_layer,
                            packet_global_channel,
                            packet_input_channel,
                            packet_word
                        );
                end

                bias_data[packet_channel]
                    <= bias_value(packet_layer, packet_global_channel);
            end
        end
    end

    // Compare every RTL write against the independent golden arrays.
    always @(posedge clk) begin
        if (rst_n && dut.conv_start)
            group_start_count[dut.layer_index] =
                group_start_count[dut.layer_index] + 1;

        if (rst_n && dut.controller_data_write_enable) begin
            result_write_count[dut.layer_index] =
                result_write_count[dut.layer_index] + 1;
            global_channel =
                dut.output_group_index*NUM_CH
                + dut.result_output_channel;

            case (dut.layer_index)
                0: begin
                    expected_addr =
                        global_channel*L0_PIXELS
                        + dut.current_pool_y*L0_WIDTH
                        + dut.current_pool_x;
                    expected_bank = 1;

                    if (expected_addr < 8)
                        observed_l0[expected_addr] = wData[7:0];

                    if (wData[7:0] !== golden_l0[expected_addr]) begin
                        $error("L0 addr %0d: expected %0d, got %0d",
                               expected_addr, golden_l0[expected_addr],
                               wData[7:0]);
                        error_count = error_count + 1;
                    end
                end

                1: begin
                    expected_addr =
                        global_channel*L1_PIXELS
                        + dut.current_pool_y*L1_WIDTH
                        + dut.current_pool_x;
                    expected_bank = 0;

                    if (expected_addr < 8)
                        observed_l1[expected_addr] = wData[7:0];

                    if (wData[7:0] !== golden_l1[expected_addr]) begin
                        $error("L1 addr %0d: expected %0d, got %0d",
                               expected_addr, golden_l1[expected_addr],
                               wData[7:0]);
                        error_count = error_count + 1;
                    end
                end

                default: begin
                    expected_addr =
                        global_channel*L2_PIXELS
                        + (dut.current_pool_y*2
                           + dut.result_output_position[1])*L2_WIDTH
                        + dut.current_pool_x*2
                        + dut.result_output_position[0];
                    expected_bank = 1;

                    if (expected_addr < 8)
                        observed_l2[expected_addr] = wData[7:0];

                    if (wData[7:0] !== golden_l2[expected_addr]) begin
                        $error("L2 addr %0d: expected %0d, got %0d",
                               expected_addr, golden_l2[expected_addr],
                               wData[7:0]);
                        error_count = error_count + 1;
                    end
                end
            endcase

            if (dut.controller_data_write_addr
                !== expected_addr[ADDR_WIDTH-1:0]) begin
                $error("Output address expected %0d, got %0d",
                       expected_addr, dut.controller_data_write_addr);
                error_count = error_count + 1;
            end

            if (w_sel !== expected_bank[0]) begin
                $error("Layer %0d wrote wrong bank", dut.layer_index);
                error_count = error_count + 1;
            end
        end
    end

    initial begin
        rst_n = 1'b0;
        start = 1'b0;
        rData = '0;

        for (init_addr = 0; init_addr < L0_DEPTH;
             init_addr=init_addr+1) begin
            external_bank_0[init_addr] = 8'd0;
            external_bank_1[init_addr] = 8'd0;
        end

        for (init_addr = 0; init_addr < IMAGE_PIXELS;
             init_addr=init_addr+1)
            external_bank_0[init_addr] = image_value(init_addr);

        for (init_ch = 0; init_ch < NUM_CH; init_ch=init_ch+1) begin
            bias_data[init_ch] = 8'sd0;
            for (init_kernel = 0; init_kernel < 9;
                 init_kernel=init_kernel+1)
                weight_data[init_ch][init_kernel] = 8'sd0;
        end

        for (print_index = 0; print_index < 3; print_index=print_index+1)
        begin
            weight_request_count[print_index] = 0;
            group_start_count[print_index] = 0;
            result_write_count[print_index] = 0;
        end

        build_golden_results();

        $display("=== Reproducible pseudo-random CNN test values ===");
        $write("Input image addr 0..15 : ");
        for (print_index = 0; print_index < 16; print_index=print_index+1)
            $write("%0d ", image_value(print_index));
        $display("");

        $write("L0 OC0 weights K0..K8: ");
        for (print_index = 0; print_index < 9; print_index=print_index+1)
            $write("%0d ", weight_value(0, 0, 0, print_index));
        $display("");
        $display("Bias examples: L0 OC0=%0d OC1=%0d OC31=%0d",
                 bias_value(0,0), bias_value(0,1), bias_value(0,31));
        $display("Bias examples: L1 OC0=%0d OC63=%0d",
                 bias_value(1,0), bias_value(1,63));
        $display("Bias examples: L2 OC0=%0d OC127=%0d",
                 bias_value(2,0), bias_value(2,127));

        $write("Golden L0 addr 0..7: ");
        for (print_index = 0; print_index < 8; print_index=print_index+1)
            $write("%0d ", golden_l0[print_index]);
        $display("");
        $write("Golden L1 addr 0..7: ");
        for (print_index = 0; print_index < 8; print_index=print_index+1)
            $write("%0d ", golden_l1[print_index]);
        $display("");
        $write("Golden L2 addr 0..7: ");
        for (print_index = 0; print_index < 8; print_index=print_index+1)
            $write("%0d ", golden_l2[print_index]);
        $display("");

        repeat (3) @(posedge clk);
        #1;
        rst_n = 1'b1;

        @(negedge clk);
        start = 1'b1;
        @(posedge clk);
        #1;

        if (busy !== 1'b1) begin
            $error("CNN did not assert busy");
            error_count = error_count + 1;
        end

        @(negedge clk);
        start = 1'b0;

        wait (done === 1'b1);
        #1;

        if ((group_start_count[0] != L0_CHANNELS/NUM_CH)
            || (group_start_count[1] != L1_CHANNELS/NUM_CH)
            || (group_start_count[2] != L2_CHANNELS/NUM_CH)) begin
            $error("Group counts incorrect: %0d/%0d/%0d",
                   group_start_count[0],
                   group_start_count[1],
                   group_start_count[2]);
            error_count = error_count + 1;
        end

        if ((weight_request_count[0] != L0_WEIGHT_REQUESTS)
            || (weight_request_count[1] != L1_WEIGHT_REQUESTS)
            || (weight_request_count[2] != L2_WEIGHT_REQUESTS)) begin
            $error("Weight request counts incorrect");
            error_count = error_count + 1;
        end

        if ((result_write_count[0] != L0_DEPTH)
            || (result_write_count[1] != L1_DEPTH)
            || (result_write_count[2] != L2_DEPTH)) begin
            $error("Result write counts incorrect: %0d/%0d/%0d",
                   result_write_count[0],
                   result_write_count[1],
                   result_write_count[2]);
            error_count = error_count + 1;
        end

        for (final_addr = 0; final_addr < L2_DEPTH;
             final_addr = final_addr+1) begin
            if (external_bank_1[final_addr] !== golden_l2[final_addr]) begin
                $error("Final Bank1[%0d]: expected %0d, got %0d",
                       final_addr, golden_l2[final_addr],
                       external_bank_1[final_addr]);
                error_count = error_count + 1;
            end
        end

        $write("Observed L0 addr 0..7: ");
        for (print_index = 0; print_index < 8; print_index=print_index+1)
            $write("%0d ", observed_l0[print_index]);
        $display("");
        $write("Observed L1 addr 0..7: ");
        for (print_index = 0; print_index < 8; print_index=print_index+1)
            $write("%0d ", observed_l1[print_index]);
        $display("");
        $write("Observed L2 addr 0..7: ");
        for (print_index = 0; print_index < 8; print_index=print_index+1)
            $write("%0d ", observed_l2[print_index]);
        $display("");

        @(posedge clk);
        #1;

        if ((busy !== 1'b0) || (done !== 1'b0)) begin
            $error("CNN did not return to idle");
            error_count = error_count + 1;
        end

        if (error_count == 0)
            $display(
                "PASS: 1->32->64->128 with L2 MaxPool bypass golden comparison"
            );
        else
            $fatal(1, "FAIL: %0d CNN errors", error_count);

        $finish;
    end

    initial begin
        #20_000_000;
        $fatal(1, "FAIL: pseudo-random CNN test timed out");
    end

endmodule
