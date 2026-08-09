`timescale 1ns / 1ps

module jetson_controller (
    input  wire clk,
    input  wire resetn,
    input  wire result,
    input  wire done,
    // gpio
    input  wire gpio_i,
    output reg  gpio_o,
    output reg  cnn_enable
);

    localparam [1:0] IDLE = 2'b00, TRIG = 2'b01, RUN = 2'b10, DONE = 2'b11;

    reg [1:0] current_state, next_state;

    reg  [2:0] gpio_i_sync;
    wire       gpio_i_signal;

    reg  [3:0] count;
    reg        start;

    always @(posedge clk) begin
        if (!resetn) begin
            count <= 3'd0;
            start <= 1'b0;
        end else begin
            if (current_state == TRIG) start <= 1'b0;
            if (done) begin
                if (result) begin
                    if (count == 4'd9) begin
                        start <= 1'b1;
                        count <= 4'd0;
                    end else begin
                        count <= count + 4'd1;
                    end
                end else begin
                    count <= 4'd0;
                end
            end
        end
    end

    always @(posedge clk) begin
        if (!resetn) begin
            gpio_i_sync <= 3'b0;
        end else begin
            gpio_i_sync[0] <= gpio_i;
            gpio_i_sync[1] <= gpio_i_sync[0];
            gpio_i_sync[2] <= gpio_i_sync[1];
        end
    end

    assign gpio_i_signal = gpio_i_sync[2] & ~gpio_i_sync[1];

    always @(posedge clk) begin
        if (!resetn) begin
            current_state <= IDLE;
        end else begin
            current_state <= next_state;
        end
    end

    always @(*) begin
        next_state = current_state;
        gpio_o     = 1'b0;
        cnn_enable = 1'b1;
        case (current_state)
            IDLE: begin
                if (start) begin
                    next_state = TRIG;
                end
            end
            TRIG: begin
                gpio_o = 1'b1;
                if (gpio_i_sync[2]) begin
                    next_state = RUN;
                end
            end
            RUN: begin
                cnn_enable = 1'b0;
                if (gpio_i_signal) begin
                    next_state = DONE;
                end
            end
            DONE: begin
                next_state = IDLE;
            end
        endcase
    end

endmodule
