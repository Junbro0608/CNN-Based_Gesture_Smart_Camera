`timescale 1ns / 1ps

module CH #(
    // OUTPUT_SHIFT=8  : full_result[15:8]에 해당
    // OUTPUT_SHIFT=24 : full_result[31:24]에 해당
    parameter integer OUTPUT_SHIFT = 8
) (
    input logic clk,
    input logic rst_n,

    // Conv_ctrl → CH
    input logic ch_enable,  // 현재 CH 활성화 
    input logic acc_clear,  // 기존 누적 결과 초기화 
    input logic first_ic,  // 현재 입력이 첫번째 입력널채널인지 
    input logic last_ic,   // 현재 입력이 마지막 입력 채널인지 여부

    // Shift Buffer → CH
    input  logic              pixel_valid,
    output logic              pixel_ready,
    input  logic        [1:0] window_index,
    input  logic signed [7:0] pixel_in    [0:8],

    // Weight Buffer → CH
    input logic               weight_valid,
    input logic signed [ 7:0] weight_in   [0:8],
    input logic signed [31:0] bias_in,

    // CH → ReLU
    output logic signed [7:0] result_out,

    // CH → MaxPool
    output logic result_valid,
    input  logic result_ready
);

    // --------------------------------------------------------
    // 내부 신호
    // --------------------------------------------------------

    // signed 8-bit Pixel을 signed 9-bit로 부호 확장한 값
    logic signed [8:0] pixel_signed[0:8];

    // signed 8-bit Weight를 signed 9-bit로 부호 확장한 값
    logic signed [8:0] weight_signed[0:8];

    // Pixel × Weight 결과
    // signed 9-bit × signed 9-bit = signed 18-bit
    logic signed [17:0] product[0:8];

    // 현재 입력 채널 하나의 3×3 합산 결과
    logic signed [31:0] conv_sum;

    // Four independent spatial accumulators for the four convolution windows
    // that form one 2x2 max-pooling region.
    logic signed [31:0] accumulator[0:3]; // 하나의 2x2 영역에 포함되는 4개 Convolution 위치의미 

    /*
    | `window_index` | 사용 레지스터 |
    |---:|---|
    | `00` | `accumulator[0]` |
    | `01` | `accumulator[1]` |
    | `10` | `accumulator[2]` |
    | `11` | `accumulator[3]` |
    */
    

    // 모든 입력 채널 누적과 Bias 덧셈이 끝난 결과
    // 시뮬레이션과 디버깅을 위해 저장
    logic signed [31:0] full_result;

    // Pixel, Weight, CH enable이 모두 유효할 때 1
    logic input_fire;

    integer i;
    integer spatial;

    // --------------------------------------------------------
    // 입력 유효 조건
    // --------------------------------------------------------

    // Disabled channels do not block the shared Shift Buffer. On the final
    // input channel, the one-entry result register must be available before
    // another convolution window can be accepted.
    assign pixel_ready =
        !ch_enable
        || (weight_valid
            && (!last_ic || !result_valid || result_ready));

    assign input_fire = ch_enable && pixel_valid && pixel_ready; // CH가 입력을 실제로 처리하는 조건 

    /*
    ch_enable   = 1
    pixel_valid = 1
    weight_valid= 1
    pixel_ready = 1 
    => 이 조건이 만족되는 Clock Edge에서만 누적 레지스터가 변경된다 
    */

    // --------------------------------------------------------
    // Pixel/Weight 확장, 곱셈 9개 및 3×3 합산
    // --------------------------------------------------------

    always_comb begin
        // 조합논리 기본값
        conv_sum = 32'sd0;

        for (i = 0; i < 9; i = i + 1) begin
            // signed 8-bit Pixel의 부호 Bit를 복사하여
            // signed 9-bit로 부호 확장
            pixel_signed[i] = $signed({pixel_in[i][7], pixel_in[i]});

            // signed 8-bit Weight의 부호 Bit를 복사하여
            // signed 9-bit로 부호 확장
            weight_signed[i] = $signed({weight_in[i][7], weight_in[i]});

            // signed 9-bit × signed 9-bit
            // 결과는 signed 18-bit
            product[i] = pixel_signed[i] * weight_signed[i];

            // signed 18-bit Product를 signed 32-bit로
            // 부호 확장한 뒤 conv_sum에 누적
            conv_sum = conv_sum + $signed({{14{product[i][17]}}, product[i]});
        end
    end

    // --------------------------------------------------------
    // 입력 채널 누적, Bias 추가 및 8-bit 출력 생성
    // --------------------------------------------------------

    // --------------------------------------------------------
    // result_out   유지
    // result_valid 유지

    // CH_Result_Buffer가 받을 준비가 되면 result_ready=1을 보냅니다.
    // --------------------------------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // 비동기 Active-Low Reset
            full_result  <= 32'sd0;
            result_out   <= 8'sd0;
            result_valid <= 1'b0;

            for (spatial = 0; spatial < 4; spatial = spatial + 1)
            accumulator[spatial] <= 32'sd0;

        end else begin
            if (acc_clear) begin
                // Layer 시작 또는 강제 초기화
                //
                // acc_clear와 input_fire가 동시에 1이면
                // acc_clear가 우선하므로 입력 계산은 수행하지 않음
                full_result  <= 32'sd0;
                result_out   <= 8'sd0;
                result_valid <= 1'b0;

                for (spatial = 0; spatial < 4; spatial = spatial + 1)
                accumulator[spatial] <= 32'sd0;

            end else begin
                // Hold result_out/result_valid while the downstream MaxPool
                // applies backpressure.
                if (result_valid && result_ready) result_valid <= 1'b0;

                if (input_fire) begin

                    // ------------------------------------------------
                    // 입력 채널이 하나인 경우
                    //
                    // 예: 1 → 32 Layer
                    //
                    // first_ic=1
                    // last_ic=1
                    // ------------------------------------------------
                    if (first_ic && last_ic) begin
                        // 현재 채널의 3×3 결과에 Bias를 더함
                        full_result <= conv_sum + bias_in;

                        // 32-bit 결과를 OUTPUT_SHIFT만큼
                        // 산술 오른쪽 Shift한 후 8-bit 출력에 저장
                        result_out <= (conv_sum + bias_in) >>> OUTPUT_SHIFT;

                        // 최종 출력이 완성됨
                        result_valid <= 1'b1;

                        // 다음 계산을 위해 누적값 초기화
                        accumulator[window_index] <= 32'sd0;

                        // ------------------------------------------------
                        // 여러 입력 채널 중 첫 번째 채널
                        //
                        // first_ic=1
                        // last_ic=0
                        // ------------------------------------------------
                    end else if (first_ic) begin
                        // 이전 누적값을 사용하지 않고
                        // 현재 conv_sum으로 새 누적 시작
                        accumulator[window_index] <= conv_sum;

                        // ------------------------------------------------
                        // 여러 입력 채널 중 마지막 채널
                        //
                        // first_ic=0
                        // last_ic=1
                        // ------------------------------------------------
                    end else if (last_ic) begin
                        // 기존 누적값, 현재 conv_sum, Bias를 모두 더함
                        full_result <=
                        accumulator[window_index]
                        + conv_sum
                        + bias_in;

                        // 최종 32-bit 결과를 OUTPUT_SHIFT만큼
                        // 산술 오른쪽 Shift하여 8-bit로 출력
                        result_out <=
                        (
                            accumulator[window_index]
                            + conv_sum
                            + bias_in
                        ) >>> OUTPUT_SHIFT;

                        // 최종 출력이 완성됨
                        result_valid <= 1'b1;

                        // 다음 계산을 위해 누적값 초기화
                        accumulator[window_index] <= 32'sd0;

                        // ------------------------------------------------
                        // 여러 입력 채널 중 중간 채널
                        //
                        // first_ic=0
                        // last_ic=0
                        // ------------------------------------------------
                    end else begin
                        // 기존 누적값에 현재 채널의 3×3 결과 추가
                        accumulator[window_index] <=
                        accumulator[window_index] + conv_sum;
                    end
                end
            end
        end
    end

endmodule
