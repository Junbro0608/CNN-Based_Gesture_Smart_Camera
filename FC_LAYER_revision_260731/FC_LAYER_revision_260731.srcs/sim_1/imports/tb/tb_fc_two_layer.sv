`timescale 1ns / 1ps

module tb_fc_two_layer;

    localparam integer FC1_INPUT_COUNT   = 1024;
    localparam integer FC1_OUTPUT_COUNT  = 64;
    localparam integer FC1_GROUP_COUNT   = FC1_OUTPUT_COUNT / 8;
    localparam integer FC1_GROUP_STRIDE  = FC1_INPUT_COUNT + 4;
    localparam integer FC1_WT_WORD_COUNT =
        FC1_GROUP_COUNT * FC1_GROUP_STRIDE;

    localparam integer FC2_INPUT_COUNT   = 64;
    localparam integer FC2_OUTPUT_COUNT  = 1;
    localparam integer FC2_WT_WORD_COUNT = FC2_INPUT_COUNT + 4;

    localparam integer TB_WT_BANK_COUNT   = 3;
    localparam integer TB_WT_DEPTH        = FC1_WT_WORD_COUNT;
    localparam integer TB_DATA_BANK_COUNT = 2;
    localparam integer TB_DATA_DEPTH      = 1024;
    localparam integer TIMEOUT_CYCLES     = 20000;

    localparam integer OP_NONE    = 0;
    localparam integer OP_FC1     = 1;
    localparam integer OP_FC2_POS = 2;
    localparam integer OP_FC2_NEG = 3;

    localparam logic [9:0] FC1_INPUT_LENGTH  = 10'd1023;
    localparam logic [9:0] FC1_OUTPUT_LENGTH = 10'd63;
    localparam logic [9:0] FC2_INPUT_LENGTH  = 10'd63;
    localparam logic [9:0] FC2_OUTPUT_LENGTH = 10'd0;

    localparam logic signed [31:0] FC2_POS_TARGET = 32'sd37;
    localparam logic signed [31:0] FC2_NEG_TARGET = -32'sd37;

    logic clk;
    logic rst_n;
    logic start;
    logic [9:0] input_length;
    logic [9:0] output_length;
    logic finish_en;
    logic Done;
    logic result;

    logic [1:0] weight_read_bank_select;
    logic       data_read_bank_select;
    logic       data_write_bank_select;

    logic [$clog2(TB_WT_DEPTH)-1:0] wt_raddr;
    logic [63:0] wt_rdata;

    logic DATA_we;
    logic [$clog2(TB_DATA_DEPTH)-1:0] DATA_waddr;
    logic [7:0] DATA_wdata;
    logic [$clog2(TB_DATA_DEPTH)-1:0] DATA_raddr;
    logic [7:0] DATA_rdata;

    // -----------------------------------------------------------------
    // Simulation-only virtual buffer memories
    //
    // Weight bank 0 : FC1 Weight/Bias
    // Weight bank 1 : FC2 positive-result Weight/Bias
    // Weight bank 2 : FC2 negative-result Weight/Bias
    // Data bank 0   : FC1 input
    // Data bank 1   : FC1 output and FC2 input
    //
    // DUT read ports are asynchronous combinational reads.  Data writes
    // are committed only on a rising clock edge.
    // -----------------------------------------------------------------
    logic [63:0] weight_memory
        [0:TB_WT_BANK_COUNT-1][0:TB_WT_DEPTH-1];
    logic [7:0] data_memory
        [0:TB_DATA_BANK_COUNT-1][0:TB_DATA_DEPTH-1];

    logic signed [31:0] fc1_mac_sum [0:FC1_OUTPUT_COUNT-1];
    logic signed [31:0] fc1_bias [0:FC1_OUTPUT_COUNT-1];
    logic [7:0] expected_fc1_output [0:FC1_OUTPUT_COUNT-1];
    logic signed [31:0] fc2_bias [0:1];

    integer current_operation;
    integer cycle_count;
    integer clear_count;
    integer mac_count;
    integer capture_count;
    integer bias_add_count;
    integer quant_count;
    integer write_count;
    integer result_capture_count;
    integer done_count;
    integer last_write_cycle;
    integer result_capture_cycle;

    integer accepted_start_count;
    integer ignored_start_count;
    integer start_high_cycle_count;
    integer standalone_finish_glitch_count;

    logic start_previous_cycle;
    logic finish_glitch_active;
    logic fc2_positive_restart_seen;
    logic fc2_negative_restart_seen;
    logic fc2_positive_first_mac_seen;
    logic fc2_negative_first_mac_seen;

    fc #(
        .WT_ADDR_WIDTH   (TB_WT_DEPTH),
        .WT_DATA_WIDTH   (64),
        .DATA_ADDR_WIDTH (TB_DATA_DEPTH),
        .DATA_DATA_WIDTH (8)
    ) dut (
        .clk           (clk),
        .rst_n         (rst_n),
        .start         (start),
        .input_length  (input_length),
        .output_length (output_length),
        .finish_en     (finish_en),
        .Done          (Done),
        .wt_raddr      (wt_raddr),
        .wt_rdata      (wt_rdata),
        .DATA_we       (DATA_we),
        .DATA_waddr    (DATA_waddr),
        .DATA_wdata    (DATA_wdata),
        .DATA_raddr    (DATA_raddr),
        .DATA_rdata    (DATA_rdata),
        .result        (result)
    );

    // Weight/Bias buffer: same-cycle asynchronous read.
    always_comb begin
        wt_rdata = 64'hxxxxxxxxxxxxxxxx;

        if ((weight_read_bank_select < TB_WT_BANK_COUNT) &&
            (^wt_raddr !== 1'bx) &&
            (wt_raddr < TB_WT_DEPTH)) begin
            wt_rdata =
                weight_memory[weight_read_bank_select][wt_raddr];
        end
    end

    // Data buffer: same-cycle asynchronous read.
    always_comb begin
        DATA_rdata = 8'hxx;

        if (((data_read_bank_select === 1'b0) ||
             (data_read_bank_select === 1'b1)) &&
            (^DATA_raddr !== 1'bx) &&
            (DATA_raddr < TB_DATA_DEPTH)) begin
            DATA_rdata =
                data_memory[data_read_bank_select][DATA_raddr];
        end
    end

    // Data buffer: rising-edge synchronous write.
    always @(posedge clk) begin
        if (DATA_we) begin
            if (((data_write_bank_select !== 1'b0) &&
                 (data_write_bank_select !== 1'b1)) ||
                (^DATA_waddr === 1'bx) ||
                (DATA_waddr >= TB_DATA_DEPTH)) begin
                $fatal(
                    1,
                    "Data write range error: bank=%b addr=%0d",
                    data_write_bank_select,
                    DATA_waddr
                );
            end
            else begin
                data_memory[data_write_bank_select][DATA_waddr] <=
                    DATA_wdata;
            end
        end
    end

    always #5 clk = ~clk;

    function automatic integer signed_byte_to_integer;
        input logic [7:0] raw_byte;
        begin
            if (raw_byte[7]) begin
                signed_byte_to_integer = raw_byte - 256;
            end
            else begin
                signed_byte_to_integer = raw_byte;
            end
        end
    endfunction

    function automatic integer weight_bank_salt;
        input integer bank_index;
        begin
            case (bank_index)
                0: weight_bank_salt = 19;
                1: weight_bank_salt = 83;
                2: weight_bank_salt = 149;
                default: weight_bank_salt = 1;
            endcase
        end
    endfunction

    // address의 low byte와 high bits를 각각 base/odd step에 반영한다.
    // 사용 주소 범위에서 모든 word가 다르고, odd step 덕분에 한 word의
    // 8개 Weight byte도 서로 다르다.
    function automatic [63:0] make_weight_word;
        input integer address;
        input integer salt;
        integer lane_index;
        integer base_value;
        integer step_value;
        integer byte_value;
        logic [63:0] generated_word;
        begin
            base_value = ((((address & 255) * 37) + salt) & 255);
            step_value = (((((address >> 8) & 127) * 2) + 1) & 255);
            generated_word = 64'd0;

            for (lane_index = 0;
                 lane_index < 8;
                 lane_index = lane_index + 1) begin
                byte_value =
                    (base_value + (lane_index * step_value)) & 255;
                generated_word[(lane_index * 8) +: 8] =
                    byte_value[7:0];
            end

            make_weight_word = generated_word;
        end
    endfunction

    // 8-bit Data는 1024개를 모두 전역적으로 unique하게 만들 수 없으므로
    // 0~255 raw pattern의 permutation을 네 번 순환시킨다. 인접 주소의
    // 값은 모두 다르고 signed 양수/음수가 모두 포함된다.
    function automatic [7:0] make_input_byte;
        input integer address;
        integer byte_value;
        begin
            byte_value = ((address * 73) + 19) & 255;
            make_input_byte = byte_value[7:0];
        end
    endfunction

    function automatic [63:0] pack_bias_pair;
        input logic signed [31:0] lower_lane_bias;
        input logic signed [31:0] higher_lane_bias;
        begin
            pack_bias_pair = {
                higher_lane_bias,
                lower_lane_bias
            };
        end
    endfunction

    function automatic integer expected_final_accumulator;
        input integer operation_number;
        begin
            case (operation_number)
                OP_FC2_POS:
                    expected_final_accumulator = FC2_POS_TARGET;
                OP_FC2_NEG:
                    expected_final_accumulator = FC2_NEG_TARGET;
                default:
                    expected_final_accumulator = 0;
            endcase
        end
    endfunction

    function automatic logic expected_final_result;
        input integer operation_number;
        begin
            expected_final_result =
                (operation_number == OP_FC2_POS);
        end
    endfunction

    task automatic clear_operation_counters;
        begin
            clear_count          = 0;
            mac_count            = 0;
            capture_count        = 0;
            bias_add_count       = 0;
            quant_count          = 0;
            write_count          = 0;
            result_capture_count = 0;
            done_count           = 0;
            last_write_cycle     = -1;
            result_capture_cycle = -1;
        end
    endtask

    task automatic check_weight_word_bytes;
        input integer bank_index;
        input integer address;
        integer first_lane;
        integer second_lane;
        begin
            if (weight_memory[bank_index][address] === 64'd0) begin
                $fatal(
                    1,
                    "All-zero Weight word: bank=%0d addr=%0d",
                    bank_index,
                    address
                );
            end

            for (first_lane = 0;
                 first_lane < 8;
                 first_lane = first_lane + 1) begin
                for (second_lane = first_lane + 1;
                     second_lane < 8;
                     second_lane = second_lane + 1) begin
                    if (weight_memory[bank_index][address]
                            [(first_lane * 8) +: 8] ===
                        weight_memory[bank_index][address]
                            [(second_lane * 8) +: 8]) begin
                        $fatal(
                            1,
                            "Duplicate Weight byte: bank=%0d addr=%0d lane%0d/lane%0d word=%016h",
                            bank_index,
                            address,
                            first_lane,
                            second_lane,
                            weight_memory[bank_index][address]
                        );
                    end
                end
            end
        end
    endtask

    task automatic build_test_vectors;
        integer bank_index;
        integer address;
        integer input_index;
        integer output_index;
        integer group_index;
        integer lane_index;
        integer group_base;
        integer dot_product;
        integer target_accumulator;
        begin
            // Initialize every readable location so bank changes while IDLE
            // cannot expose X data at the previous operation's held address.
            for (bank_index = 0;
                 bank_index < TB_WT_BANK_COUNT;
                 bank_index = bank_index + 1) begin
                for (address = 0;
                     address < TB_WT_DEPTH;
                     address = address + 1) begin
                    weight_memory[bank_index][address] =
                        make_weight_word(
                            address,
                            weight_bank_salt(bank_index)
                        );
                end
            end

            for (bank_index = 0;
                 bank_index < TB_DATA_BANK_COUNT;
                 bank_index = bank_index + 1) begin
                for (address = 0;
                     address < TB_DATA_DEPTH;
                     address = address + 1) begin
                    data_memory[bank_index][address] =
                        make_input_byte(address + (bank_index * 17));
                end
            end

            // FC1: non-trivial signed input x signed Weight dot products.
            for (input_index = 0;
                 input_index < FC1_INPUT_COUNT;
                 input_index = input_index + 1) begin
                data_memory[0][input_index] =
                    make_input_byte(input_index);
            end

            for (output_index = 0;
                 output_index < FC1_OUTPUT_COUNT;
                 output_index = output_index + 1) begin
                group_index = output_index / 8;
                lane_index  = output_index % 8;
                group_base  = group_index * FC1_GROUP_STRIDE;
                dot_product = 0;

                for (input_index = 0;
                     input_index < FC1_INPUT_COUNT;
                     input_index = input_index + 1) begin
                    dot_product = dot_product +
                        (signed_byte_to_integer(
                            data_memory[0][input_index]
                        ) *
                         signed_byte_to_integer(
                            weight_memory[0]
                                [group_base + input_index]
                                [(lane_index * 8) +: 8]
                        ));
                end

                // Current RTL quantizer outputs accumulator[31:24].
                // Bias is selected so all 64 expected raw outputs are
                // exactly signed int8 -32 through +31.
                target_accumulator =
                    (output_index - 32) * 32'sd16777216;
                fc1_mac_sum[output_index] = dot_product;
                fc1_bias[output_index] =
                    target_accumulator - dot_product;
                expected_fc1_output[output_index] =
                    output_index - 32;
            end

            for (group_index = 0;
                 group_index < FC1_GROUP_COUNT;
                 group_index = group_index + 1) begin
                group_base = group_index * FC1_GROUP_STRIDE;

                weight_memory[0][group_base + FC1_INPUT_COUNT + 0] =
                    pack_bias_pair(
                        fc1_bias[(group_index * 8) + 0],
                        fc1_bias[(group_index * 8) + 1]
                    );
                weight_memory[0][group_base + FC1_INPUT_COUNT + 1] =
                    pack_bias_pair(
                        fc1_bias[(group_index * 8) + 2],
                        fc1_bias[(group_index * 8) + 3]
                    );
                weight_memory[0][group_base + FC1_INPUT_COUNT + 2] =
                    pack_bias_pair(
                        fc1_bias[(group_index * 8) + 4],
                        fc1_bias[(group_index * 8) + 5]
                    );
                weight_memory[0][group_base + FC1_INPUT_COUNT + 3] =
                    pack_bias_pair(
                        fc1_bias[(group_index * 8) + 6],
                        fc1_bias[(group_index * 8) + 7]
                    );
            end

            // FC2 positive and negative directed vectors both consume the
            // actual FC1 output bank. Only PE0 is valid, but every 64-bit
            // Weight word still contains eight different signed bytes.
            for (bank_index = 1;
                 bank_index <= 2;
                 bank_index = bank_index + 1) begin
                dot_product = 0;

                for (input_index = 0;
                     input_index < FC2_INPUT_COUNT;
                     input_index = input_index + 1) begin
                    dot_product = dot_product +
                        (signed_byte_to_integer(
                            expected_fc1_output[input_index]
                        ) *
                         signed_byte_to_integer(
                            weight_memory[bank_index][input_index][7:0]
                        ));
                end

                if (bank_index == 1) begin
                    fc2_bias[0] = FC2_POS_TARGET - dot_product;
                    weight_memory[bank_index][FC2_INPUT_COUNT + 0] =
                        pack_bias_pair(fc2_bias[0], 32'sh13579bdf);
                    weight_memory[bank_index][FC2_INPUT_COUNT + 1] =
                        pack_bias_pair(32'sh89abcdef, 32'sh2468ace0);
                    weight_memory[bank_index][FC2_INPUT_COUNT + 2] =
                        pack_bias_pair(32'sh10293847, 32'shfedcba98);
                    weight_memory[bank_index][FC2_INPUT_COUNT + 3] =
                        pack_bias_pair(32'sh76543210, 32'sha5c31e79);
                end
                else begin
                    fc2_bias[1] = FC2_NEG_TARGET - dot_product;
                    weight_memory[bank_index][FC2_INPUT_COUNT + 0] =
                        pack_bias_pair(fc2_bias[1], 32'sh31415926);
                    weight_memory[bank_index][FC2_INPUT_COUNT + 1] =
                        pack_bias_pair(32'shc001d00d, 32'sh27182818);
                    weight_memory[bank_index][FC2_INPUT_COUNT + 2] =
                        pack_bias_pair(32'sh55aa33cc, 32'sh0f1e2d3c);
                    weight_memory[bank_index][FC2_INPUT_COUNT + 3] =
                        pack_bias_pair(32'sh7a6b5c4d, 32'she1d2c3b4);
                end
            end
        end
    endtask

    task automatic validate_test_vectors;
        integer bank_index;
        integer group_index;
        integer input_index;
        integer output_index;
        integer compare_index;
        integer group_base;
        begin
            for (input_index = 1;
                 input_index < FC1_INPUT_COUNT;
                 input_index = input_index + 1) begin
                if (data_memory[0][input_index] ===
                    data_memory[0][input_index - 1]) begin
                    $fatal(
                        1,
                        "Adjacent FC1 input values are equal: addr=%0d",
                        input_index
                    );
                end
            end

            for (group_index = 0;
                 group_index < FC1_GROUP_COUNT;
                 group_index = group_index + 1) begin
                group_base = group_index * FC1_GROUP_STRIDE;

                for (input_index = 0;
                     input_index < FC1_INPUT_COUNT;
                     input_index = input_index + 1) begin
                    check_weight_word_bytes(
                        0,
                        group_base + input_index
                    );

                    if ((input_index > 0) &&
                        (weight_memory[0][group_base + input_index] ===
                         weight_memory[0][group_base + input_index - 1])) begin
                        $fatal(
                            1,
                            "Adjacent FC1 Weight words are equal: addr=%0d",
                            group_base + input_index
                        );
                    end
                end
            end

            for (bank_index = 1;
                 bank_index <= 2;
                 bank_index = bank_index + 1) begin
                for (input_index = 0;
                     input_index < FC2_INPUT_COUNT;
                     input_index = input_index + 1) begin
                    check_weight_word_bytes(bank_index, input_index);

                    if ((input_index > 0) &&
                        (weight_memory[bank_index][input_index] ===
                         weight_memory[bank_index][input_index - 1])) begin
                        $fatal(
                            1,
                            "Adjacent FC2 Weight words are equal: bank=%0d addr=%0d",
                            bank_index,
                            input_index
                        );
                    end
                end
            end

            // Every FC1 bias value is deliberately unique.
            for (output_index = 0;
                 output_index < FC1_OUTPUT_COUNT;
                 output_index = output_index + 1) begin
                for (compare_index = output_index + 1;
                     compare_index < FC1_OUTPUT_COUNT;
                     compare_index = compare_index + 1) begin
                    if (fc1_bias[output_index] ===
                        fc1_bias[compare_index]) begin
                        $fatal(
                            1,
                            "Duplicate FC1 Bias: output=%0d/%0d value=%08h",
                            output_index,
                            compare_index,
                            fc1_bias[output_index]
                        );
                    end
                end
            end

            $display(
                "Vector sample: input[0]=%02h input[1]=%02h FC1_W[0]=%016h FC1_W[1]=%016h",
                data_memory[0][0],
                data_memory[0][1],
                weight_memory[0][0],
                weight_memory[0][1]
            );
            $display(
                "Vector sample: FC1_Bias0=%08h FC2_POS_W0=%016h FC2_NEG_W0=%016h",
                fc1_bias[0],
                weight_memory[1][0],
                weight_memory[2][0]
            );
        end
    endtask

    task automatic check_current_latched_configuration;
        begin
            case (current_operation)
                OP_FC1: begin
                    if ((dut.u_fc_core.u_fc_controller
                             .latched_input_length !== FC1_INPUT_LENGTH) ||
                        (dut.u_fc_core.u_fc_controller
                             .latched_output_length !== FC1_OUTPUT_LENGTH) ||
                        (dut.u_fc_core.u_fc_controller
                             .latched_finish_en !== 1'b0)) begin
                        $fatal(1, "FC1 latched configuration changed");
                    end
                end

                OP_FC2_POS,
                OP_FC2_NEG: begin
                    if ((dut.u_fc_core.u_fc_controller
                             .latched_input_length !== FC2_INPUT_LENGTH) ||
                        (dut.u_fc_core.u_fc_controller
                             .latched_output_length !== FC2_OUTPUT_LENGTH) ||
                        (dut.u_fc_core.u_fc_controller
                             .latched_finish_en !== 1'b1)) begin
                        $fatal(1, "FC2 latched configuration changed");
                    end
                end

                default: begin
                    $fatal(1, "No active operation for latch check");
                end
            endcase
        end
    endtask

    // Drive start and all configuration fields from one negedge to the
    // following negedge. They are sampled by exactly one rising edge.
    task automatic pulse_accepted_start;
        input logic [9:0] requested_input_length;
        input logic [9:0] requested_output_length;
        input logic requested_finish_en;
        begin
            @(negedge clk);

            if (dut.u_fc_core.controller_busy !== 1'b0) begin
                $fatal(
                    1,
                    "Accepted-start request was not issued in IDLE: op=%0d",
                    current_operation
                );
            end

            start         = 1'b1;
            input_length  = requested_input_length;
            output_length = requested_output_length;
            finish_en     = requested_finish_en;

            @(posedge clk);
            #1;

            if ((wt_raddr !== 0) || (DATA_raddr !== 0)) begin
                $fatal(
                    1,
                    "Address restart failed after accepted start: op=%0d wt=%0d data=%0d",
                    current_operation,
                    wt_raddr,
                    DATA_raddr
                );
            end

            check_current_latched_configuration();

            if (result !== 1'b0) begin
                $fatal(
                    1,
                    "Previous final result was not cleared on accepted start"
                );
            end

            if (current_operation == OP_FC2_POS) begin
                fc2_positive_restart_seen = 1'b1;
            end
            else if (current_operation == OP_FC2_NEG) begin
                fc2_negative_restart_seen = 1'b1;
            end

            @(negedge clk);
            start         = 1'b0;
            input_length  = 10'd0;
            output_length = 10'd0;
            finish_en     = 1'b0;
        end
    endtask

    // Wrong start/config pulse while MAC is active. The current operation
    // must continue for one MAC and its latched settings must not change.
    task automatic pulse_busy_start_during_mac;
        input logic [9:0] wrong_input_length;
        input logic [9:0] wrong_output_length;
        input logic wrong_finish_en;
        integer mac_count_before_pulse;
        begin
            @(negedge clk);
            mac_count_before_pulse = mac_count;

            if (dut.u_fc_core.pe_array_mac_valid !== 1'b1) begin
                $fatal(
                    1,
                    "Busy-start pulse was not placed in MAC state: op=%0d",
                    current_operation
                );
            end

            start         = 1'b1;
            input_length  = wrong_input_length;
            output_length = wrong_output_length;
            finish_en     = wrong_finish_en;

            @(posedge clk);
            #1;

            if (dut.u_fc_core.start_accept !== 1'b0) begin
                $fatal(
                    1,
                    "Busy start was incorrectly accepted: op=%0d",
                    current_operation
                );
            end

            check_current_latched_configuration();

            if (mac_count != (mac_count_before_pulse + 1)) begin
                $fatal(
                    1,
                    "MAC did not continue through busy start: before=%0d after=%0d",
                    mac_count_before_pulse,
                    mac_count
                );
            end

            @(negedge clk);
            start         = 1'b0;
            input_length  = 10'd0;
            output_length = 10'd0;
            finish_en     = 1'b0;
        end
    endtask

    // Standalone finish_en glitch without start during an FC1 Bias cycle.
    // finish_en is accepted only together with an IDLE start, so FC1 must
    // remain on the intermediate path and Bias progress must continue.
    task automatic pulse_finish_glitch_during_bias;
        integer bias_count_before_pulse;
        begin
            @(negedge clk);
            bias_count_before_pulse = bias_add_count;

            if (dut.u_fc_core.output_bias_add_en !== 1'b1) begin
                $fatal(1, "finish_en glitch was not placed in Bias state");
            end

            finish_glitch_active = 1'b1;
            start         = 1'b0;
            input_length  = 10'd0;
            output_length = 10'd0;
            finish_en     = 1'b1;

            @(posedge clk);
            #1;

            if (dut.u_fc_core.start_accept !== 1'b0) begin
                $fatal(1, "Standalone finish_en glitch caused start_accept");
            end

            check_current_latched_configuration();

            if (bias_add_count != (bias_count_before_pulse + 1)) begin
                $fatal(
                    1,
                    "Bias did not continue through finish_en glitch"
                );
            end

            standalone_finish_glitch_count =
                standalone_finish_glitch_count + 1;

            @(negedge clk);
            finish_en             = 1'b0;
            finish_glitch_active  = 1'b0;
        end
    endtask

    task automatic wait_for_done_and_idle;
        input integer expected_last_weight_address;
        input logic expected_result_at_done;
        integer timeout_count;
        begin
            timeout_count = 0;

            while ((Done !== 1'b1) &&
                   (timeout_count < TIMEOUT_CYCLES)) begin
                @(negedge clk);
                timeout_count = timeout_count + 1;
            end

            if (Done !== 1'b1) begin
                $fatal(
                    1,
                    "Timeout waiting for Done: op=%0d",
                    current_operation
                );
            end

            if (wt_raddr !== expected_last_weight_address) begin
                $fatal(
                    1,
                    "Last Weight/Bias address error: op=%0d expected=%0d actual=%0d",
                    current_operation,
                    expected_last_weight_address,
                    wt_raddr
                );
            end

            if (result !== expected_result_at_done) begin
                $fatal(
                    1,
                    "Result at Done error: op=%0d expected=%0b actual=%0b",
                    current_operation,
                    expected_result_at_done,
                    result
                );
            end

            @(posedge clk);
            #1;

            if ((Done !== 1'b0) ||
                (dut.u_fc_core.controller_busy !== 1'b0)) begin
                $fatal(
                    1,
                    "DUT did not return to IDLE: op=%0d Done=%0b busy=%0b",
                    current_operation,
                    Done,
                    dut.u_fc_core.controller_busy
                );
            end
        end
    endtask

    task automatic check_operation_event_counts;
        begin
            if (current_operation == OP_FC1) begin
                if ((clear_count != FC1_GROUP_COUNT) ||
                    (mac_count !=
                        (FC1_GROUP_COUNT * FC1_INPUT_COUNT)) ||
                    (capture_count != FC1_GROUP_COUNT) ||
                    (bias_add_count != (FC1_GROUP_COUNT * 4)) ||
                    (quant_count != FC1_OUTPUT_COUNT) ||
                    (write_count != FC1_OUTPUT_COUNT) ||
                    (result_capture_count != 0) ||
                    (done_count != 1)) begin
                    $fatal(
                        1,
                        "FC1 event count error: clear=%0d mac=%0d capture=%0d bias=%0d quant=%0d write=%0d result=%0d Done=%0d",
                        clear_count,
                        mac_count,
                        capture_count,
                        bias_add_count,
                        quant_count,
                        write_count,
                        result_capture_count,
                        done_count
                    );
                end
            end
            else begin
                if ((clear_count != 1) ||
                    (mac_count != FC2_INPUT_COUNT) ||
                    (capture_count != 1) ||
                    (bias_add_count != 4) ||
                    (quant_count != 0) ||
                    (write_count != 0) ||
                    (result_capture_count != 1) ||
                    (done_count != 1)) begin
                    $fatal(
                        1,
                        "FC2 event count error: op=%0d clear=%0d mac=%0d capture=%0d bias=%0d quant=%0d write=%0d result=%0d Done=%0d",
                        current_operation,
                        clear_count,
                        mac_count,
                        capture_count,
                        bias_add_count,
                        quant_count,
                        write_count,
                        result_capture_count,
                        done_count
                    );
                end
            end
        end
    endtask

    // Self-check all controller consume events against the external interface.
    always @(posedge clk) begin
        if (!rst_n) begin
            cycle_count                    = 0;
            accepted_start_count           = 0;
            ignored_start_count            = 0;
            start_high_cycle_count         = 0;
            standalone_finish_glitch_count = 0;
            start_previous_cycle           = 1'b0;
            clear_operation_counters();
        end
        else begin
            cycle_count = cycle_count + 1;

            if ((weight_read_bank_select >= TB_WT_BANK_COUNT) ||
                (^wt_raddr === 1'bx) ||
                (wt_raddr >= TB_WT_DEPTH) ||
                (wt_rdata !==
                    weight_memory[weight_read_bank_select][wt_raddr])) begin
                $fatal(
                    1,
                    "Weight async-read mapping error: bank=%0d addr=%0d data=%016h",
                    weight_read_bank_select,
                    wt_raddr,
                    wt_rdata
                );
            end

            if (((data_read_bank_select !== 1'b0) &&
                 (data_read_bank_select !== 1'b1)) ||
                (^DATA_raddr === 1'bx) ||
                (DATA_raddr >= TB_DATA_DEPTH) ||
                (DATA_rdata !==
                    data_memory[data_read_bank_select][DATA_raddr])) begin
                $fatal(
                    1,
                    "Data async-read mapping error: bank=%0d addr=%0d data=%02h",
                    data_read_bank_select,
                    DATA_raddr,
                    DATA_rdata
                );
            end

            if ((^wt_raddr === 1'bx) ||
                (^wt_rdata === 1'bx) ||
                (^DATA_raddr === 1'bx) ||
                (^DATA_rdata === 1'bx) ||
                (^DATA_waddr === 1'bx) ||
                (^DATA_wdata === 1'bx) ||
                ((DATA_we !== 1'b0) && (DATA_we !== 1'b1)) ||
                ((Done !== 1'b0) && (Done !== 1'b1)) ||
                ((result !== 1'b0) && (result !== 1'b1))) begin
                $fatal(1, "X/Z detected on FC interface");
            end

            if (start && start_previous_cycle) begin
                $fatal(1, "start was held longer than one clock");
            end
            start_previous_cycle = start;

            if (!start) begin
                if ((input_length !== 10'd0) ||
                    (output_length !== 10'd0)) begin
                    $fatal(
                        1,
                        "Length configuration was held outside start pulse"
                    );
                end

                if (!finish_glitch_active &&
                    (finish_en !== 1'b0)) begin
                    $fatal(
                        1,
                        "finish_en was held outside an intended pulse"
                    );
                end
            end

            if (start) begin
                start_high_cycle_count = start_high_cycle_count + 1;

                if (dut.u_fc_core.start_accept) begin
                    accepted_start_count = accepted_start_count + 1;
                end
                else begin
                    ignored_start_count = ignored_start_count + 1;

                    if (!dut.u_fc_core.controller_busy) begin
                        $fatal(
                            1,
                            "Ignored start occurred while controller was IDLE"
                        );
                    end
                end
            end

            if ((current_operation != OP_NONE) &&
                dut.u_fc_core.controller_busy &&
                !dut.u_fc_core.start_accept) begin
                check_current_latched_configuration();
            end

            if ((current_operation != OP_NONE) &&
                dut.u_fc_core.pe_acc_clear) begin
                if (current_operation == OP_FC1) begin
                    if (wt_raddr !==
                        (clear_count * FC1_GROUP_STRIDE)) begin
                        $fatal(
                            1,
                            "FC1 clear address error: group=%0d addr=%0d",
                            clear_count,
                            wt_raddr
                        );
                    end
                end
                else if (wt_raddr !== 0) begin
                    $fatal(
                        1,
                        "FC2 clear address did not restart at zero: %0d",
                        wt_raddr
                    );
                end

                clear_count = clear_count + 1;
            end

            if ((current_operation != OP_NONE) &&
                dut.u_fc_core.pe_array_mac_valid) begin
                if (current_operation == OP_FC1) begin
                    if (wt_raddr !==
                        (((mac_count / FC1_INPUT_COUNT) *
                          FC1_GROUP_STRIDE) +
                         (mac_count % FC1_INPUT_COUNT))) begin
                        $fatal(
                            1,
                            "FC1 MAC Weight address error: count=%0d addr=%0d",
                            mac_count,
                            wt_raddr
                        );
                    end

                    if (DATA_raddr !==
                        (mac_count % FC1_INPUT_COUNT)) begin
                        $fatal(
                            1,
                            "FC1 MAC Data address error: count=%0d addr=%0d",
                            mac_count,
                            DATA_raddr
                        );
                    end

                    if (dut.u_fc_core.lane_valid !== 8'hff) begin
                        $fatal(1, "FC1 MAC lane_valid is not FF");
                    end
                end
                else begin
                    if ((wt_raddr !== mac_count) ||
                        (DATA_raddr !== mac_count)) begin
                        $fatal(
                            1,
                            "FC2 MAC address error: op=%0d count=%0d wt=%0d data=%0d",
                            current_operation,
                            mac_count,
                            wt_raddr,
                            DATA_raddr
                        );
                    end

                    if (DATA_rdata !==
                        expected_fc1_output[mac_count]) begin
                        $fatal(
                            1,
                            "FC2 did not read FC1 output: input=%0d expected=%02h actual=%02h",
                            mac_count,
                            expected_fc1_output[mac_count],
                            DATA_rdata
                        );
                    end

                    if (dut.u_fc_core.lane_valid !== 8'h01) begin
                        $fatal(1, "Final FC2 lane_valid is not 01");
                    end

                    if (mac_count == 0) begin
                        if (current_operation == OP_FC2_POS) begin
                            fc2_positive_first_mac_seen = 1'b1;
                        end
                        else begin
                            fc2_negative_first_mac_seen = 1'b1;
                        end
                    end
                end

                mac_count = mac_count + 1;
            end

            if ((current_operation != OP_NONE) &&
                dut.u_fc_core.output_capture_en) begin
                capture_count = capture_count + 1;
            end

            if ((current_operation != OP_NONE) &&
                dut.u_fc_core.output_bias_add_en) begin
                if (current_operation == OP_FC1) begin
                    if (wt_raddr !==
                        (((bias_add_count / 4) * FC1_GROUP_STRIDE) +
                         FC1_INPUT_COUNT +
                         (bias_add_count % 4))) begin
                        $fatal(
                            1,
                            "FC1 Bias address error: count=%0d addr=%0d",
                            bias_add_count,
                            wt_raddr
                        );
                    end
                end
                else if (wt_raddr !==
                         (FC2_INPUT_COUNT + bias_add_count)) begin
                    $fatal(
                        1,
                        "FC2 Bias address error: op=%0d count=%0d addr=%0d",
                        current_operation,
                        bias_add_count,
                        wt_raddr
                    );
                end

                if (dut.u_fc_core.output_bias_word_index !==
                    (bias_add_count % 4)) begin
                    $fatal(
                        1,
                        "Bias word index error: op=%0d count=%0d index=%0d",
                        current_operation,
                        bias_add_count,
                        dut.u_fc_core.output_bias_word_index
                    );
                end

                bias_add_count = bias_add_count + 1;
            end

            if (dut.u_fc_core.quant_result_valid) begin
                if (current_operation != OP_FC1) begin
                    $fatal(1, "Final FC2 entered quantizer/write path");
                end
                quant_count = quant_count + 1;
            end

            if (DATA_we) begin
                if (current_operation != OP_FC1) begin
                    $fatal(
                        1,
                        "DATA_we asserted during final FC2: op=%0d",
                        current_operation
                    );
                end

                if ((DATA_waddr !== write_count) ||
                    (DATA_wdata !== expected_fc1_output[write_count])) begin
                    $fatal(
                        1,
                        "FC1 write mismatch: index=%0d addr=%0d expected=%02h actual=%02h",
                        write_count,
                        DATA_waddr,
                        expected_fc1_output[write_count],
                        DATA_wdata
                    );
                end

                write_count      = write_count + 1;
                last_write_cycle = cycle_count;
            end

            if (dut.u_fc_core.result_capture_en) begin
                if ((current_operation != OP_FC2_POS) &&
                    (current_operation != OP_FC2_NEG)) begin
                    $fatal(1, "Final result capture occurred outside FC2");
                end

                if ($signed(
                        dut.u_fc_core.buffered_accumulator_0_s32
                    ) != expected_final_accumulator(current_operation)) begin
                    $fatal(
                        1,
                        "Final accumulator mismatch: op=%0d expected=%0d actual=%0d",
                        current_operation,
                        expected_final_accumulator(current_operation),
                        $signed(
                            dut.u_fc_core.buffered_accumulator_0_s32
                        )
                    );
                end

                if (Done !== 1'b0) begin
                    $fatal(1, "Done asserted before result register edge");
                end

                result_capture_count = result_capture_count + 1;
                result_capture_cycle = cycle_count;
            end

            if (Done) begin
                if (current_operation == OP_FC1) begin
                    if ((cycle_count != (last_write_cycle + 1)) ||
                        (result !== 1'b0)) begin
                        $fatal(
                            1,
                            "FC1 final write/Done timing or result error"
                        );
                    end
                end
                else if ((current_operation == OP_FC2_POS) ||
                         (current_operation == OP_FC2_NEG)) begin
                    if ((result_capture_count != 1) ||
                        (cycle_count != (result_capture_cycle + 1)) ||
                        (result !==
                            expected_final_result(current_operation))) begin
                        $fatal(
                            1,
                            "FC2 result/Done timing error: op=%0d result=%0b",
                            current_operation,
                            result
                        );
                    end
                end
                else begin
                    $fatal(1, "Done asserted without an active operation");
                end

                done_count = done_count + 1;
            end
        end
    end

    initial begin
        integer output_index;
        integer held_weight_address;
        integer final_accumulator;

        clk                      = 1'b0;
        rst_n                    = 1'b0;
        start                    = 1'b0;
        input_length             = 10'd0;
        output_length            = 10'd0;
        finish_en                = 1'b0;
        weight_read_bank_select  = 2'd0;
        data_read_bank_select    = 1'b0;
        data_write_bank_select   = 1'b1;
        current_operation        = OP_NONE;
        finish_glitch_active     = 1'b0;
        fc2_positive_restart_seen   = 1'b0;
        fc2_negative_restart_seen   = 1'b0;
        fc2_positive_first_mac_seen = 1'b0;
        fc2_negative_first_mac_seen = 1'b0;

        if ((FC1_INPUT_LENGTH !== (FC1_INPUT_COUNT - 1)) ||
            (FC1_OUTPUT_LENGTH !== (FC1_OUTPUT_COUNT - 1)) ||
            (FC2_INPUT_LENGTH !== (FC2_INPUT_COUNT - 1)) ||
            (FC2_OUTPUT_LENGTH !== (FC2_OUTPUT_COUNT - 1))) begin
            $fatal(1, "count-minus-one length constants are wrong");
        end

        build_test_vectors();
        validate_test_vectors();

        repeat (4) @(posedge clk);
        @(negedge clk);
        rst_n = 1'b1;
        repeat (2) @(negedge clk);

        // =============================================================
        // Operation 1: FC1, 1024 signed int8 inputs -> 64 outputs
        // =============================================================
        $display("START FC1: 1024 input -> 64 output, finish_en=0");
        current_operation = OP_FC1;
        clear_operation_counters();
        pulse_accepted_start(
            FC1_INPUT_LENGTH,
            FC1_OUTPUT_LENGTH,
            1'b0
        );

        // A bogus final-FC start/config pulse during FC1 MAC must be ignored.
        while (mac_count < 257) begin
            @(negedge clk);
        end
        pulse_busy_start_during_mac(
            FC2_INPUT_LENGTH,
            FC2_OUTPUT_LENGTH,
            1'b1
        );

        // A standalone finish_en pulse during the first Bias phase must
        // neither change the latched mode nor divert FC1 to final-result.
        while (bias_add_count < 1) begin
            @(negedge clk);
        end
        pulse_finish_glitch_during_bias();

        wait_for_done_and_idle(FC1_WT_WORD_COUNT - 1, 1'b0);
        check_operation_event_counts();

        for (output_index = 0;
             output_index < FC1_OUTPUT_COUNT;
             output_index = output_index + 1) begin
            if (data_memory[1][output_index] !==
                expected_fc1_output[output_index]) begin
                $fatal(
                    1,
                    "Stored FC1 output mismatch: index=%0d expected=%02h actual=%02h",
                    output_index,
                    expected_fc1_output[output_index],
                    data_memory[1][output_index]
                );
            end
        end

        held_weight_address = wt_raddr;
        if (held_weight_address != (FC1_WT_WORD_COUNT - 1)) begin
            $fatal(1, "FC1 IDLE did not hold final address 8223");
        end

        $display(
            "FC1 PASS: MAC=%0d BiasReads=%0d Writes=%0d IDLE_wt_raddr=%0d",
            mac_count,
            bias_add_count,
            write_count,
            held_weight_address
        );

        // Change only testbench-side buffer selection while DUT is IDLE.
        current_operation = OP_NONE;
        @(negedge clk);
        weight_read_bank_select = 2'd1;
        data_read_bank_select   = 1'b1;
        data_write_bank_select  = 1'b0;

        if ((dut.u_fc_core.controller_busy !== 1'b0) ||
            (wt_raddr !== (FC1_WT_WORD_COUNT - 1))) begin
            $fatal(1, "FC2 bank switch was not performed in FC1 IDLE");
        end

        // =============================================================
        // Operation 2: FC2, actual FC1 outputs -> positive final result
        // =============================================================
        $display("START FC2-positive: 64 input -> 1 output, finish_en=1");
        current_operation = OP_FC2_POS;
        clear_operation_counters();
        pulse_accepted_start(
            FC2_INPUT_LENGTH,
            FC2_OUTPUT_LENGTH,
            1'b1
        );

        while (mac_count < 16) begin
            @(negedge clk);
        end
        pulse_busy_start_during_mac(
            FC1_INPUT_LENGTH,
            FC1_OUTPUT_LENGTH,
            1'b0
        );

        wait_for_done_and_idle(FC2_WT_WORD_COUNT - 1, 1'b1);
        check_operation_event_counts();

        final_accumulator =
            $signed(dut.u_fc_core.buffered_accumulator_0_s32);
        if ((final_accumulator != FC2_POS_TARGET) ||
            (result !== 1'b1)) begin
            $fatal(
                1,
                "Positive FC2 result mismatch: accumulator=%0d result=%0b",
                final_accumulator,
                result
            );
        end

        repeat (3) begin
            @(negedge clk);
            if ((result !== 1'b1) || (Done !== 1'b0)) begin
                $fatal(1, "Positive final result was not held in IDLE");
            end
        end

        $display(
            "FC2-positive PASS: accumulator=%0d result=%0b IDLE_wt_raddr=%0d",
            final_accumulator,
            result,
            wt_raddr
        );

        // Extra directed FC2 run reuses the real FC1 output bank, but selects
        // a second varied Weight/Bias buffer to exercise the negative branch.
        current_operation = OP_NONE;
        @(negedge clk);
        weight_read_bank_select = 2'd2;

        if ((dut.u_fc_core.controller_busy !== 1'b0) ||
            (wt_raddr !== (FC2_WT_WORD_COUNT - 1))) begin
            $fatal(1, "Negative FC2 bank switch was not performed in IDLE");
        end

        // =============================================================
        // Operation 3: FC2, same inputs -> negative final result
        // =============================================================
        $display("START FC2-negative: 64 input -> 1 output, finish_en=1");
        current_operation = OP_FC2_NEG;
        clear_operation_counters();
        pulse_accepted_start(
            FC2_INPUT_LENGTH,
            FC2_OUTPUT_LENGTH,
            1'b1
        );
        wait_for_done_and_idle(FC2_WT_WORD_COUNT - 1, 1'b0);
        check_operation_event_counts();

        final_accumulator =
            $signed(dut.u_fc_core.buffered_accumulator_0_s32);
        if ((final_accumulator != FC2_NEG_TARGET) ||
            (result !== 1'b0)) begin
            $fatal(
                1,
                "Negative FC2 result mismatch: accumulator=%0d result=%0b",
                final_accumulator,
                result
            );
        end

        repeat (3) begin
            @(negedge clk);
            if ((result !== 1'b0) || (Done !== 1'b0)) begin
                $fatal(1, "Negative final result was not held in IDLE");
            end
        end

        if (!fc2_positive_restart_seen ||
            !fc2_negative_restart_seen ||
            !fc2_positive_first_mac_seen ||
            !fc2_negative_first_mac_seen) begin
            $fatal(
                1,
                "Address-zero restart check was not observed for every FC2 run"
            );
        end

        if ((accepted_start_count != 3) ||
            (ignored_start_count != 2) ||
            (start_high_cycle_count != 5) ||
            (standalone_finish_glitch_count != 1)) begin
            $fatal(
                1,
                "Pulse count error: accepted=%0d ignored=%0d start_cycles=%0d finish_glitches=%0d",
                accepted_start_count,
                ignored_start_count,
                start_high_cycle_count,
                standalone_finish_glitch_count
            );
        end

        $display("============================================================");
        $display("PASS: tb_fc_two_layer");
        $display("FC1 1024->64 and FC2 64->1 completed sequentially");
        $display("FC2 address restart: accepted-start=0, first-MAC=0");
        $display("Busy start pulses ignored in FC1 and FC2");
        $display("Standalone finish_en glitch ignored during FC1 Bias");
        $display("Final result branches: +37 -> 1, -37 -> 0");
        $display(
            "start accepted=%0d ignored_busy=%0d finish_glitch=%0d",
            accepted_start_count,
            ignored_start_count,
            standalone_finish_glitch_count
        );
        $display("============================================================");

        $finish;
    end

endmodule
