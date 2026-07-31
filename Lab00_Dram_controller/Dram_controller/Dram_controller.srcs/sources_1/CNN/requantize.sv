`timescale 1ns / 1ps

module requantize (
    input  logic [2:0]         layer,
    input  logic signed [31:0] acc_in,
    output logic signed [ 7:0] quant_out
);

    logic [3:0] shift_factor;
    logic signed [63:0] acc_ext;
    logic signed [63:0] rounded_acc;
    logic signed [63:0] shifted_acc;
    logic signed [63:0] round_bias;

    always_comb begin
        // Layer encoding from CNN_acc_controller.
        // conv1:1 conv2:2 conv3:3 fc1:4 fc2:5
        case (layer)
            3'd1: shift_factor = 4'd8;
            3'd2: shift_factor = 4'd9;
            3'd3: shift_factor = 4'd9;
            3'd4: shift_factor = 4'd7;
            3'd5: shift_factor = 4'd7;
            default: shift_factor = 4'd8;
        endcase

        acc_ext = acc_in;

        if (shift_factor == 0) begin
            rounded_acc = acc_ext;
        end else begin
            round_bias = 64'sd1 <<< (shift_factor - 1);

            if (acc_ext >= 0)
                rounded_acc = acc_ext + round_bias;
            else
                rounded_acc = acc_ext - round_bias;
        end

        shifted_acc = rounded_acc >>> shift_factor;

        if (shifted_acc > 64'sd127)
            quant_out = 8'sd127;
        else if (shifted_acc < -64'sd128)
            quant_out = -8'sd128;
        else
            quant_out = shifted_acc[7:0];
    end

endmodule