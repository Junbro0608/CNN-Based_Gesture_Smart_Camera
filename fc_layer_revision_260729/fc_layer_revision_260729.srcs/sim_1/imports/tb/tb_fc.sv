`timescale 1ns / 1ps

module tb_fc;

    localparam integer TB_WT_DEPTH        = 128;
    localparam integer TB_DATA_DEPTH      = 128;
    localparam integer INPUT_COUNT        = 16;
    localparam integer OUTPUT_COUNT       = 16;
    localparam integer GROUP_COUNT        = 2;
    localparam integer GROUP_STRIDE       = 20;
    localparam integer WT_WORD_COUNT      = 40;
    localparam integer TIMEOUT_CYCLES     = 2000;

    logic clk;
    logic rst_n;
    logic start;
    logic [6:0] input_length;
    logic [6:0] output_length;
    logic finish_en;
    logic Done;
    logic result;

    logic [$clog2(TB_WT_DEPTH)-1:0] wt_raddr;
    logic [63:0] wt_rdata;

    logic DATA_we;
    logic [$clog2(TB_DATA_DEPTH)-1:0] DATA_waddr;
    logic [7:0] DATA_wdata;
    logic [$clog2(TB_DATA_DEPTH)-1:0] DATA_raddr;
    logic [7:0] DATA_rdata;

    logic [63:0] weight_memory [0:WT_WORD_COUNT-1];
    logic [7:0] activation_memory [0:INPUT_COUNT-1];
    logic [7:0] output_memory [0:OUTPUT_COUNT-1];

    logic signed [7:0]
        weight_matrix [0:OUTPUT_COUNT-1][0:INPUT_COUNT-1];
    logic signed [31:0] bias_value [0:OUTPUT_COUNT-1];
    logic signed [31:0] golden_accumulator [0:OUTPUT_COUNT-1];
    logic [7:0] expected_output [0:OUTPUT_COUNT-1];

    integer cycle_count;
    integer clear_count;
    integer mac_count;
    integer capture_count;
    integer bias_add_count;
    integer quant_count;
    integer write_count;
    integer done_count;
    integer last_write_cycle;

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

    always #5 clk = ~clk;

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

    function automatic [63:0] pack_weight_eight;
        input logic signed [7:0] weight_0;
        input logic signed [7:0] weight_1;
        input logic signed [7:0] weight_2;
        input logic signed [7:0] weight_3;
        input logic signed [7:0] weight_4;
        input logic signed [7:0] weight_5;
        input logic signed [7:0] weight_6;
        input logic signed [7:0] weight_7;
        begin
            pack_weight_eight = {
                weight_7, weight_6, weight_5, weight_4,
                weight_3, weight_2, weight_1, weight_0
            };
        end
    endfunction

    // FC 계약에 맞춰 주소가 변하면 같은 cycle에 read data가 바뀐다.
    always_comb begin
        wt_rdata = 64'hxxxx_xxxx_xxxx_xxxx;

        if (wt_raddr < WT_WORD_COUNT) begin
            wt_rdata = weight_memory[wt_raddr];
        end
    end

    always_comb begin
        DATA_rdata = 8'hxx;

        if (DATA_raddr < INPUT_COUNT) begin
            DATA_rdata = activation_memory[DATA_raddr];
        end
    end

    // Data write와 내부 consume event를 posedge 기준으로 검사한다.
    always @(posedge clk) begin
        cycle_count = cycle_count + 1;

        if (!rst_n) begin
            clear_count      = 0;
            mac_count        = 0;
            capture_count    = 0;
            bias_add_count   = 0;
            quant_count      = 0;
            write_count      = 0;
            done_count       = 0;
            last_write_cycle = -1;
        end
        else begin
            if ((^wt_raddr === 1'bx) ||
                (^wt_rdata === 1'bx) ||
                (^DATA_raddr === 1'bx) ||
                (^DATA_rdata === 1'bx) ||
                (^DATA_waddr === 1'bx) ||
                (^DATA_wdata === 1'bx) ||
                ((DATA_we !== 1'b0) && (DATA_we !== 1'b1)) ||
                ((Done !== 1'b0) && (Done !== 1'b1))) begin
                $fatal(1, "FC interface에서 X/Z가 검출됨");
            end

            if (dut.u_fc_core.pe_acc_clear) begin
                clear_count = clear_count + 1;
            end

            if (dut.u_fc_core.pe_array_mac_valid) begin
                if (wt_raddr !=
                    (((mac_count / INPUT_COUNT) * GROUP_STRIDE) +
                     4 + (mac_count % INPUT_COUNT))) begin
                    $fatal(
                        1,
                        "MAC Weight 주소 오류: count=%0d addr=%0d",
                        mac_count,
                        wt_raddr
                    );
                end

                if (DATA_raddr != (mac_count % INPUT_COUNT)) begin
                    $fatal(
                        1,
                        "MAC Data 주소 오류: count=%0d addr=%0d",
                        mac_count,
                        DATA_raddr
                    );
                end

                mac_count = mac_count + 1;
            end

            if (dut.u_fc_core.output_capture_en) begin
                capture_count = capture_count + 1;
            end

            if (dut.u_fc_core.output_bias_add_en) begin
                if (wt_raddr !=
                    (((bias_add_count / 4) * GROUP_STRIDE) +
                     (bias_add_count % 4))) begin
                    $fatal(
                        1,
                        "Bias 주소 오류: count=%0d addr=%0d",
                        bias_add_count,
                        wt_raddr
                    );
                end

                if (dut.u_fc_core.output_bias_word_index !=
                    (bias_add_count % 4)) begin
                    $fatal(
                        1,
                        "Bias word index 오류: expected=%0d actual=%0d",
                        bias_add_count % 4,
                        dut.u_fc_core.output_bias_word_index
                    );
                end

                bias_add_count = bias_add_count + 1;
            end

            if (dut.u_fc_core.quant_result_valid) begin
                quant_count = quant_count + 1;
            end

            if (DATA_we) begin
                if (DATA_waddr >= OUTPUT_COUNT) begin
                    $fatal(
                        1,
                        "Data write 주소 범위 오류: %0d",
                        DATA_waddr
                    );
                end

                if (DATA_waddr != write_count) begin
                    $fatal(
                        1,
                        "Data write 순서 오류: expected=%0d actual=%0d",
                        write_count,
                        DATA_waddr
                    );
                end

                output_memory[DATA_waddr] <= DATA_wdata;
                write_count = write_count + 1;
                last_write_cycle = cycle_count;
            end

            if (Done) begin
                if (done_count != 0) begin
                    $fatal(1, "Done이 한 번보다 많이 발생함");
                end

                if (cycle_count != (last_write_cycle + 1)) begin
                    $fatal(
                        1,
                        "Done timing 오류: write_cycle=%0d done_cycle=%0d",
                        last_write_cycle,
                        cycle_count
                    );
                end

                done_count = done_count + 1;
            end
        end
    end

    task automatic build_test_vectors;
        integer input_index;
        integer output_index;
        integer group_index;
        integer group_base;
        integer base_byte;
        integer product_value;
        begin
            for (input_index = 0;
                 input_index < WT_WORD_COUNT;
                 input_index = input_index + 1) begin
                weight_memory[input_index] = 64'd0;
            end

            for (output_index = 0;
                 output_index < OUTPUT_COUNT;
                 output_index = output_index + 1) begin
                output_memory[output_index] = 8'd0;
            end

            // Signed activation의 양 끝값 127과 -128을 번갈아 사용한다.
            for (input_index = 0;
                 input_index < INPUT_COUNT;
                 input_index = input_index + 1) begin
                if ((input_index % 2) == 0) begin
                    activation_memory[input_index] = 8'h7f;
                end
                else begin
                    activation_memory[input_index] = 8'h80;
                end
            end

            for (output_index = 0;
                 output_index < OUTPUT_COUNT;
                 output_index = output_index + 1) begin
                if (output_index < 8) begin
                    base_byte = output_index;
                end
                else begin
                    base_byte = output_index - 16;
                end

                // MAC 16개가 모두 반영돼야 [31:24]가 경계를 넘도록 Bias를 잡는다.
                if ((output_index % 2) == 0) begin
                    bias_value[output_index] =
                        (base_byte <<< 24) + 32'h00fc_2f70;
                end
                else begin
                    bias_value[output_index] =
                        (base_byte <<< 24) + 32'h0003_d090;
                end

                for (input_index = 0;
                     input_index < INPUT_COUNT;
                     input_index = input_index + 1) begin
                    if ((output_index % 2) == 0) begin
                        if ((input_index % 2) == 0) begin
                            weight_matrix[output_index][input_index] =
                                8'sd127;
                        end
                        else begin
                            weight_matrix[output_index][input_index] =
                                8'sh80;
                        end
                    end
                    else begin
                        if ((input_index % 2) == 0) begin
                            weight_matrix[output_index][input_index] =
                                -8'sd127;
                        end
                        else begin
                            weight_matrix[output_index][input_index] =
                                8'sd127;
                        end
                    end
                end
            end

            // Group마다 Bias 4 word와 input별 Weight 16 word를 packing한다.
            for (group_index = 0;
                 group_index < GROUP_COUNT;
                 group_index = group_index + 1) begin
                group_base = group_index * GROUP_STRIDE;

                weight_memory[group_base + 0] =
                    pack_bias_pair(
                        bias_value[(group_index * 8) + 0],
                        bias_value[(group_index * 8) + 1]
                    );
                weight_memory[group_base + 1] =
                    pack_bias_pair(
                        bias_value[(group_index * 8) + 2],
                        bias_value[(group_index * 8) + 3]
                    );
                weight_memory[group_base + 2] =
                    pack_bias_pair(
                        bias_value[(group_index * 8) + 4],
                        bias_value[(group_index * 8) + 5]
                    );
                weight_memory[group_base + 3] =
                    pack_bias_pair(
                        bias_value[(group_index * 8) + 6],
                        bias_value[(group_index * 8) + 7]
                    );

                for (input_index = 0;
                     input_index < INPUT_COUNT;
                     input_index = input_index + 1) begin
                    weight_memory[group_base + 4 + input_index] =
                        pack_weight_eight(
                            weight_matrix[(group_index * 8) + 0]
                                         [input_index],
                            weight_matrix[(group_index * 8) + 1]
                                         [input_index],
                            weight_matrix[(group_index * 8) + 2]
                                         [input_index],
                            weight_matrix[(group_index * 8) + 3]
                                         [input_index],
                            weight_matrix[(group_index * 8) + 4]
                                         [input_index],
                            weight_matrix[(group_index * 8) + 5]
                                         [input_index],
                            weight_matrix[(group_index * 8) + 6]
                                         [input_index],
                            weight_matrix[(group_index * 8) + 7]
                                         [input_index]
                        );
                end
            end

            // DUT와 독립적으로 signed MAC golden 값을 계산한다.
            for (output_index = 0;
                 output_index < OUTPUT_COUNT;
                 output_index = output_index + 1) begin
                golden_accumulator[output_index] =
                    bias_value[output_index];

                for (input_index = 0;
                     input_index < INPUT_COUNT;
                     input_index = input_index + 1) begin
                    product_value =
                        $signed(activation_memory[input_index]) *
                        $signed(
                            weight_matrix[output_index][input_index]
                        );

                    golden_accumulator[output_index] =
                        golden_accumulator[output_index] +
                        product_value;
                end

                expected_output[output_index] =
                    golden_accumulator[output_index][31:24];
            end
        end
    endtask

    initial begin
        integer timeout_count;
        integer output_index;

        clk           = 1'b0;
        rst_n         = 1'b0;
        start         = 1'b0;
        input_length  = 7'd15;
        output_length = 7'd15;
        finish_en     = 1'b0;
        cycle_count   = 0;

        build_test_vectors();

        repeat (4) @(posedge clk);

        @(negedge clk);
        rst_n = 1'b1;

        repeat (2) @(negedge clk);

        // 유휴 상태에서 한 클럭 동안 start를 입력한다.
        start = 1'b1;
        @(negedge clk);
        start = 1'b0;

        timeout_count = 0;

        while ((Done !== 1'b1) &&
               (timeout_count < TIMEOUT_CYCLES)) begin
            @(negedge clk);
            timeout_count = timeout_count + 1;
        end

        if (Done !== 1'b1) begin
            $fatal(
                1,
                "Timeout: %0d cycle 안에 Done이 발생하지 않음",
                TIMEOUT_CYCLES
            );
        end

        if (clear_count != GROUP_COUNT) begin
            $fatal(1, "Clear count 오류: %0d", clear_count);
        end
        if (mac_count != (GROUP_COUNT * INPUT_COUNT)) begin
            $fatal(1, "MAC count 오류: %0d", mac_count);
        end
        if (capture_count != GROUP_COUNT) begin
            $fatal(1, "Capture count 오류: %0d", capture_count);
        end
        if (bias_add_count != (GROUP_COUNT * 4)) begin
            $fatal(1, "Bias add count 오류: %0d", bias_add_count);
        end
        if (quant_count != OUTPUT_COUNT) begin
            $fatal(1, "Quantizer count 오류: %0d", quant_count);
        end
        if (write_count != OUTPUT_COUNT) begin
            $fatal(1, "Data write count 오류: %0d", write_count);
        end
        if (result !== 1'b0) begin
            $fatal(1, "Intermediate FC에서 result가 0이 아님");
        end

        for (output_index = 0;
             output_index < OUTPUT_COUNT;
             output_index = output_index + 1) begin
            if (output_memory[output_index] !==
                expected_output[output_index]) begin
                $fatal(
                    1,
                    "Output %0d 오류: expected=%02h actual=%02h accumulator=%0d",
                    output_index,
                    expected_output[output_index],
                    output_memory[output_index],
                    golden_accumulator[output_index]
                );
            end

            $display(
                "OUTPUT[%0d] PASS: data=%02h accumulator=%0d",
                output_index,
                output_memory[output_index],
                golden_accumulator[output_index]
            );
        end

        // Done high cycle이 끝나는 다음 posedge 이후 deassert를 검사한다.
        @(posedge clk);
        #1;

        if (Done !== 1'b0 || done_count != 1) begin
            $fatal(
                1,
                "Done pulse 오류: Done=%0b count=%0d",
                Done,
                done_count
            );
        end

        $display("==================================================");
        $display("PASS: FC 16-input / 16-output self-checking test");
        $display("clear=%0d mac=%0d capture=%0d bias=%0d quant=%0d write=%0d",
                 clear_count, mac_count, capture_count,
                 bias_add_count, quant_count, write_count);
        $display("==================================================");

        $finish;
    end

endmodule
