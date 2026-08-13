`timescale 1ns / 1ps

// Sequential multiplier-free requantization.
// Layer 0 bypasses the accumulator conversion; other layers use acc >>> 20.
module requantize_no_mult #(
    parameter int SHIFT_VAL = 20
) (
    input  logic               clk,
    input  logic               rst_n,
    input  logic               in_valid,
    input  logic        [ 2:0] layer,
    input  logic signed [31:0] acc_in,
    output logic               out_valid,
    output logic signed [ 7:0] quant_out
);

    always_ff @(posedge clk) begin
        if (!rst_n) begin
            quant_out     <= '0;
            out_valid     <= 1'b0;
        end else begin
            out_valid <= in_valid;
            if (in_valid) begin
                if (layer == 3'd0) begin
                    quant_out <= $signed(acc_in[7:0]);
                end else if (($signed(acc_in) >>> SHIFT_VAL) > 64'sd127) begin
                    quant_out <= 8'sd127;
                end else if (($signed(acc_in) >>> SHIFT_VAL) < -64'sd128) begin
                    quant_out <= -8'sd128;
                end else begin
                    quant_out <= ($signed(acc_in) >>> SHIFT_VAL);
                end
            end
        end
    end

endmodule
