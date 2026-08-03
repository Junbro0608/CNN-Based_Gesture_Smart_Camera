`timescale 1ns / 1ps

module gray_128x128 #(
    parameter GW = 128,
    parameter GH = 128
) (
    input wire aclk,
    input wire aresetn,

    input  wire [7:0] cap_tdata,
    input  wire       cap_tvalid,
    output wire       cap_tready,
    input  wire       cap_tlast,
    input  wire       cap_tuser,

    input  wire [23:0] s_axis_tdata,
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,
    input  wire        s_axis_tlast,
    input  wire        s_axis_tuser,

    output wire [23:0] m_axis_tdata,
    output wire        m_axis_tvalid,
    input  wire        m_axis_tready,
    output wire        m_axis_tlast,
    output wire        m_axis_tuser
);

    localparam integer SIZE = GW * GH;
    (* ram_style = "block" *)
    reg [7:0] mem[0:SIZE-1];
    reg [13:0] wr_addr;

    assign cap_tready = 1'b1;

    wire [13:0] wr_addr_now = cap_tuser ? 14'd0 : wr_addr;

    always @(posedge aclk) begin
        if (cap_tvalid) mem[wr_addr_now] <= cap_tdata;
    end

    always @(posedge aclk) begin
        if (!aresetn) wr_addr <= 14'd0;
        else if (cap_tvalid)
            wr_addr <= (wr_addr_now == (SIZE - 1)) ? 14'd0 : (wr_addr_now + 1'b1);
    end

    reg [11:0] sx_q, sy_q;

    wire beat = s_axis_tvalid && m_axis_tready;

    wire [11:0] sx = s_axis_tuser ? 12'd0 : sx_q;
    wire [11:0] sy = s_axis_tuser ? 12'd0 : sy_q;

    always @(posedge aclk) begin
        if (!aresetn) begin
            sx_q <= 12'd0;
            sy_q <= 12'd0;
        end else if (beat) begin
            if (s_axis_tlast) begin
                sx_q <= 12'd0;
                sy_q <= sy + 12'd1;
            end else begin
                sx_q <= sx + 12'd1;
                sy_q <= sy;
            end
        end
    end

    wire in_win = (sx < GW) && (sy < GH);
    wire [13:0] rd_addr = {sy[6:0], sx[6:0]};
    reg [13:0] rd_addr_q;
    reg [7:0] gray_q, gray_qq;

    reg vld_d1, vld_d2;
    reg lst_d1, lst_d2;
    reg usr_d1, usr_d2;
    reg win_d1, win_d2;

    always @(posedge aclk) begin
        if (!aresetn) begin
            vld_d1 <= 1'b0;
            vld_d2 <= 1'b0;
        end else if (m_axis_tready) begin
            // stage 1
            rd_addr_q <= rd_addr;
            vld_d1    <= s_axis_tvalid;
            lst_d1    <= s_axis_tlast;
            usr_d1    <= s_axis_tuser;
            win_d1    <= in_win;

            // stage 2
            gray_q  <= mem[rd_addr_q];
            gray_qq <= gray_q;
            vld_d2  <= vld_d1;
            lst_d2  <= lst_d1;
            usr_d2  <= usr_d1;
            win_d2  <= win_d1;
        end
    end

    assign m_axis_tdata  = win_d2 ? {gray_qq, gray_qq, gray_qq} : 24'd0;
    assign m_axis_tvalid = vld_d2;
    assign m_axis_tlast  = lst_d2;
    assign m_axis_tuser  = usr_d2;
    assign s_axis_tready = m_axis_tready;

endmodule
