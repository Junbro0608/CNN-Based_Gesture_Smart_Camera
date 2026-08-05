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

    input  wire              busy,
    output reg               start,
    input  wire       [13:0] cnn_rd_addr,
    output reg signed [ 7:0] cnn_rd_data,

    output reg frame_dropped,

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

    localparam integer SIZE = GW * GH;  // 16384

    reg [ 7:0] mem       [0:SIZE-1];
    reg [13:0] wr_addr;
    reg        capturing;

    assign cap_tready = 1'b1;

    wire        sof = cap_tvalid && cap_tuser;
    wire        wr_en = (sof && !busy) || (capturing && cap_tvalid);
    wire [13:0] wr_addr_w = sof ? 14'd0 : wr_addr;  // sof 픽셀은 0번지

    always @(posedge aclk) begin
        if (wr_en) mem[wr_addr_w] <= cap_tdata;
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            wr_addr       <= 14'd0;
            capturing     <= 1'b0;
            frame_dropped <= 1'b0;
        end else begin
            frame_dropped <= 1'b0;

            if (sof) begin
                if (!busy) begin
                    capturing <= 1'b1;
                    wr_addr   <= 14'd1;
                end else begin
                    capturing     <= 1'b0;
                    frame_dropped <= 1'b1;
                end
            end else if (capturing && cap_tvalid) begin
                if (wr_addr == (SIZE - 1)) capturing <= 1'b0;
                else wr_addr <= wr_addr + 1'b1;
            end
        end
    end

    wire last_pix = capturing && cap_tvalid && !sof && (wr_addr == (SIZE - 1));
    reg  last_pix_reg;

    always @(posedge aclk) begin
        if (!aresetn) last_pix_reg <= 1'b0;
        else if (start) last_pix_reg <= 1'b0;
        else if (last_pix) last_pix_reg <= 1'b1;
    end

    always @(posedge aclk) begin
        if (!aresetn) start <= 1'b0;
        else if (busy) start <= 1'b0;
        else if (last_pix_reg) start <= 1'b1;
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
    wire [13:0] disp_addr = {sy[6:0], sx[6:0]};
    wire [13:0] port_addr = busy ? cnn_rd_addr : disp_addr;

    reg [13:0] port_addr_q;
    reg [7:0] port_data_q;
    reg [7:0] port_data_qq;

    always @(posedge aclk) begin
        port_data_q  <= mem[port_addr];
        port_data_qq <= port_data_q;
    end

    assign cnn_rd_data = port_data_q - 128;


    reg vld_d1, vld_d2;
    reg lst_d1, lst_d2;
    reg usr_d1, usr_d2;
    reg win_d1, win_d2;

    always @(posedge aclk) begin
        if (!aresetn) begin
            vld_d1 <= 1'b0;
            vld_d2 <= 1'b0;
        end else if (m_axis_tready) begin
            vld_d1 <= s_axis_tvalid;
            lst_d1 <= s_axis_tlast;
            usr_d1 <= s_axis_tuser;
            win_d1 <= in_win;

            vld_d2 <= vld_d1;
            lst_d2 <= lst_d1;
            usr_d2 <= usr_d1;
            win_d2 <= win_d1;
        end
    end

    assign m_axis_tdata  = win_d2 ? {port_data_qq, port_data_qq, port_data_qq} : 24'd0;
    assign m_axis_tvalid = vld_d2;
    assign m_axis_tlast = lst_d2;
    assign m_axis_tuser = usr_d2;
    assign s_axis_tready = m_axis_tready;

endmodule


// `timescale 1ns / 1ps

// module gray_128x128 #(
//     parameter GW = 128,
//     parameter GH = 128
// ) (
//     input wire aclk,
//     input wire aresetn,

//     input  wire [7:0] cap_tdata,
//     input  wire       cap_tvalid,
//     output wire       cap_tready,
//     input  wire       cap_tlast,
//     input  wire       cap_tuser,

//     input  wire              busy,
//     output reg               start,
//     input  wire       [13:0] cnn_rd_addr,
//     output reg signed [ 7:0] cnn_rd_data,

//     output reg frame_dropped,

//     input  wire [23:0] s_axis_tdata,
//     input  wire        s_axis_tvalid,
//     output wire        s_axis_tready,
//     input  wire        s_axis_tlast,
//     input  wire        s_axis_tuser,

//     output wire [23:0] m_axis_tdata,
//     output wire        m_axis_tvalid,
//     input  wire        m_axis_tready,
//     output wire        m_axis_tlast,
//     output wire        m_axis_tuser
// );

//     localparam integer SIZE = GW * GH;  // 16384

