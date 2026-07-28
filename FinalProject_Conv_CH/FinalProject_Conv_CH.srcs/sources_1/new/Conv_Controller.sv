`timescale 1ns / 1ps

// Controls one physical NUM_CH-wide output-channel group.
//
// CH results are stored by CH_Result_Buffer as four spatial vectors. When
// MaxPool_en is high, one value per channel is written. Otherwise all four
// convolution positions are written without spatial downsampling.
module Conv_Controller #(
    parameter integer NUM_CH       = 8,
    parameter integer ADDR_WIDTH   = 32,
    parameter integer CONFIG_WIDTH = 16,
    parameter integer CH_SELECT_WIDTH =
        (NUM_CH <= 1) ? 1 : $clog2(NUM_CH)
) (
    input logic clk,
    input logic rst_n,

    input  logic                    start,
    input  logic                    source_bank,
    input  logic                    MaxPool_en,
    input  logic [CONFIG_WIDTH-1:0] cfg_image_width,
    input  logic [CONFIG_WIDTH-1:0] cfg_image_height,
    input  logic [CONFIG_WIDTH-1:0] cfg_input_channels,
    input  logic [CONFIG_WIDTH-1:0] cfg_output_channel_base,
    input  logic [ADDR_WIDTH-1:0]   weight_base_addr,
    output logic                    busy,
    output logic                    done,

    // External Weight Buffer request and CNN-local register status.
    output logic                  weight_load_start,
    output logic [ADDR_WIDTH-1:0] weight_load_addr,
    input  logic                  weight_load_ready,
    input  logic                  weight_valid,

    // External Data Buffer request and Shift_Buffer status.
    output logic                  data_read_enable,
    input  logic                  data_read_ready,
    output logic                  data_read_bank,
    output logic [ADDR_WIDTH-1:0] data_read_addr,
    input  logic                  shift_pixel_ready,
    input  logic                  shift_window_valid,
    input  logic                  shift_window_ready,
    input  logic                  shift_tile_done,
    output logic                  shift_clear,

    // CH_wrapper control.
    output logic [NUM_CH-1:0] ch_enable,
    output logic              acc_clear,
    output logic              first_ic,
    output logic              last_ic,

    // CH_Result_Buffer control and serialized output status.
    output logic result_buffer_clear,
    input  logic result_output_valid,
    output logic result_output_ready,
    input  logic result_output_done,
    input  logic [CH_SELECT_WIDTH-1:0] result_output_channel,
    input  logic [1:0] result_output_position,

    // External Data Buffer write control. Write data comes directly from
    // CH_Result_Buffer.
    output logic                  data_write_enable,
    output logic                  data_write_bank,
    output logic [ADDR_WIDTH-1:0] data_write_addr,

    // Debug/status indices.
    output logic [CONFIG_WIDTH-1:0] input_channel_index,
    output logic [CONFIG_WIDTH-1:0] pool_x_index,
    output logic [CONFIG_WIDTH-1:0] pool_y_index
);

    localparam integer WEIGHT_PACKET_BYTES = 10 * NUM_CH;

    typedef enum logic [2:0] {
        IDLE,
        SET_WEIGHT_DATA,
        CONV,
        POST_PROCESS,
        PUSH_DATA
    } state_t;

    state_t state;

    logic setup_issued;
    logic [4:0] data_request_count;

    logic [CONFIG_WIDTH-1:0] input_channel_reg;
    logic [CONFIG_WIDTH-1:0] pool_x_reg;
    logic [CONFIG_WIDTH-1:0] pool_y_reg;

    logic source_bank_reg;
    logic MaxPool_en_reg;
    logic [CONFIG_WIDTH-1:0] image_width_reg;
    logic [CONFIG_WIDTH-1:0] image_height_reg;
    logic [CONFIG_WIDTH-1:0] input_channels_reg;
    logic [CONFIG_WIDTH-1:0] output_channel_base_reg;
    logic [ADDR_WIDTH-1:0] weight_base_addr_reg;

    logic [ADDR_WIDTH-1:0] image_pixels;
    logic [ADDR_WIDTH-1:0] conv_width;
    logic [ADDR_WIDTH-1:0] conv_height;
    logic [ADDR_WIDTH-1:0] conv_pixels;
    logic [ADDR_WIDTH-1:0] tile_width;
    logic [ADDR_WIDTH-1:0] tile_height;
    logic [ADDR_WIDTH-1:0] pooled_pixels;
    logic [ADDR_WIDTH-1:0] output_spatial_addr;

    assign input_channel_index = input_channel_reg;
    assign pool_x_index        = pool_x_reg;
    assign pool_y_index        = pool_y_reg;

    always_comb begin
        image_pixels  = image_width_reg * image_height_reg;
        conv_width    = image_width_reg - 2;
        conv_height   = image_height_reg - 2;
        conv_pixels   = conv_width * conv_height;
        tile_width    = conv_width / 2;
        tile_height   = conv_height / 2;
        pooled_pixels = tile_width * tile_height;

        if (MaxPool_en_reg) begin
            output_spatial_addr =
                pool_y_reg * tile_width + pool_x_reg;
        end else begin
            output_spatial_addr =
                (pool_y_reg * 2 + result_output_position[1])
                    * conv_width
                + (pool_x_reg * 2 + result_output_position[0]);
        end
    end

    always_comb begin
        busy = (state != IDLE);

        weight_load_start = 1'b0;
        weight_load_addr =
            weight_base_addr_reg
            + input_channel_reg * WEIGHT_PACKET_BYTES;

        data_read_enable = 1'b0;
        data_read_bank   = source_bank_reg;
        data_read_addr   =
            input_channel_reg * image_pixels
            + ((pool_y_reg * 2 + data_request_count[3:2])
                * image_width_reg)
            + (pool_x_reg * 2 + data_request_count[1:0]);

        shift_clear = 1'b0;

        ch_enable = {NUM_CH{1'b0}};
        acc_clear = 1'b0;
        first_ic  = (input_channel_reg == 0);
        last_ic   = (input_channel_reg == input_channels_reg-1);

        result_buffer_clear = 1'b0;
        result_output_ready = 1'b0;

        data_write_enable = 1'b0;
        data_write_bank   = !source_bank_reg;
        data_write_addr   =
            (output_channel_base_reg + result_output_channel)
                * (MaxPool_en_reg ? pooled_pixels : conv_pixels)
            + output_spatial_addr;

        case (state)
            IDLE: begin
                if (start) begin
                    acc_clear          = 1'b1;
                    result_buffer_clear = 1'b1;
                    shift_clear        = 1'b1;
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

            POST_PROCESS: begin
                // Wait until CH_Result_Buffer has captured all four vectors.
            end

            PUSH_DATA: begin
                result_output_ready = 1'b1;
                data_write_enable   = result_output_valid;
            end

            default: begin
                // Safe inactive defaults.
            end
        endcase
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state                   <= IDLE;
            setup_issued            <= 1'b0;
            data_request_count      <= 5'd0;
            input_channel_reg       <= '0;
            pool_x_reg              <= '0;
            pool_y_reg              <= '0;
            source_bank_reg         <= 1'b0;
            MaxPool_en_reg          <= 1'b0;
            image_width_reg         <= '0;
            image_height_reg        <= '0;
            input_channels_reg      <= '0;
            output_channel_base_reg <= '0;
            weight_base_addr_reg    <= '0;
            done                    <= 1'b0;
        end else begin
            done <= 1'b0;

            case (state)
                IDLE: begin
                    if (start) begin
                        source_bank_reg         <= source_bank;
                        MaxPool_en_reg          <= MaxPool_en;
                        image_width_reg         <= cfg_image_width;
                        image_height_reg        <= cfg_image_height;
                        input_channels_reg      <= cfg_input_channels;
                        output_channel_base_reg <=
                            cfg_output_channel_base;
                        weight_base_addr_reg    <= weight_base_addr;
                        input_channel_reg       <= '0;
                        pool_x_reg              <= '0;
                        pool_y_reg              <= '0;
                        setup_issued            <= 1'b0;
                        data_request_count      <= 5'd0;
                        state                   <= SET_WEIGHT_DATA;
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

                        if (shift_window_valid && shift_window_ready)
                            state <= CONV;
                    end
                end

                CONV: begin
                    if (shift_tile_done) begin
                        if (input_channel_reg
                            == input_channels_reg-1) begin
                            state <= POST_PROCESS;
                        end else begin
                            input_channel_reg <=
                                input_channel_reg + 1'b1;
                            setup_issued       <= 1'b0;
                            data_request_count <= 5'd0;
                            state              <= SET_WEIGHT_DATA;
                        end
                    end
                end

                POST_PROCESS: begin
                    if (result_output_valid)
                        state <= PUSH_DATA;
                end

                PUSH_DATA: begin
                    if (result_output_done) begin
                        if ((pool_x_reg == tile_width-1)
                            && (pool_y_reg == tile_height-1)) begin
                            state <= IDLE;
                            done  <= 1'b1;
                        end else begin
                            if (pool_x_reg == tile_width-1) begin
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
                    end
                end

                default: begin
                    state <= IDLE;
                end
            endcase
        end
    end

endmodule
