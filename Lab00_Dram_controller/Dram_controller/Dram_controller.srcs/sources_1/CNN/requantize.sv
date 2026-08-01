`timescale 1ns / 1ps

module requantize #(
    parameter [4:0] SHIFT_VAL_L1 = 5'd20,
    parameter [4:0] SHIFT_VAL_L2 = 5'd20,
    parameter [4:0] SHIFT_VAL_L3 = 5'd20,
    parameter [4:0] SHIFT_VAL_L4 = 5'd20,
    parameter [4:0] SHIFT_VAL_L5 = 5'd20,
    parameter signed [31:0] MULT_FACTOR_L1 = 32'sd2734,
    parameter signed [31:0] MULT_FACTOR_L2 = 32'sd2845,
    parameter signed [31:0] MULT_FACTOR_L3 = 32'sd3104,
    parameter signed [31:0] MULT_FACTOR_L4 = 32'sd4128,
    parameter signed [31:0] MULT_FACTOR_L5 = 32'sd8257,
    parameter signed [7:0] ZERO_POINT_L1 = 8'sd0,
    parameter signed [7:0] ZERO_POINT_L2 = 8'sd0,
    parameter signed [7:0] ZERO_POINT_L3 = 8'sd0,
    parameter signed [7:0] ZERO_POINT_L4 = 8'sd0,
    parameter signed [7:0] ZERO_POINT_L5 = 8'sd0
) (
    input  logic [2:0]         layer,
    input  logic signed [31:0] acc_in,
    output logic signed [ 7:0] quant_out
);

    logic [4:0] shift_val;
    logic signed [31:0] mult_factor;
    logic signed [ 7:0] zero_point;
    logic signed [63:0] scaled_acc;
    logic signed [63:0] rounded_acc;
    logic signed [63:0] shifted_acc;
    logic signed [63:0] round_bias;
    logic signed [63:0] quantized_acc;
    logic bypass_requantize;

    always_comb begin
        // Layer encoding from CNN_acc_controller.
        // pool4/pool5:0, conv1:1, conv2:2, conv3:3, fc1:4, fc2:5
        // XLSX exports use the form:
        //   quantized = (acc * MULT_FACTOR) >> SHIFT_VAL + ZERO_POINT
        // so the HDL parameters are set to match that convention.
        bypass_requantize = 1'b0;
        case (layer)
            3'd0: begin
                // Pool4/Pool5 receive and produce int8 feature data.
                // No accumulator-domain scaling is required.
                shift_val = 5'd0;
                mult_factor = 32'sd1;
                zero_point = 8'sd0;
                bypass_requantize = 1'b1;
            end
            3'd1: begin
                shift_val = SHIFT_VAL_L1;
                mult_factor  = MULT_FACTOR_L1;
                zero_point   = ZERO_POINT_L1;
            end
            3'd2: begin
                shift_val = SHIFT_VAL_L2;
                mult_factor  = MULT_FACTOR_L2;
                zero_point   = ZERO_POINT_L2;
            end
            3'd3: begin
                shift_val = SHIFT_VAL_L3;
                mult_factor  = MULT_FACTOR_L3;
                zero_point   = ZERO_POINT_L3;
            end
            3'd4: begin
                shift_val = SHIFT_VAL_L4;
                mult_factor  = MULT_FACTOR_L4;
                zero_point   = ZERO_POINT_L4;
            end
            3'd5: begin
                shift_val = SHIFT_VAL_L5;
                mult_factor  = MULT_FACTOR_L5;
                zero_point   = ZERO_POINT_L5;
            end
            default: begin
                shift_val = SHIFT_VAL_L1;
                mult_factor  = MULT_FACTOR_L1;
                zero_point   = ZERO_POINT_L1;
            end
        endcase

        scaled_acc = $signed(acc_in) * mult_factor;

        if (shift_val == 0) begin
            rounded_acc = scaled_acc;
        end else begin
            round_bias = 64'sd1 <<< (shift_val - 1);

            if (scaled_acc >= 0)
                rounded_acc = scaled_acc + round_bias;
            else
                rounded_acc = scaled_acc - round_bias;
        end

        shifted_acc = rounded_acc >>> shift_val;
        quantized_acc = shifted_acc + zero_point;

        if (bypass_requantize)
            quant_out = acc_in[7:0];
        else if (quantized_acc > 64'sd127)
            quant_out = 8'sd127;
        else if (quantized_acc < -64'sd128)
            quant_out = -8'sd128;
        else
            quant_out = quantized_acc[7:0];
    end

endmodule