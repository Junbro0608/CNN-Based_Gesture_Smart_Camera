`timescale 1ns / 1ps

// Full 1->32->64->128 three-layer CNN test with reproducible pseudo-random
// image/weight values and a completely independent behavioral golden model.
module tb_CNN;

    localparam integer NUM_CH           = 8;
    localparam integer BASE_CHANNELS    = 32;
    localparam integer L0_CHANNELS      = BASE_CHANNELS << 0;
    localparam integer L1_CHANNELS      = BASE_CHANNELS << 1;
    localparam integer L2_CHANNELS      = BASE_CHANNELS << 2;
    localparam integer IMAGE_WIDTH      = 32;
    localparam integer IMAGE_HEIGHT     = 32;
    localparam integer IMAGE_PIXELS     = IMAGE_WIDTH*IMAGE_HEIGHT;
    localparam integer IMAGE_ADDR_WIDTH = $clog2(IMAGE_PIXELS);
    localparam integer ADDR_WIDTH       = 32;

    localparam integer L0_WIDTH  = (IMAGE_WIDTH-2)/2;
    localparam integer L0_HEIGHT = (IMAGE_HEIGHT-2)/2;
    localparam integer L1_WIDTH  = (L0_WIDTH-2)/2;
    localparam integer L1_HEIGHT = (L0_HEIGHT-2)/2;
    localparam integer L2_WIDTH  = (L1_WIDTH-2)/2;
    localparam integer L2_HEIGHT = (L1_HEIGHT-2)/2;

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
        L2_PIXELS * (L2_CHANNELS/NUM_CH) * L1_CHANNELS;

    localparam logic [31:0] WEIGHT_BASE_L0 = 32'h1000_0000;
    localparam logic [31:0] WEIGHT_BASE_L1 = 32'h1100_0000;
    localparam logic [31:0] WEIGHT_BASE_L2 = 32'h1200_0000;

    logic clk = 1'b0;
    logic rst_n;
    logic start;
    logic done;
    logic busy;

    logic                        img_read_enable;
    logic [IMAGE_ADDR_WIDTH-1:0] img_read_addr;
    logic [7:0]                  img_data;
    logic                        img_data_valid;
    logic                        img_data_ready;

    logic        dram_start_req;
    logic [31:0] dram_addr;
    logic [22:0] dram_btt;

    logic [NUM_CH*8-1:0] weight_axis_tdata;
    logic                weight_axis_tvalid;
    logic                weight_axis_tready;
    logic                weight_axis_tlast;

    // Waveform guide: 0 reset/idle, 1 load, 2 layer0, 3 layer1,
    // 4 layer2, 5 done.
    logic [2:0] scenario_id;

    logic [7:0] golden_l0 [0:L0_DEPTH-1];
    logic [7:0] golden_l1 [0:L1_DEPTH-1];
    logic [7:0] golden_l2 [0:L2_DEPTH-1];

    logic [7:0] observed_l0 [0:7];
    logic [7:0] observed_l1 [0:7];
    logic [7:0] observed_l2 [0:7];

    integer error_count = 0;
    integer image_request_count = 0;
    integer image_response_count = 0;
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
        .BASE_OUTPUT_CHANNELS(BASE_CHANNELS),
        .IMAGE_WIDTH       (IMAGE_WIDTH),
        .IMAGE_HEIGHT      (IMAGE_HEIGHT),
        .DATA_ADDR_WIDTH   (ADDR_WIDTH),
        .WEIGHT_ADDR_WIDTH (ADDR_WIDTH),
        .WEIGHT_BASE_LAYER0(WEIGHT_BASE_L0),
        .WEIGHT_BASE_LAYER1(WEIGHT_BASE_L1),
        .WEIGHT_BASE_LAYER2(WEIGHT_BASE_L2)
    ) dut (
        .clk               (clk),
        .rst_n             (rst_n),
        .start             (start),
        .done              (done),
        .busy              (busy),
        .img_read_enable   (img_read_enable),
        .img_read_addr     (img_read_addr),
        .img_data          (img_data),
        .img_data_valid    (img_data_valid),
        .img_data_ready    (img_data_ready),
        .dram_start_req    (dram_start_req),
        .dram_addr         (dram_addr),
        .dram_btt          (dram_btt),
        .weight_axis_tdata (weight_axis_tdata),
        .weight_axis_tvalid(weight_axis_tvalid),
        .weight_axis_tready(weight_axis_tready),
        .weight_axis_tlast (weight_axis_tlast)
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
                    output_channel - (BASE_CHANNELS >> 1);
                1: bias_value =
                    output_channel - (BASE_CHANNELS << 0);
                default:
                    bias_value =
                        output_channel - (BASE_CHANNELS << 1);
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

            // Layer 2: 6x6x64 -> 2x2x128.
            for (gm_oc = 0;
                 gm_oc < L2_CHANNELS;
                 gm_oc = gm_oc + 1) begin
                for (gm_py = 0;
                     gm_py < L2_HEIGHT;
                     gm_py = gm_py + 1) begin
                    for (gm_px = 0;
                         gm_px < L2_WIDTH;
                         gm_px = gm_px + 1) begin
                        gm_max = -128;

                        for (gm_wy = 0; gm_wy < 2; gm_wy=gm_wy+1)
                        begin
                            for (gm_wx = 0;
                                 gm_wx < 2;
                                 gm_wx=gm_wx+1) begin
                                gm_sum = bias_value(2, gm_oc);

                                for (gm_ic = 0;
                                     gm_ic < L1_CHANNELS;
                                     gm_ic=gm_ic+1)
                                begin
                                    for (gm_ky = 0;
                                         gm_ky < 3;
                                         gm_ky=gm_ky+1) begin
                                        for (gm_kx = 0;
                                             gm_kx < 3;
                                             gm_kx=gm_kx+1) begin
                                            gm_in_y =
                                                gm_py*2 + gm_wy + gm_ky;
                                            gm_in_x =
                                                gm_px*2 + gm_wx + gm_kx;
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
                                if (gm_q > gm_max)
                                    gm_max = gm_q;
                            end
                        end

                        gm_out_addr =
                            gm_oc*L2_PIXELS + gm_py*L2_WIDTH + gm_px;
                        golden_l2[gm_out_addr] =
                            (gm_max < 0) ? 8'd0 : gm_max[7:0];
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
        else if (dut.cnn_state == 1)
            scenario_id = 3'd1;
        else if (busy)
            scenario_id = 3'd2 + dut.layer_index;
        else
            scenario_id = 3'd0;
    end

    // One-clock ping-pong buffer model.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            img_data       <= 8'd0;
            img_data_valid <= 1'b0;
        end else begin
            img_data_valid <= img_read_enable;

            if (img_read_enable)
                img_data <= image_value(img_read_addr);
        end
    end

    always @(posedge clk) begin
        if (rst_n && img_read_enable) begin
            if (img_read_addr
                !== image_request_count[IMAGE_ADDR_WIDTH-1:0]) begin
                $error("Image address: expected %0d, got %0d",
                       image_request_count, img_read_addr);
                error_count = error_count + 1;
            end
            image_request_count = image_request_count + 1;
        end

        if (rst_n && img_data_valid && img_data_ready)
            image_response_count = image_response_count + 1;
    end

    // Weight/bias stream generator using the same deterministic value
    // definitions as the independent golden model.
    initial begin
        weight_axis_tdata  = '0;
        weight_axis_tvalid = 1'b0;
        weight_axis_tlast  = 1'b0;

        forever begin
            @(posedge dram_start_req);
            packet_layer = dut.layer_index;
            packet_input_channel = dut.current_input_channel;
            weight_request_count[packet_layer] =
                weight_request_count[packet_layer] + 1;

            if (dram_btt !== 23'd80) begin
                $error("Expected BTT=80, got %0d", dram_btt);
                error_count = error_count + 1;
            end

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

            if (dram_addr !== expected_addr[31:0]) begin
                $error("Layer %0d weight address expected %h, got %h",
                       packet_layer, expected_addr[31:0], dram_addr);
                error_count = error_count + 1;
            end

            for (packet_word = 0;
                 packet_word < 10;
                 packet_word = packet_word + 1) begin
                wait (weight_axis_tready === 1'b1);
                @(negedge clk);
                weight_axis_tdata = '0;

                for (packet_channel = 0;
                     packet_channel < NUM_CH;
                     packet_channel = packet_channel+1) begin
                    packet_global_channel =
                        dut.output_group_index*NUM_CH + packet_channel;

                    if (packet_word < 9)
                        weight_axis_tdata[
                            packet_channel*8 +: 8
                        ] = weight_value(
                            packet_layer,
                            packet_global_channel,
                            packet_input_channel,
                            packet_word
                        );
                    else
                        weight_axis_tdata[
                            packet_channel*8 +: 8
                        ] = bias_value(
                            packet_layer,
                            packet_global_channel
                        );
                end

                weight_axis_tvalid = 1'b1;
                weight_axis_tlast  = (packet_word == 9);
                @(posedge clk);
                #1;
                @(negedge clk);
                weight_axis_tvalid = 1'b0;
                weight_axis_tlast  = 1'b0;
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
                dut.output_group_index*NUM_CH + dut.channel_select;

            case (dut.layer_index)
                0: begin
                    expected_addr =
                        global_channel*L0_PIXELS
                        + dut.current_pool_y*L0_WIDTH
                        + dut.current_pool_x;
                    expected_bank = 1;

                    if (expected_addr < 8)
                        observed_l0[expected_addr] = dut.data_write_data;

                    if (dut.data_write_data !== golden_l0[expected_addr]) begin
                        $error("L0 addr %0d: expected %0d, got %0d",
                               expected_addr, golden_l0[expected_addr],
                               dut.data_write_data);
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
                        observed_l1[expected_addr] = dut.data_write_data;

                    if (dut.data_write_data !== golden_l1[expected_addr]) begin
                        $error("L1 addr %0d: expected %0d, got %0d",
                               expected_addr, golden_l1[expected_addr],
                               dut.data_write_data);
                        error_count = error_count + 1;
                    end
                end

                default: begin
                    expected_addr =
                        global_channel*L2_PIXELS
                        + dut.current_pool_y*L2_WIDTH
                        + dut.current_pool_x;
                    expected_bank = 1;

                    if (expected_addr < 8)
                        observed_l2[expected_addr] = dut.data_write_data;

                    if (dut.data_write_data !== golden_l2[expected_addr]) begin
                        $error("L2 addr %0d: expected %0d, got %0d",
                               expected_addr, golden_l2[expected_addr],
                               dut.data_write_data);
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

            if (dut.controller_data_write_bank !== expected_bank[0]) begin
                $error("Layer %0d wrote wrong bank", dut.layer_index);
                error_count = error_count + 1;
            end
        end
    end

    initial begin
        rst_n = 1'b0;
        start = 1'b0;

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

        if (image_request_count != IMAGE_PIXELS
            || image_response_count != IMAGE_PIXELS) begin
            $error("Image transfer count mismatch");
            error_count = error_count + 1;
        end

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
            if (dut.U_DATA_BUFFER.bank_1[final_addr]
                !== golden_l2[final_addr]) begin
                $error("Final Bank1[%0d]: expected %0d, got %0d",
                       final_addr, golden_l2[final_addr],
                       dut.U_DATA_BUFFER.bank_1[final_addr]);
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
            $display("PASS: pseudo-random 1->32->64->128 golden comparison");
        else
            $fatal(1, "FAIL: %0d CNN errors", error_count);

        $finish;
    end

    initial begin
        #20_000_000;
        $fatal(1, "FAIL: pseudo-random CNN test timed out");
    end

endmodule