//     (* ram_style = "block" *)
//     reg [                   7:0] mem       [0:SIZE-1];
//     reg [                  13:0] wr_addr;
//     reg                          capturing;
//     reg [$clog2(60000000)-1 : 0] count_1;

//     assign cap_tready = 1'b1;

//     wire sof = cap_tvalid && cap_tuser;
//     wire last_pix = capturing && cap_tvalid && (wr_addr == (SIZE - 1));
//     reg  last_pix_reg;

//     always @(posedge aclk) begin
//         if (!aresetn) begin
//             last_pix_reg <= 1'b0;
//         end else begin
//             if (last_pix) begin
//                 last_pix_reg <= 1'b1;
//                 if (start) begin
//                     last_pix_reg <= 1'b0;
//                 end
//             end
//         end
//     end

//     always @(posedge aclk) begin
//         if (!aresetn) begin
//             count_1 <= 0;
//         end else begin
//             if (count_1 == 60_000_000) begin
//                 count_1 <= 0;
//             end else begin
//                 count_1 <= count_1 + 1;
//             end
//         end
//     end

//     always @(posedge aclk) begin
//         if (!aresetn) begin
//             wr_addr       <= 14'd0;
//             capturing     <= 1'b0;
//             frame_dropped <= 1'b0;
//         end else begin
//             frame_dropped <= 1'b0;

//             if (sof) begin
//                 wr_addr <= 14'd0;
//                 if (!busy) begin
//                     capturing <= 1'b1;
//                 end else begin
//                     capturing     <= 1'b0;
//                     frame_dropped <= 1'b1;
//                 end
//             end else if (capturing && cap_tvalid) begin
//                 if (wr_addr == (SIZE - 1)) capturing <= 1'b0;
//                 else wr_addr <= wr_addr + 1'b1;
//             end
//         end
//     end

//     wire wr_en = capturing && cap_tvalid;

//     always @(posedge aclk) begin
//         if (wr_en) mem[wr_addr] <= cap_tdata;
//     end

//     always @(posedge aclk) begin
//         if (!aresetn) start <= 1'b0;
//         else if (busy) start <= 1'b0;
//         else if (last_pix_reg) begin
//             if (count_1) begin
//                 start <= 1'b1;
//             end
//         end
//     end

//     reg [11:0] sx_q, sy_q;
//     wire beat = s_axis_tvalid && m_axis_tready;

//     wire [11:0] sx = s_axis_tuser ? 12'd0 : sx_q;
//     wire [11:0] sy = s_axis_tuser ? 12'd0 : sy_q;

//     always @(posedge aclk) begin
//         if (!aresetn) begin
//             sx_q <= 12'd0;
//             sy_q <= 12'd0;
//         end else if (beat) begin
//             if (s_axis_tlast) begin
//                 sx_q <= 12'd0;
//                 sy_q <= sy + 12'd1;
//             end else begin
//                 sx_q <= sx + 12'd1;
//                 sy_q <= sy;
//             end
//         end
//     end

//     wire in_win = (sx < GW) && (sy < GH);
//     wire [13:0] disp_addr = {sy[6:0], sx[6:0]};
//     wire [13:0] port_addr = busy ? cnn_rd_addr : disp_addr;

//     reg [13:0] port_addr_q;
//     reg [7:0] port_data_q;
//     reg [7:0] port_data_qq;

//     always @(posedge aclk) begin
//         port_addr_q  <= port_addr;
//         port_data_q  <= mem[port_addr_q];
//         port_data_qq <= port_data_q;
//     end

//     always @(posedge aclk) begin
//         cnn_rd_data <= port_data_q - 128;
//     end

//     reg vld_d1, vld_d2;
//     reg lst_d1, lst_d2;
//     reg usr_d1, usr_d2;
//     reg win_d1, win_d2;

//     always @(posedge aclk) begin
//         if (!aresetn) begin
//             vld_d1 <= 1'b0;
//             vld_d2 <= 1'b0;
//         end else if (m_axis_tready) begin
//             vld_d1 <= s_axis_tvalid;
//             lst_d1 <= s_axis_tlast;
//             usr_d1 <= s_axis_tuser;
//             win_d1 <= in_win;

//             vld_d2 <= vld_d1;
//             lst_d2 <= lst_d1;
//             usr_d2 <= usr_d1;
//             win_d2 <= win_d1;
//         end
//     end

//     assign m_axis_tdata  = win_d2 ? {port_data_qq, port_data_qq, port_data_qq} : 24'd0;
//     assign m_axis_tvalid = vld_d2;
//     assign m_axis_tlast = lst_d2;
//     assign m_axis_tuser = usr_d2;
//     assign s_axis_tready = m_axis_tready;

// endmodule
