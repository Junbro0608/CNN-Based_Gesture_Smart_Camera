`timescale 1ns / 1ps

module padding #(
    parameter DATA_ADDR_WIDTH = 64 * 64 * 16,
    parameter DATA_DATA_WIDTH = 8,
    parameter IMG_ADDR_WIDH = 128,
    parameter IMG_DATA_WIDH = 8,
    parameter TILE_INDEX_WIDTH = 8  // 64x64 타일 인덱스 비트폭
) (
    input logic [7:0] padding_size,  // 원본 타일 크기: 128/64/32
    input logic img_MUX_sel,  // 1: img_mem 읽기, 0: data_mem 읽기
    input logic padding_en,  // 1: 패딩 좌표 모드
    input  logic [TILE_INDEX_WIDTH-1:0]                tile_index,    // 연결된 data_mem 안에서 몇 번째 타일인지
    input logic [7:0] pad_row,  // 현재 타일의 패딩 포함 row 좌표
    input logic [7:0] pad_col,  // 현재 타일의 패딩 포함 col 좌표
    output logic signed [DATA_DATA_WIDTH-1:0] conv_rdata,  // conv 쪽으로 나가는 데이터
    output logic [$clog2(DATA_ADDR_WIDTH)-1:0] data_raddr,  // 선택된 data_mem 주소
    input logic signed [DATA_DATA_WIDTH-1:0] data_rdata,  // data_mem 읽기값
    output logic [$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0] img_raddr,  // 선택된 img_mem 주소
    input logic signed [IMG_DATA_WIDH-1:0] img_rdata  // img_mem 읽기값
);

    logic [7:0] size_n;
    logic [7:0] pad_w;
    logic [31:0] src_addr;
    logic [31:0] tile_base;
    logic [31:0] local_addr;
    logic inside_valid;

    always_comb begin
        conv_rdata   = '0;
        data_raddr   = '0;
        img_raddr    = '0;
        size_n       = 128;
        pad_w        = 130;
        src_addr     = '0;
        tile_base    = '0;
        local_addr   = '0;
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

        // 이 모드는 FSM/주소 생성기가 row/col을 직접 넘겨주는 구조를 기대한다.
        // 여기서는 나눗셈이나 나머지 연산을 사용하지 않는다.
        if (padding_en) begin
            inside_valid = (pad_row < pad_w) && (pad_col < pad_w)
                        && (pad_row > 0) && (pad_row < (pad_w - 1))
                        && (pad_col > 0) && (pad_col < (pad_w - 1));
        end else begin
            inside_valid = (pad_row < size_n) && (pad_col < size_n);
        end

        if (inside_valid) begin
            case (size_n)
                128: begin
                    tile_base = tile_index << 14;  // * 16384 (2^14)
                    local_addr = ((pad_row - (padding_en ? 1 : 0)) << 7) 
                               + (pad_col - (padding_en ? 1 : 0)); // * 128 (2^7)
                end
                64: begin
                    tile_base = tile_index << 12;  // * 4096 (2^12)
                    local_addr = ((pad_row - (padding_en ? 1 : 0)) << 6) 
                               + (pad_col - (padding_en ? 1 : 0)); // * 64 (2^6)
                end
                32: begin
                    tile_base = tile_index << 10;  // * 1024 (2^10)
                    local_addr = ((pad_row - (padding_en ? 1 : 0)) << 5) 
                               + (pad_col - (padding_en ? 1 : 0)); // * 32 (2^5)
                end
                default: begin
                    tile_base = tile_index << 14;
                    local_addr = ((pad_row - (padding_en ? 1 : 0)) << 7) 
                               + (pad_col - (padding_en ? 1 : 0));
                end
            endcase

            src_addr = tile_base + local_addr;

            if (img_MUX_sel) begin
                img_raddr  = src_addr[$clog2(IMG_ADDR_WIDH*IMG_ADDR_WIDH)-1:0];
                conv_rdata = img_rdata[DATA_DATA_WIDTH-1:0];
            end else begin
                data_raddr = src_addr[$clog2(DATA_ADDR_WIDTH)-1:0];
                conv_rdata = data_rdata;
            end
        end
    end
endmodule
