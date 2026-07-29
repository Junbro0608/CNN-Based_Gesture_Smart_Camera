module padding #(
    parameter DATA_ADDR_WIDTH = 64 * 64 * 16,
    parameter DATA_DATA_WIDTH = 8,
    parameter IMG_ADDR_WIDH   = 128,
    parameter IMG_DATA_WIDH   = DATA_DATA_WIDTH
) (
    input logic [$clog2(DATA_ADDR_WIDTH)-1:0] padding_size,  // 패딩 전 사이즈: 128/64/32
    input logic img_MUX_sel,
    input logic padding_en,
    //conv io
    input logic [$clog2((128+2)*(128+2))-1:0] conv_raddr,  // conv read addr
    output logic signed [DATA_DATA_WIDTH-1:0] conv_rdata,  // conv read data
    //data_mem
    output logic [$clog2(DATA_ADDR_WIDTH)-1:0] data_raddr,
    input logic signed [DATA_DATA_WIDTH-1:0] data_rdata,
    //img_mem
    output logic [$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0] img_raddr,
    input logic signed [IMG_DATA_WIDH-1:0] img_rdata
);

    logic [7:0] row;
    logic [7:0] col;
    logic [$clog2(DATA_ADDR_WIDTH)-1:0] src_addr;
    logic [7:0] size_n;
    logic [7:0] pad_w;
    logic [$clog2((128+2)*(128+2))-1:0] tmp_addr;
    logic [7:0] cnt;
    logic inside_valid;

    always_comb begin
        data_raddr   = '0;
        img_raddr    = '0;
        conv_rdata   = '0;
        row          = 0;
        col          = 0;
        src_addr     = 0;
        size_n       = 128;
        pad_w        = 130;
        tmp_addr     = 0;
        cnt          = 0;
        inside_valid = 1'b0;

        case (padding_size)
            128: begin
                size_n = 128;
                pad_w  = 130;
            end
            64: begin
                size_n = 64;
                pad_w  = 66;
            end
            32: begin
                size_n = 32;
                pad_w  = 34;
            end
            default: begin
                size_n = 128;
                pad_w  = 130;
            end
        endcase

        if (!padding_en) begin
            src_addr = conv_raddr;
            if (img_MUX_sel) begin
                img_raddr  = src_addr[$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0];
                conv_rdata = img_rdata[DATA_DATA_WIDTH-1:0];
            end else begin
                data_raddr = src_addr[$clog2(DATA_ADDR_WIDTH)-1:0];
                conv_rdata = data_rdata;
            end
        end else begin
            // row/col decode without division/modulo/for/while
            tmp_addr = conv_raddr;
            cnt      = 0;

            // Binary subtract chain (restoring-divider style, fixed depth)
            if (tmp_addr >= (pad_w << 7)) begin
                tmp_addr = tmp_addr - (pad_w << 7);
                cnt      = cnt + 128;
            end
            if (tmp_addr >= (pad_w << 6)) begin
                tmp_addr = tmp_addr - (pad_w << 6);
                cnt      = cnt + 64;
            end
            if (tmp_addr >= (pad_w << 5)) begin
                tmp_addr = tmp_addr - (pad_w << 5);
                cnt      = cnt + 32;
            end
            if (tmp_addr >= (pad_w << 4)) begin
                tmp_addr = tmp_addr - (pad_w << 4);
                cnt      = cnt + 16;
            end
            if (tmp_addr >= (pad_w << 3)) begin
                tmp_addr = tmp_addr - (pad_w << 3);
                cnt      = cnt + 8;
            end
            if (tmp_addr >= (pad_w << 2)) begin
                tmp_addr = tmp_addr - (pad_w << 2);
                cnt      = cnt + 4;
            end
            if (tmp_addr >= (pad_w << 1)) begin
                tmp_addr = tmp_addr - (pad_w << 1);
                cnt      = cnt + 2;
            end
            if (tmp_addr >= pad_w) begin
                tmp_addr = tmp_addr - pad_w;
                cnt      = cnt + 1;
            end

            row = cnt;
            col = tmp_addr;

            inside_valid = (row > 0) && (row < (pad_w - 1)) && (col > 0) && (col < (pad_w - 1));

            if (inside_valid) begin
                case (size_n)
                    128: src_addr = ((row - 1) << 7) + (col - 1);
                    64: src_addr = ((row - 1) << 6) + (col - 1);
                    32: src_addr = ((row - 1) << 5) + (col - 1);
                    default: src_addr = ((row - 1) << 7) + (col - 1);
                endcase
                if (img_MUX_sel) begin
                    img_raddr  = src_addr[$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0];
                    conv_rdata = img_rdata[DATA_DATA_WIDTH-1:0];
                end else begin
                    data_raddr = src_addr[$clog2(DATA_ADDR_WIDTH)-1:0];
                    conv_rdata = data_rdata;
                end
            end else begin
                conv_rdata = '0;
            end
        end
    end
endmodule
