module uart_sender (
    input        sysclk,
    input        rst_n,
    input        start,
    input        person,
    input  [7:0] acc,
    output       uart_tx
);

    parameter [1:0] IDLE = 0, PUSH1 = 1, PUSH2 = 2;
    reg [1:0] state, next_state;

    reg [7:0] tx_data;
    reg start_tx;

    wire tx_busy, tx_done;

    always @(posedge sysclk) begin
        if (!rst_n) begin
            state <= IDLE;
        end else begin
            state <= next_state;
        end
    end

    always @(*) begin
        next_state = state;
        start_tx = 0;
        tx_data = 0;
        case (state)
            IDLE: begin
                if (start) begin
                    next_state = PUSH1;
                    start_tx = 1;
                    tx_data = {7'h5A, person};
                end
            end
            // 헤더(0x5A) + person 
            PUSH1: begin
                if (tx_done) begin
                    next_state = PUSH2;
                    start_tx   = 1;
                    tx_data    = acc;
                end
            end
            // acc
            PUSH2: begin
                if (tx_done) begin
                    next_state = IDLE;
                end
            end
        endcase
    end



    uart_top U_UART (
        .clk(sysclk),
        .rst(~rst_n),
        .uart_rx(),
        .uart_tx(uart_tx),
        .start_tx(start_tx),
        .tx_data(tx_data),
        .tx_busy(tx_busy),
        .tx_done(tx_done)
    );

endmodule
