module pingpongBuffer #(
    parameter ADDR_WIDTH = 128 * 128,
    parameter DATA_WIDTH = 12
) (
    //buffer ctrl
    input logic w_sel,
    //write
    input logic wclk,
    input logic we,
    input logic [$clog2(ADDR_WIDTH)-1:0] wAddr,
    input logic [DATA_WIDTH-1:0] wData,
    //read
    input logic rclk,
    input logic [$clog2(ADDR_WIDTH)-1:0] rAddr,
    output logic [DATA_WIDTH-1:0] rData
);

    logic                  r_sel;
    logic                  we_A;
    logic                  we_B;
    logic [DATA_WIDTH-1:0] rData_A;
    logic [DATA_WIDTH-1:0] rData_B;

    assign r_sel = ~w_sel;

    assign we_A  = (~w_sel && we);
    assign we_B  = (w_sel && we);

    assign rData = (r_sel) ? rData_B : rData_A;

    frameBuffer #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH)
    ) U_frameBuffer_A (
        // write side
        .wclk (wclk),
        .we   (we_A),
        .wAddr(wAddr),
        .wData(wData),
        // read side
        .rclk (rclk),
        .rAddr(rAddr),
        .rData(rData_A)
    );

    frameBuffer #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH)
    ) U_frameBuffer_B (
        // write side
        .wclk (wclk),
        .we   (we_B),
        .wAddr(wAddr),
        .wData(wData),
        // read side
        .rclk (rclk),
        .rAddr(rAddr),
        .rData(rData_B)
    );


endmodule

module frameBuffer #(
    parameter ADDR_WIDTH = 128 * 128,
    parameter DATA_WIDTH = 12
) (
    // write side
    input  logic                          wclk,
    input  logic                          we,
    input  logic [$clog2(ADDR_WIDTH)-1:0] wAddr,
    input  logic [        DATA_WIDTH-1:0] wData,
    // read side
    input  logic                          rclk,
    input  logic [$clog2(ADDR_WIDTH)-1:0] rAddr,
    output logic [        DATA_WIDTH-1:0] rData
);

    logic [DATA_WIDTH-1:0] mem[0:(ADDR_WIDTH)-1];

    //write
    always_ff @(posedge wclk) begin
        if (we) begin
            mem[wAddr] <= wData;
        end
    end
    //read
    assign rData = mem[rAddr];
endmodule
