`timescale 1ns / 1ps

// Team-standard FC interface wrapper.
//
// This module keeps the verified fc_top datapath/controller unchanged and only
// adapts the CNN_top interface:
//   * WT_ADDR_WIDTH and DATA_ADDR_WIDTH are memory depths, so their $clog2
//     values are passed to fc_top as address bit widths.
//   * The packed 64-bit Weight ROM output is split into eight signed PE lanes.
//   * Team-interface names are mapped to the existing fc_top names.
//
// The team interface currently has no ports for layer configuration or bias.
// Until those values are finalized, the explicit integration defaults below are
// used. Replace these constants/internal zero-bias source with trained values;
// leaving them at zero changes a network that was trained with non-zero bias,
// requantization shift, or threshold.
module fc #(
    parameter WT_ADDR_WIDTH   = 10 * 128,
    parameter WT_DATA_WIDTH   = 64,
    parameter DATA_ADDR_WIDTH = 126 * 126 * 16,
    parameter DATA_DATA_WIDTH = 8
) (
    input  logic                                clk,
    input  logic                                rst_n,

    // CNN control
    input  logic                                start,
    input  logic [             $clog2(128)-1:0] input_length,
    input  logic [             $clog2(128)-1:0] output_length,
    output logic                                Done,

    // Weight side: wt_raddr is the starting BYTE address of an 8-byte window.
    output logic [   $clog2(WT_ADDR_WIDTH)-1:0] wt_raddr,
    input  logic [           WT_DATA_WIDTH-1:0] wt_rdata,

    // Data Store
    output logic                                DATA_we,
    output logic [$clog2(DATA_ADDR_WIDTH)-1:0] DATA_waddr,
    output logic [         DATA_DATA_WIDTH-1:0] DATA_wdata,

    // Data Load
    output logic [$clog2(DATA_ADDR_WIDTH)-1:0] DATA_raddr,
    input  logic [         DATA_DATA_WIDTH-1:0] DATA_rdata,

    // Binary final-layer result
    output logic                                result
);

    localparam int PE_NUM           = 8;
    localparam int WEIGHT_WIDTH     = WT_DATA_WIDTH / PE_NUM;
    localparam int WT_ADDR_BITS     = $clog2(WT_ADDR_WIDTH);
    localparam int DATA_ADDR_BITS   = $clog2(DATA_ADDR_WIDTH);
    localparam int BIAS_WIDTH       = 8;
    localparam int BIAS_ADDR_BITS   = 7;
    localparam int ACC_WIDTH        = 23;
    localparam int SUM_WIDTH        = 24;

    // The fixed address regions prevent a multi-batch FC result from
    // overwriting an input that a later batch still has to reread.
    localparam logic [DATA_ADDR_BITS-1:0] FC_DATA_SRC_BASE = '0;
    localparam logic [DATA_ADDR_BITS-1:0] FC_DATA_DST_BASE = 128;
    localparam logic [WT_ADDR_BITS-1:0]   FC_WEIGHT_BASE   = '0;

    // TODO(model): replace these placeholders with the trained layer values.
    localparam logic [4:0]                  FC_SHIFT_AMOUNT = 5'd0;
    localparam logic signed [SUM_WIDTH-1:0] FC_THRESHOLD    = '0;

    logic                                  finish_en_core;
    logic [8:0]                            input_length_core;
    logic [7:0]                            output_length_core;
    logic signed [WEIGHT_WIDTH-1:0]        weight_lane [0:PE_NUM-1];
    logic [BIAS_ADDR_BITS-1:0]             bias_raddr_unused;
    logic signed [BIAS_WIDTH-1:0]          bias_lane [0:PE_NUM-1];

    // The exact team port is 7 bits wide. It can represent 0..127, not 128.
    // No undocumented 0=>128 encoding is introduced here.
    assign input_length_core  = {2'b00, input_length};
    assign output_length_core = {1'b0, output_length};

    // With no finish_en port in the team interface, output_length==1 denotes
    // the final binary layer; larger output lengths use the Data Store path.
    // CNN_top must hold output_length stable from start through Done.
    assign finish_en_core = (output_length_core == 8'd1);

    // Purely combinational unpacking preserves the external ROM's 1-cycle
    // latency. Lane 0 is wt_rdata[7:0], lane 7 is wt_rdata[63:56].
    generate
        genvar lane_idx;
        for (lane_idx = 0; lane_idx < PE_NUM; lane_idx = lane_idx + 1) begin : gen_weight_unpack
            assign weight_lane[lane_idx] = $signed(
                wt_rdata[lane_idx*WEIGHT_WIDTH +: WEIGHT_WIDTH]
            );

            // The team interface has no Bias ROM input yet.
            assign bias_lane[lane_idx] = '0;
        end
    endgenerate

    fc_top #(
        .PE_NUM            (PE_NUM),
        .DATA_WIDTH        (DATA_DATA_WIDTH),
        .WEIGHT_WIDTH      (WEIGHT_WIDTH),
        .ACC_WIDTH         (ACC_WIDTH),
        .BIAS_WIDTH        (BIAS_WIDTH),
        .SUM_WIDTH         (SUM_WIDTH),
        .DATA_ADDR_WIDTH   (DATA_ADDR_BITS),
        .WEIGHT_ADDR_WIDTH (WT_ADDR_BITS),
        .BIAS_ADDR_WIDTH   (BIAS_ADDR_BITS)
    ) u_fc_top (
        .clk                (clk),
        .rst_n              (rst_n),
        .start              (start),
        .finish_en          (finish_en_core),
        .input_length       (input_length_core),
        .output_length      (output_length_core),
        .data_src_base_addr (FC_DATA_SRC_BASE),
        .data_dst_base_addr (FC_DATA_DST_BASE),
        .weight_base_addr   (FC_WEIGHT_BASE),
        .bias_base_addr     ({BIAS_ADDR_BITS{1'b0}}),
        .shift_amount       (FC_SHIFT_AMOUNT),
        .threshold          (FC_THRESHOLD),
        .done               (Done),
        .result             (result),
        .data_raddr         (DATA_raddr),
        .data_waddr         (DATA_waddr),
        .data_wdata         (DATA_wdata),
        .data_we            (DATA_we),
        .data_rdata         (DATA_rdata),
        .weight_raddr       (wt_raddr),
        .weight_rdata       (weight_lane),
        .bias_raddr         (bias_raddr_unused),
        .bias_rdata         (bias_lane)
    );

`ifndef SYNTHESIS
    // The numerical widths of the existing FC datapath have only been verified
    // for the team's current 8-bit activation and eight signed 8-bit weights.
    initial begin
        assert (WT_DATA_WIDTH == 64)
            else $error("fc requires WT_DATA_WIDTH=64");
        assert (DATA_DATA_WIDTH == 8)
            else $error("fc requires DATA_DATA_WIDTH=8");
        assert (DATA_ADDR_WIDTH >= 192)
            else $error("fc requires Data depth >= 192 for fixed src/dst regions");
    end

    always_ff @(posedge clk) begin
        if (rst_n && start && (input_length == '0)) begin
            $warning(
                "fc input_length=0 is forwarded as zero; the 7-bit team port cannot represent 128"
            );
        end
    end
`endif

endmodule
