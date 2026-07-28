`timescale 1ns / 1ps

`include "fc_defines.vh"

// CNN Fully-Connected 레이어의 메모리, PE 배열 및 출력 레지스터 제어기
//
// Data Buffer와 weight_rom은 동기식 1클럭 read latency를 가지므로,
// 주소 발행과 PE 데이터 소비를 read_valid_q 파이프라인으로 분리한다.
// 한 batch에서 각 PE는 하나의 output을 input_length번 누적하며,
// 마지막 partial batch에서는 실제로 유효한 PE 결과만 순차 기록한다.
//
// 사용 조건:
// 1) fc_output_reg가 finish_en을 fc_top에서 직접 받으므로 finish_en은
//    start부터 outreg_valid가 수락될 때까지 같은 값으로 유지해야 한다.
// 2) input_length는 FC_MAX_INPUT_LEN 이하여야 ACC_WIDTH의 안전 근거를 지킨다.
// 3) base 주소와 최대 offset의 합은 각 address parameter 폭 안에 있어야 한다.
// 4) batch 사이에 원본 input을 다시 읽으므로 data_src_base_addr가 가리키는
//    입력 구간과 data_dst_base_addr가 가리키는 출력 구간은 겹치면 안 된다.
//    두 구간을 분리하면 하나의 Data memory에서도 안전하게 동작한다.
module fc_controller #(
    parameter int PE_NUM            = `FC_PE_NUM,
    parameter int DATA_WIDTH        = `FC_DATA_WIDTH,
    parameter int WEIGHT_WIDTH      = `FC_WEIGHT_WIDTH,
    parameter int ACC_WIDTH         = `FC_ACC_WIDTH,
    parameter int BIAS_WIDTH        = `FC_BIAS_WIDTH,
    parameter int DATA_ADDR_WIDTH   = 9,
    parameter int WEIGHT_ADDR_WIDTH = 17,
    parameter int BIAS_ADDR_WIDTH   = 9
) (
    input  logic                                      clk,
    input  logic                                      rst_n,
    input  logic                                      start,
    input  logic                                      finish_en,
    input  logic [8:0]                                input_length,
    input  logic [7:0]                                output_length,
    input  logic [DATA_ADDR_WIDTH-1:0]                data_src_base_addr,
    input  logic [DATA_ADDR_WIDTH-1:0]                data_dst_base_addr,
    input  logic [WEIGHT_ADDR_WIDTH-1:0]              weight_base_addr,
    input  logic [BIAS_ADDR_WIDTH-1:0]                bias_base_addr,
    output logic                                      done,

    // Data Buffer 인터페이스: 1byte read 및 1byte 순차 write
    output logic [DATA_ADDR_WIDTH-1:0]                data_raddr,
    output logic [DATA_ADDR_WIDTH-1:0]                data_waddr,
    output logic [DATA_WIDTH-1:0]                     data_wdata,
    output logic                                      data_we,
    input  logic [DATA_WIDTH-1:0]                     data_rdata,

    // weight_raddr는 64-bit word index가 아니라 8-lane window가 시작되는
    // BYTE 주소이다. weight_rdata[k]는 weight_memory[weight_raddr + k]의
    // signed byte이며 PE[k]로 전달된다.
    // TODO(memory): physical ROM의 lane k가
    // weight_memory[weight_raddr + k]와 같은 순서인지 메모리 담당자와 확인한다.
    // ROM이 64-bit word-addressed 구조이면 row padding과 주소 변환이 필요하다.
    output logic [WEIGHT_ADDR_WIDTH-1:0]              weight_raddr,
    input  logic signed [WEIGHT_WIDTH-1:0]            weight_rdata [0:PE_NUM-1],

    // bias_raddr는 8-lane bias ROM의 base 주소이다. 각 unpacked array
    // lane은 bias_rdata[k] = bias_memory[bias_raddr + k]를 반환한다.
    output logic [BIAS_ADDR_WIDTH-1:0]                bias_raddr,
    input  logic signed [BIAS_WIDTH-1:0]              bias_rdata [0:PE_NUM-1],

    // 8개 PE가 공유하는 제어 및 broadcast activation
    output logic                                      pe_en,
    output logic                                      pe_acc_clear,
    output logic [DATA_WIDTH-1:0]                     pe_in_data,
    output logic signed [WEIGHT_WIDTH-1:0]            pe_weight [0:PE_NUM-1],
    input  logic signed [ACC_WIDTH-1:0]               pe_acc_arr [0:PE_NUM-1],

    // fc_output_reg 인터페이스
    output logic                                      outreg_valid,
    output logic signed [BIAS_WIDTH-1:0]              outreg_bias_arr [0:PE_NUM-1],
    input  logic signed [DATA_WIDTH-1:0]              outreg_output_val [0:PE_NUM-1],
    input  logic                                      outreg_result,
    input  logic                                      outreg_out_valid
);

    // PE_NUM까지 표현해야 하므로 단순 PE index보다 1비트 넓을 수 있다.
    localparam int PE_COUNT_WIDTH =
        (PE_NUM < 2) ? 1 : $clog2(PE_NUM + 1);

    // 명세에 지정된 7개 상태를 3비트 enum으로 표현한다.
    typedef enum logic [2:0] {
        IDLE,
        INIT_BATCH,
        ACCUMULATE,
        CAPTURE,
        WRITE,
        BATCH_CHECK,
        DONE
    } state_t;

    state_t state_q;
    state_t state_d;

    // start에서 저장하여 한 FC 호출 동안 고정하는 런타임 설정
    logic                         finish_en_q;
    logic [8:0]                   input_length_q;
    logic [7:0]                   output_length_q;
    logic [DATA_ADDR_WIDTH-1:0]   data_src_base_addr_q;
    logic [DATA_ADDR_WIDTH-1:0]   data_dst_base_addr_q;
    logic [WEIGHT_ADDR_WIDTH-1:0] weight_base_addr_q;
    logic [BIAS_ADDR_WIDTH-1:0]   bias_base_addr_q;

    // batch 진행 및 현재 batch가 담당하는 첫 output index
    logic [8:0] batch_idx_q;
    logic [8:0] total_batches_q;
    logic [8:0] batch_offset_q;

    // 현재 batch의 실제 유효 PE 수와 순차 write index
    logic [PE_COUNT_WIDTH-1:0] valid_count_q;
    logic [PE_COUNT_WIDTH-1:0] write_idx_q;

    // 동기식 메모리 주소 발행 및 PE 소비 횟수
    logic [8:0] issue_idx_q;
    logic [8:0] consume_count_q;
    logic       issue_valid;
    logic       read_valid_q;

    // 곱셈기 없이 output_length만큼 증가시키는 weight 주소 누산기
    logic [WEIGHT_ADDR_WIDTH-1:0] weight_issue_addr_q;

    // bias_rom의 1클럭 read latency 처리
    logic bias_capture_pending_q;
    logic signed [BIAS_WIDTH-1:0] bias_latched_q [0:PE_NUM-1];

    // CAPTURE 상태에서 outreg_valid를 한 번만 발생시키는 상태 플래그
    logic capture_sent_q;

    integer comb_idx;
    integer seq_idx;

`ifndef SYNTHESIS
    // 런타임 주소 설정을 검증할 때 덧셈이 address 폭에서 먼저 wrap되지 않도록
    // 1비트 넓은 half-open 구간 끝 주소 [base, end)를 사용한다.
    localparam logic [DATA_ADDR_WIDTH:0] DATA_ADDR_CAPACITY = {
        1'b1, {DATA_ADDR_WIDTH {1'b0}}
    };
    logic [DATA_ADDR_WIDTH:0] data_src_end_check;
    logic [DATA_ADDR_WIDTH:0] data_dst_end_check;

    always_comb begin
        data_src_end_check = {1'b0, data_src_base_addr} + input_length;
        data_dst_end_check = {1'b0, data_dst_base_addr} + output_length;
    end
`endif

    // output 개수에 필요한 batch 수를 올림 계산한다.
    function automatic logic [8:0] calc_total_batches (
        input logic [7:0] length
    );
        logic [15:0] numerator;
        begin
            if (length == 8'd0) begin
                calc_total_batches = 9'd0;
            end
            else begin
                numerator = length + PE_NUM - 1;
                calc_total_batches = numerator / PE_NUM;
            end
        end
    endfunction

    // 마지막 partial batch를 포함하여 현재 batch의 유효 PE 수를 계산한다.
    function automatic logic [PE_COUNT_WIDTH-1:0] calc_valid_count (
        input logic [7:0] length,
        input logic [8:0] offset
    );
        logic [8:0] remaining;
        begin
            if (offset >= {1'b0, length}) begin
                calc_valid_count = '0;
            end
            else begin
                remaining = {1'b0, length} - offset;

                if (remaining >= PE_NUM) begin
                    calc_valid_count = PE_NUM;
                end
                else begin
                    calc_valid_count = remaining[PE_COUNT_WIDTH-1:0];
                end
            end
        end
    endfunction

    // ACCUMULATE에서 아직 처리하지 않은 input이 있으면 새 주소를 발행한다.
    always_comb begin
        issue_valid = 1'b0;

        if ((state_q == ACCUMULATE) &&
            (issue_idx_q < input_length_q)) begin
            issue_valid = 1'b1;
        end
    end

    // FSM의 다음 상태 결정
    always_comb begin
        state_d = state_q;

        case (state_q)
            IDLE: begin
                if (start) begin
                    // 출력이 0개이면 메모리 접근 없이 완료한다.
                    if (output_length == 8'd0) begin
                        state_d = DONE;
                    end
                    else begin
                        state_d = INIT_BATCH;
                    end
                end
            end

            INIT_BATCH: begin
                state_d = ACCUMULATE;
            end

            ACCUMULATE: begin
                if (input_length_q == 9'd0) begin
                    // input이 없을 때도 bias read가 끝난 뒤 bias-only 결과를 만든다.
                    if (!bias_capture_pending_q) begin
                        state_d = CAPTURE;
                    end
                end
                else if (read_valid_q &&
                         (consume_count_q == (input_length_q - 1'b1))) begin
                    // 마지막 메모리 데이터가 이 클럭에 PE에서 누적된다.
                    state_d = CAPTURE;
                end
            end

            CAPTURE: begin
                // fc_output_reg가 등록된 결과의 유효성을 응답할 때까지 기다린다.
                if (outreg_out_valid) begin
                    if (finish_en_q) begin
                        state_d = DONE;
                    end
                    else begin
                        state_d = WRITE;
                    end
                end
            end

            WRITE: begin
                // 한 클럭에 1byte씩 valid_count만큼 기록한다.
                if (valid_count_q == '0) begin
                    state_d = BATCH_CHECK;
                end
                else if (write_idx_q == (valid_count_q - 1'b1)) begin
                    state_d = BATCH_CHECK;
                end
            end

            BATCH_CHECK: begin
                if ((batch_idx_q + 1'b1) < total_batches_q) begin
                    state_d = INIT_BATCH;
                end
                else begin
                    state_d = DONE;
                end
            end

            DONE: begin
                // done은 DONE 상태의 한 클럭 동안만 assert된다.
                state_d = IDLE;
            end

            default: begin
                state_d = IDLE;
            end
        endcase
    end

    // 외부 인터페이스 및 상태별 제어 신호 생성
    always_comb begin
        done         = 1'b0;
        data_raddr   = '0;
        data_waddr   = '0;
        data_wdata   = '0;
        data_we      = 1'b0;
        weight_raddr = '0;
        bias_raddr   = bias_base_addr_q + batch_offset_q;
        pe_en        = 1'b0;
        pe_acc_clear = 1'b0;
        pe_in_data   = '0;
        outreg_valid = 1'b0;

        // 배열 출력에도 명시적인 기본값을 주어 조합 래치를 방지한다.
        for (comb_idx = 0; comb_idx < PE_NUM; comb_idx = comb_idx + 1) begin
            pe_weight[comb_idx]       = '0;
            outreg_bias_arr[comb_idx] = bias_latched_q[comb_idx];
        end

        case (state_q)
            INIT_BATCH: begin
                // 다음 batch의 누산기를 동시에 초기화하고 bias 주소를 제시한다.
                pe_acc_clear = 1'b1;
                bias_raddr   = bias_base_addr_q + batch_offset_q;
            end

            ACCUMULATE: begin
                bias_raddr   = bias_base_addr_q + batch_offset_q;

                // 유효한 요청이 있을 때만 범위 안의 read 주소를 제시한다.
                if (issue_valid) begin
                    data_raddr   = data_src_base_addr_q + issue_idx_q;
                    weight_raddr = weight_issue_addr_q;
                end

                // read_valid_q는 이전 클럭에 발행한 주소의 데이터가 유효함을 뜻한다.
                pe_en      = read_valid_q;
                pe_in_data = data_rdata;

                for (comb_idx = 0; comb_idx < PE_NUM; comb_idx = comb_idx + 1) begin
                    // 마지막 partial batch의 invalid lane은 ROM padding 값과
                    // 무관하게 0을 곱하도록 차단한다.
                    pe_weight[comb_idx] =
                        (comb_idx < valid_count_q) ? weight_rdata[comb_idx] : '0;
                end
            end

            CAPTURE: begin
                // CAPTURE에 머무는 동안에도 요청은 한 번만 보낸다.
                outreg_valid = !capture_sent_q;
            end

            WRITE: begin
                if ((valid_count_q != '0) && (write_idx_q < valid_count_q)) begin
                    data_we    = 1'b1;
                    data_waddr = data_dst_base_addr_q +
                                 batch_offset_q + write_idx_q;
                    data_wdata = outreg_output_val[write_idx_q];
                end
            end

            DONE: begin
                done = 1'b1;
            end

            default: begin
                // 위에서 지정한 안전한 기본값을 유지한다.
            end
        endcase
    end

    // FSM, 카운터 및 1클럭 메모리 latency 파이프라인
    always_ff @(posedge clk) begin
        // 동기 active-low 리셋
        if (!rst_n) begin
            state_q                  <= IDLE;
            finish_en_q              <= 1'b0;
            input_length_q           <= '0;
            output_length_q          <= '0;
            data_src_base_addr_q      <= '0;
            data_dst_base_addr_q      <= '0;
            weight_base_addr_q       <= '0;
            bias_base_addr_q         <= '0;
            batch_idx_q              <= '0;
            total_batches_q          <= '0;
            batch_offset_q           <= '0;
            valid_count_q            <= '0;
            write_idx_q              <= '0;
            issue_idx_q              <= '0;
            consume_count_q          <= '0;
            read_valid_q             <= 1'b0;
            weight_issue_addr_q      <= '0;
            bias_capture_pending_q   <= 1'b0;
            capture_sent_q           <= 1'b0;

            for (seq_idx = 0; seq_idx < PE_NUM; seq_idx = seq_idx + 1) begin
                bias_latched_q[seq_idx] <= '0;
            end
        end
        else begin
            state_q <= state_d;

            case (state_q)
                IDLE: begin
                    // IDLE에서는 파이프라인의 유효 상태를 제거한다.
                    read_valid_q           <= 1'b0;
                    bias_capture_pending_q <= 1'b0;
                    capture_sent_q         <= 1'b0;

                    if (start) begin
                        finish_en_q        <= finish_en;
                        input_length_q     <= input_length;
                        output_length_q    <= output_length;
                        data_src_base_addr_q <= data_src_base_addr;
                        data_dst_base_addr_q <= data_dst_base_addr;
                        weight_base_addr_q <= weight_base_addr;
                        bias_base_addr_q   <= bias_base_addr;
                        batch_idx_q        <= '0;
                        total_batches_q    <= calc_total_batches(output_length);
                        batch_offset_q     <= '0;
                        valid_count_q      <= '0;
                        write_idx_q        <= '0;
                        issue_idx_q        <= '0;
                        consume_count_q    <= '0;
                    end
                end

                INIT_BATCH: begin
                    // 이 상태의 끝에서 bias_rom이 새 데이터를 출력하기 시작한다.
                    valid_count_q          <= calc_valid_count(
                                                output_length_q,
                                                batch_offset_q
                                              );
                    write_idx_q            <= '0;
                    issue_idx_q            <= '0;
                    consume_count_q        <= '0;
                    read_valid_q           <= 1'b0;
                    weight_issue_addr_q    <= weight_base_addr_q +
                                              batch_offset_q;
                    bias_capture_pending_q <= 1'b1;
                    capture_sent_q         <= 1'b0;

                    for (seq_idx = 0; seq_idx < PE_NUM; seq_idx = seq_idx + 1) begin
                        bias_latched_q[seq_idx] <= '0;
                    end
                end

                ACCUMULATE: begin
                    // 이번 주소 발행 여부를 1클럭 지연하여 PE enable로 사용한다.
                    read_valid_q <= issue_valid;

                    if (issue_valid) begin
                        issue_idx_q         <= issue_idx_q + 1'b1;
                        weight_issue_addr_q <= weight_issue_addr_q +
                                               output_length_q;
                    end

                    if (read_valid_q) begin
                        consume_count_q <= consume_count_q + 1'b1;
                    end

                    // INIT_BATCH에서 제시한 bias 주소의 데이터를 한 번만 저장한다.
                    if (bias_capture_pending_q) begin
                        for (seq_idx = 0; seq_idx < PE_NUM; seq_idx = seq_idx + 1) begin
                            bias_latched_q[seq_idx] <= bias_rdata[seq_idx];
                        end
                        bias_capture_pending_q <= 1'b0;
                    end
                end

                CAPTURE: begin
                    if (!capture_sent_q) begin
                        capture_sent_q <= 1'b1;
                    end
                end

                WRITE: begin
                    if ((valid_count_q != '0) && (write_idx_q < valid_count_q)) begin
                        write_idx_q <= write_idx_q + 1'b1;
                    end
                end

                BATCH_CHECK: begin
                    if ((batch_idx_q + 1'b1) < total_batches_q) begin
                        batch_idx_q    <= batch_idx_q + 1'b1;
                        batch_offset_q <= batch_offset_q + PE_NUM;
                    end
                end

                DONE: begin
                    // 다음 호출을 위해 transient control만 정리한다.
                    read_valid_q           <= 1'b0;
                    bias_capture_pending_q <= 1'b0;
                    capture_sent_q         <= 1'b0;
                end

                default: begin
                    state_q                  <= IDLE;
                    read_valid_q             <= 1'b0;
                    bias_capture_pending_q   <= 1'b0;
                    capture_sent_q           <= 1'b0;
                end
            endcase
        end
    end

    // pe_acc_arr와 outreg_result는 데이터 경로에서 fc_top이 직접 사용한다.
    // 컨트롤러는 두 신호의 값을 변경하지 않고 타이밍만 제어한다.

`ifndef SYNTHESIS
    // 잘못된 상위 설정이 주소 wrap이나 batch 사이 input overwrite를 만들기
    // 전에 simulation에서 즉시 검출한다. 합성 데이터 경로에는 포함되지 않는다.
    always_ff @(posedge clk) begin
        if (rst_n && (state_q != IDLE) && (state_q != DONE)) begin
            assert (finish_en == finish_en_q)
                else $error("FC finish_en changed while an operation was active");
        end

        if (rst_n && (state_q == IDLE) && start) begin
            assert (input_length <= `FC_MAX_INPUT_LEN)
                else $error("FC input_length exceeds FC_MAX_INPUT_LEN");
            assert (output_length <= `FC_MAX_OUTPUT_LEN)
                else $error("FC output_length exceeds FC_MAX_OUTPUT_LEN");
            assert (!finish_en || (output_length == 8'd1))
                else $error("Final FC requires output_length == 1");
            assert (data_src_end_check <= DATA_ADDR_CAPACITY)
                else $error("FC source Data memory range exceeds address space");

            if (!finish_en) begin
                assert (data_dst_end_check <= DATA_ADDR_CAPACITY)
                    else $error("FC destination Data memory range exceeds address space");

                if ((input_length != 9'd0) && (output_length > PE_NUM)) begin
                    assert ((data_src_end_check <= {1'b0, data_dst_base_addr}) ||
                            (data_dst_end_check <= {1'b0, data_src_base_addr}))
                        else $error("FC source/destination ranges overlap across batches");
                end
            end
        end
    end
`endif

endmodule
