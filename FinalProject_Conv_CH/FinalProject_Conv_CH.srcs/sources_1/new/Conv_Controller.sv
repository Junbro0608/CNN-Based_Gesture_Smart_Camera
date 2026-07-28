`timescale 1ns / 1ps

// Controls one valid 3x3-convolution + 2x2-max-pooling layer.
//
// Processing order:
//   for every 2x2 pooling position
//     for every input channel
//       load one weight packet
//       read one 4x4 input tile
//       process four 3x3 convolution windows
//     wait for all output-channel MaxPool/ReLU results
//     serialize the results through Output_Mux into Data_Buffer
//
// With IMAGE_WIDTH=IMAGE_HEIGHT=128, the valid convolution size is 126x126
// and the 2x2 pooling output size is 63x63.
module Conv_Controller #(
    parameter integer NUM_CH             = 8,
    parameter integer NUM_INPUT_CHANNELS = 1,
    parameter integer IMAGE_WIDTH        = 128,
    parameter integer IMAGE_HEIGHT       = 128,
    parameter integer ADDR_WIDTH         = 32,

    parameter integer CH_SELECT_WIDTH =
        (NUM_CH <= 1) ? 1 : $clog2(NUM_CH),
    parameter integer IC_WIDTH =
        (NUM_INPUT_CHANNELS <= 1) ? 1 : $clog2(NUM_INPUT_CHANNELS),
    parameter integer POOL_X_WIDTH =
        (((IMAGE_WIDTH-2)/2) <= 1)
            ? 1 : $clog2((IMAGE_WIDTH-2)/2),
    parameter integer POOL_Y_WIDTH =
        (((IMAGE_HEIGHT-2)/2) <= 1)
            ? 1 : $clog2((IMAGE_HEIGHT-2)/2)
) (
    input logic clk,
    input logic rst_n,

    // Layer command.
    input  logic                  start,
    input  logic                  source_bank,
    input  logic [ADDR_WIDTH-1:0] weight_base_addr,
    output logic                  busy,
    output logic                  done,

    // Weight_Buffer control/status.
    output logic                  weight_load_start,
    output logic [ADDR_WIDTH-1:0] weight_load_addr,
    input  logic                  weight_load_ready,
    input  logic                  weight_valid,

    // Data_Buffer read port and Shift_Buffer status.
    output logic                  data_read_enable,
    input  logic                  data_read_ready,
    output logic                  data_read_bank,
    output logic [ADDR_WIDTH-1:0] data_read_addr,
    input  logic                  shift_pixel_ready,
    input  logic                  shift_window_valid,
    input  logic                  shift_window_ready,
    input  logic                  shift_tile_done,
    output logic                  shift_clear,

    // CH_wrapper controls.
    output logic [NUM_CH-1:0] ch_enable,
    output logic              acc_clear,
    output logic              first_ic,
    output logic              last_ic,

    // MaxPool_wrapper status/control.
    input  logic [NUM_CH-1:0] pool_valid,
    output logic              maxpool_clear,

    // Output_Mux control and selected-result handshake.
    output logic [CH_SELECT_WIDTH-1:0] channel_select,
    output logic                       select_enable,
    input  logic                       ch_wvalid,
    input  logic                       ch_wready,

    // Data_Buffer write control. ch_wdata is connected directly from
    // Output_Mux to Data_Buffer and therefore is not routed through here.
    output logic                  data_write_enable,
    output logic                  data_write_bank,
    output logic [ADDR_WIDTH-1:0] data_write_addr,

    // Current loop positions are exposed for integration/debugging.
    output logic [IC_WIDTH-1:0]     input_channel_index,
    output logic [POOL_X_WIDTH-1:0] pool_x_index,
    output logic [POOL_Y_WIDTH-1:0] pool_y_index
);

    localparam integer CONV_WIDTH  = IMAGE_WIDTH - 2;
    localparam integer CONV_HEIGHT = IMAGE_HEIGHT - 2;
    localparam integer POOL_WIDTH  = CONV_WIDTH / 2;
    localparam integer POOL_HEIGHT = CONV_HEIGHT / 2;
    localparam integer POOL_PIXELS = POOL_WIDTH * POOL_HEIGHT;
    localparam integer IMAGE_PIXELS = IMAGE_WIDTH * IMAGE_HEIGHT;

    localparam integer WEIGHT_PACKET_WORDS = 10;
    localparam integer WEIGHT_PACKET_BYTES =
        WEIGHT_PACKET_WORDS * NUM_CH;

    typedef enum logic [2:0] {
        IDLE,
        SET_WEIGHT_DATA,
        CONV,
        MAXPOOL_RELU,
        PUSH_DATA
    } state_t;

    state_t state;

    logic setup_issued;
    logic [4:0] data_request_count;

    logic [IC_WIDTH-1:0]     input_channel_reg;
    logic [POOL_X_WIDTH-1:0] pool_x_reg;
    logic [POOL_Y_WIDTH-1:0] pool_y_reg;
    logic [CH_SELECT_WIDTH-1:0] output_channel_reg;

    logic source_bank_reg;
    logic [ADDR_WIDTH-1:0] weight_base_addr_reg;

    assign input_channel_index = input_channel_reg;
    assign pool_x_index        = pool_x_reg;
    assign pool_y_index        = pool_y_reg;

    always_comb begin
        busy = (state != IDLE);

        weight_load_start = 1'b0;
        weight_load_addr =
            weight_base_addr_reg
            + input_channel_reg * WEIGHT_PACKET_BYTES;

        data_read_enable = 1'b0;
        data_read_bank   = source_bank_reg;
        data_read_addr   =
            input_channel_reg * IMAGE_PIXELS
            + ((pool_y_reg * 2 + data_request_count[3:2])
                * IMAGE_WIDTH)
            + (pool_x_reg * 2 + data_request_count[1:0]);

        shift_clear = 1'b0;

        ch_enable = {NUM_CH{1'b0}};
        acc_clear = 1'b0;
        first_ic  = (input_channel_reg == 0);
        last_ic   =
            (input_channel_reg == NUM_INPUT_CHANNELS-1);

        maxpool_clear = 1'b0;

        channel_select = output_channel_reg;
        select_enable  = 1'b0;

        data_write_enable = 1'b0;
        data_write_bank   = !source_bank_reg;
        data_write_addr   =
            output_channel_reg * POOL_PIXELS
            + pool_y_reg * POOL_WIDTH
            + pool_x_reg;

        case (state)
            IDLE: begin
                // Clear all partial state when a new layer is accepted.
                if (start) begin
                    acc_clear     = 1'b1;
                    maxpool_clear = 1'b1;
                    shift_clear   = 1'b1;
                end
            end

            SET_WEIGHT_DATA: begin
                ch_enable = {NUM_CH{1'b1}};

                if (!setup_issued) begin
                    weight_load_start = 1'b1;
                    shift_clear       = 1'b1;
                end else if (weight_valid
                             && (data_request_count < 16)
                             && shift_pixel_ready) begin
                    data_read_enable = 1'b1;
                end
            end

            CONV: begin
                ch_enable = {NUM_CH{1'b1}};
            end

            MAXPOOL_RELU: begin
                // MaxPool_wrapper holds every completed result until PUSH_DATA.
            end

            PUSH_DATA: begin
                select_enable    = 1'b1;
                data_write_enable = ch_wvalid && ch_wready;
            end

            default: begin
                // Defaults above keep all interfaces inactive.
            end
        endcase
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state                <= IDLE;
            setup_issued         <= 1'b0;
            data_request_count   <= 5'd0;
            input_channel_reg    <= '0;
            pool_x_reg           <= '0;
            pool_y_reg           <= '0;
            output_channel_reg   <= '0;
            source_bank_reg      <= 1'b0;
            weight_base_addr_reg <= '0;
            done                 <= 1'b0;
        end else begin
            done <= 1'b0;

            case (state)
                IDLE: begin
                    if (start) begin
                        source_bank_reg      <= source_bank;
                        weight_base_addr_reg <= weight_base_addr;
                        input_channel_reg    <= '0;
                        pool_x_reg           <= '0;
                        pool_y_reg           <= '0;
                        output_channel_reg   <= '0;
                        setup_issued         <= 1'b0;
                        data_request_count   <= 5'd0;
                        state                <= SET_WEIGHT_DATA;
                    end
                end

                SET_WEIGHT_DATA: begin
                    if (!setup_issued) begin
                        if (weight_load_start && weight_load_ready)
                            setup_issued <= 1'b1;
                    end else begin
                        if (data_read_enable && data_read_ready)
                            data_request_count <=
                                data_request_count + 1'b1;

                        // window 0 is accepted by CH on this transition edge
                        // because ch_enable is also active in this state.
                        if (shift_window_valid && shift_window_ready)
                            state <= CONV;
                    end
                end

                CONV: begin
                    if (shift_tile_done) begin
                        if (input_channel_reg
                            == NUM_INPUT_CHANNELS-1) begin
                            state <= MAXPOOL_RELU;
                        end else begin
                            input_channel_reg <=
                                input_channel_reg + 1'b1;
                            setup_issued       <= 1'b0;
                            data_request_count <= 5'd0;
                            state              <= SET_WEIGHT_DATA;
                        end
                    end
                end

                MAXPOOL_RELU: begin
                    if (pool_valid == {NUM_CH{1'b1}}) begin
                        output_channel_reg <= '0;
                        state              <= PUSH_DATA;
                    end
                end

                PUSH_DATA: begin
                    if (ch_wvalid && ch_wready) begin
                        if (output_channel_reg == NUM_CH-1) begin
                            output_channel_reg <= '0;

                            if ((pool_x_reg == POOL_WIDTH-1)
                                && (pool_y_reg == POOL_HEIGHT-1)) begin
                                state <= IDLE;
                                done  <= 1'b1;
                            end else begin
                                if (pool_x_reg == POOL_WIDTH-1) begin
                                    pool_x_reg <= '0;
                                    pool_y_reg <= pool_y_reg + 1'b1;
                                end else begin
                                    pool_x_reg <= pool_x_reg + 1'b1;
                                end

                                input_channel_reg  <= '0;
                                setup_issued       <= 1'b0;
                                data_request_count <= 5'd0;
                                state              <= SET_WEIGHT_DATA;
                            end
                        end else begin
                            output_channel_reg <=
                                output_channel_reg + 1'b1;
                        end
                    end
                end

                default: begin
                    state <= IDLE;
                end
            endcase
        end
    end

endmodule
