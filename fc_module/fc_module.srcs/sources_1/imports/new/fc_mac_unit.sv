`timescale 1ns / 1ps

// CNN Fully-Connected 레이어용 output-stationary 단일 MAC Processing Element
(* use_dsp = "yes" *)
module fc_mac_unit #(
    parameter int DATA_WIDTH   = 8,
    parameter int WEIGHT_WIDTH = 8,
    parameter int ACC_WIDTH    = 23
) (
    input  logic                         clk,
    input  logic                         rst_n,
    input  logic                         en,
    input  logic                         acc_clear,
    input  logic        [DATA_WIDTH-1:0] in_data,
    input  logic signed [WEIGHT_WIDTH-1:0] weight,
    output logic signed [ACC_WIDTH-1:0]  acc_out
);

    // in_data의 unsigned 값을 signed로 안전하게 표현하기 위해 0-확장한 폭이다.
    // 따라서 8'h80~8'hFF도 음수가 아니라 128~255로 곱셈된다.
    localparam int PRODUCT_WIDTH = DATA_WIDTH + WEIGHT_WIDTH + 1;

    // DSP48E1의 곱셈-누산기, 동기 clear 및 clock-enable을 추론하는 단일 순차 블록
    always_ff @(posedge clk) begin
        // 동기 active-low 리셋: DSP48E1의 synchronous clear로 매핑 가능
        if (!rst_n) begin
            acc_out <= '0;
        end
        // 새 output 계산 시작 시 누산값 제거
        else if (acc_clear) begin
            acc_out <= '0;
        end
        // 같은 클럭 엣지에서 signed multiply와 accumulate를 수행하는 MACC 패턴
        else if (en) begin
            acc_out <= acc_out +
                       ($signed({{(PRODUCT_WIDTH - DATA_WIDTH){1'b0}}, in_data}) *
                        $signed({{(PRODUCT_WIDTH - WEIGHT_WIDTH){weight[WEIGHT_WIDTH-1]}}, weight}));
        end
        // en=0이면 이전 누산값 유지: DSP48E1 clock-enable 동작에 해당
        else begin
            acc_out <= acc_out;
        end
    end

endmodule
