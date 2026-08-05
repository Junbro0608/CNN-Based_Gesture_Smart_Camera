`timescale 1ns / 1ps

module jetson_controller (
    input  wire clk,
    input  wire resetn,
    input  wire done,
    input  wire result,
    // gpio
    input  wire gpio_i,
    output reg  gpio_o
);

    localparam [1:0] IDLE = 2'b00, TRIG = 2'b01, RUN = 2'b10, DONE = 2'b11;

    reg [1:0] current_state, next_state;

    reg  [2:0] gpio_i_sync;
    wire       gpio_i_signal;

    reg        cnt;
    reg        start;

    always @(posedge clk) begin
        if (!resetn) begin
            cnt   <= 0;
            start <= 0;
        end else begin
            if (done) begin
                if (result) begin
                    if (cnt == 5) begin
                        cnt   <= 0;
                        start <= 1;
                    end else begin
                        cnt = cnt + 1;
                    end
                end else begin
                    cnt <= 0;
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
                if (gpio_i_signal) begin
                    next_state = DONE;
                end
            end
            DONE: begin
                if (!sw) begin
                    next_state = IDLE;
                end
            end
        endcase
    end

endmodule
