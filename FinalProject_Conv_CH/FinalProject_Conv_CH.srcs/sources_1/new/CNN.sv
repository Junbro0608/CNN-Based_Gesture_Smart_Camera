`timescale 1ns / 1ps

// One integrated valid-3x3-convolution + 2x2-max-pooling accelerator.
//
// External control only needs start/done/busy. After start, this module first
// copies one complete image from the external ping-pong buffer into internal
// Data_Buffer bank 0, then starts Conv_Controller automatically.
module CNN #(
    parameter integer NUM_CH             = 8,
    parameter integer NUM_INPUT_CHANNELS = 1,
    parameter integer IMAGE_WIDTH        = 128,
    parameter integer IMAGE_HEIGHT       = 128,
    parameter integer DATA_ADDR_WIDTH    = 32,
    parameter integer WEIGHT_ADDR_WIDTH  = 32,
    parameter logic [WEIGHT_ADDR_WIDTH-1:0] WEIGHT_BASE_ADDR =
        32'h1000_0000,

    parameter integer IMAGE_ADDR_WIDTH =
        ((IMAGE_WIDTH*IMAGE_HEIGHT) <= 1)
            ? 1 : $clog2(IMAGE_WIDTH*IMAGE_HEIGHT)
) (
    input  logic clk,
    input  logic rst_n,

    // CNN ACC controller interface.
    input  logic start,
    output logic done,
    output logic busy,

    // External ping-pong buffer read interface.
    output logic                        img_read_enable,
    output logic [IMAGE_ADDR_WIDTH-1:0] img_read_addr,
    input  logic [7:0]                  img_data,
    input  logic                        img_data_valid,
    output logic                        img_data_ready,

    // Command request to the existing dram_controller.
    output logic                         dram_start_req,
    output logic [WEIGHT_ADDR_WIDTH-1:0] dram_addr,
    output logic [22:0]                  dram_btt,

    // DataMover M_AXIS_MM2S stream carrying one weight packet.
    input  logic [NUM_CH*8-1:0] weight_axis_tdata,
    input  logic                weight_axis_tvalid,
    output logic                weight_axis_tready,
    input  logic                weight_axis_tlast
);

    localparam integer IMAGE_PIXELS =
        IMAGE_WIDTH * IMAGE_HEIGHT;
    localparam integer POOL_WIDTH =
        (IMAGE_WIDTH - 2) / 2;
    localparam integer POOL_HEIGHT =
        (IMAGE_HEIGHT - 2) / 2;
    localparam integer INPUT_DEPTH =
        IMAGE_PIXELS * NUM_INPUT_CHANNELS;
    localparam integer OUTPUT_DEPTH =
        POOL_WIDTH * POOL_HEIGHT * NUM_CH;
    localparam integer BUFFER_DEPTH =
        (INPUT_DEPTH > OUTPUT_DEPTH) ? INPUT_DEPTH : OUTPUT_DEPTH;

    localparam integer CH_SELECT_WIDTH =
        (NUM_CH <= 1) ? 1 : $clog2(NUM_CH);
    localparam integer IC_WIDTH =
        (NUM_INPUT_CHANNELS <= 1)
            ? 1 : $clog2(NUM_INPUT_CHANNELS);
    localparam integer POOL_X_WIDTH =
        (POOL_WIDTH <= 1) ? 1 : $clog2(POOL_WIDTH);
    localparam integer POOL_Y_WIDTH =
        (POOL_HEIGHT <= 1) ? 1 : $clog2(POOL_HEIGHT);

    typedef enum logic [1:0] {
        CNN_IDLE,
        LOAD_IMAGE,
        RUN_CONV
    } cnn_state_t;

    cnn_state_t cnn_state;

    logic [IMAGE_ADDR_WIDTH:0] image_request_count;
    logic [IMAGE_ADDR_WIDTH:0] image_write_count;
    logic conv_start;
    logic conv_done;
    logic conv_busy;

    // Conv_Controller ↔ Weight_Buffer
    logic controller_weight_load_start;
    logic [WEIGHT_ADDR_WIDTH-1:0] controller_weight_load_addr;
    logic weight_busy;
    logic weight_load_ready;
    logic weight_request_valid;
    logic [WEIGHT_ADDR_WIDTH-1:0] weight_request_addr;
    logic weight_valid;
    logic weight_packet_error;

    logic signed [7:0] weight_data [0:NUM_CH-1][0:8];
    logic signed [7:0] bias_data   [0:NUM_CH-1];

    // Conv_Controller ↔ Data_Buffer ↔ Shift_Buffer
    logic controller_data_read_enable;
    logic controller_data_read_bank;
    logic [DATA_ADDR_WIDTH-1:0] controller_data_read_addr;
    logic [7:0] data_read_data;
    logic data_read_valid;
    logic data_read_ready;
    logic data_read_data_ready;

    logic data_write_enable;
    logic data_write_bank;
    logic [DATA_ADDR_WIDTH-1:0] data_write_addr;
    logic [7:0] data_write_data;
    logic data_write_ready;

    logic shift_pixel_ready;
    logic shift_clear;
    logic [7:0] pixel_window [0:8];
    logic shift_window_valid;
    logic shift_window_ready;
    logic [1:0] shift_window_index;
    logic shift_tile_done;

    // Conv_Controller ↔ CH_wrapper
    logic [NUM_CH-1:0] ch_enable;
    logic acc_clear;
    logic first_ic;
    logic last_ic;
    logic signed [7:0] conv_result [0:NUM_CH-1];
    logic [NUM_CH-1:0] conv_result_valid;
    logic ch_pixel_ready;

    // CH_wrapper ↔ MaxPool_wrapper ↔ Output_Mux
    logic [NUM_CH-1:0] maxpool_conv_ready;
    logic [7:0] relu_data [0:NUM_CH-1];
    logic [NUM_CH-1:0] pool_valid;
    logic [NUM_CH-1:0] pool_ready;
    logic maxpool_clear;

    logic [CH_SELECT_WIDTH-1:0] channel_select;
    logic select_enable;
    logic [7:0] ch_wdata;
    logic ch_wvalid;
    logic ch_wready;

    logic controller_data_write_enable;
    logic controller_data_write_bank;
    logic [DATA_ADDR_WIDTH-1:0] controller_data_write_addr;

    logic [IC_WIDTH-1:0] current_input_channel;
    logic [POOL_X_WIDTH-1:0] current_pool_x;
    logic [POOL_Y_WIDTH-1:0] current_pool_y;

    assign busy = (cnn_state != CNN_IDLE);

    assign img_read_enable =
        (cnn_state == LOAD_IMAGE)
        && (image_request_count < IMAGE_PIXELS);
    assign img_read_addr =
        image_request_count[IMAGE_ADDR_WIDTH-1:0];
    assign img_data_ready =
        (cnn_state == LOAD_IMAGE) && data_write_ready;

    assign dram_start_req = weight_request_valid;
    assign dram_addr      = weight_request_addr;
    assign dram_btt       = 10 * NUM_CH;

    // Data_Buffer has one write port. It first receives the camera image and
    // later receives serialized ReLU results from Output_Mux.
    always_comb begin
        data_write_enable = 1'b0;
        data_write_bank   = 1'b0;
        data_write_addr   = {DATA_ADDR_WIDTH{1'b0}};
        data_write_data   = 8'd0;

        if (cnn_state == LOAD_IMAGE) begin
            data_write_enable = img_data_valid && img_data_ready;
            data_write_bank   = 1'b0;
            data_write_addr   = image_write_count;
            data_write_data   = img_data;
        end else if (cnn_state == RUN_CONV) begin
            data_write_enable = controller_data_write_enable;
            data_write_bank   = controller_data_write_bank;
            data_write_addr   = controller_data_write_addr;
            data_write_data   = ch_wdata;
        end
    end

    // Image loading and top-level operation sequencing.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnn_state           <= CNN_IDLE;
            image_request_count <= '0;
            image_write_count   <= '0;
            conv_start          <= 1'b0;
            done                <= 1'b0;
        end else begin
            conv_start <= 1'b0;
            done       <= 1'b0;

            case (cnn_state)
                CNN_IDLE: begin
                    if (start) begin
                        image_request_count <= '0;
                        image_write_count   <= '0;
                        cnn_state           <= LOAD_IMAGE;
                    end
                end

                LOAD_IMAGE: begin
                    if (img_read_enable)
                        image_request_count <=
                            image_request_count + 1'b1;

                    if (img_data_valid && img_data_ready) begin
                        if (image_write_count == IMAGE_PIXELS-1) begin
                            image_write_count <= image_write_count;
                            conv_start        <= 1'b1;
                            cnn_state         <= RUN_CONV;
                        end else begin
                            image_write_count <=
                                image_write_count + 1'b1;
                        end
                    end
                end

                RUN_CONV: begin
                    if (conv_done) begin
                        cnn_state <= CNN_IDLE;
                        done      <= 1'b1;
                    end
                end

                default: begin
                    cnn_state <= CNN_IDLE;
                end
            endcase
        end
    end

    Conv_Controller #(
        .NUM_CH            (NUM_CH),
        .NUM_INPUT_CHANNELS(NUM_INPUT_CHANNELS),
        .IMAGE_WIDTH       (IMAGE_WIDTH),
        .IMAGE_HEIGHT      (IMAGE_HEIGHT),
        .ADDR_WIDTH        (DATA_ADDR_WIDTH)
    ) U_CONV_CONTROLLER (
        .clk                (clk),
        .rst_n              (rst_n),
        .start              (conv_start),
        .source_bank        (1'b0),
        .weight_base_addr   (WEIGHT_BASE_ADDR),
        .busy               (conv_busy),
        .done               (conv_done),
        .weight_load_start  (controller_weight_load_start),
        .weight_load_addr   (controller_weight_load_addr),
        .weight_load_ready  (weight_load_ready),
        .weight_valid       (weight_valid),
        .data_read_enable   (controller_data_read_enable),
        .data_read_ready    (data_read_ready),
        .data_read_bank     (controller_data_read_bank),
        .data_read_addr     (controller_data_read_addr),
        .shift_pixel_ready  (shift_pixel_ready),
        .shift_window_valid (shift_window_valid),
        .shift_window_ready (shift_window_ready),
        .shift_tile_done    (shift_tile_done),
        .shift_clear        (shift_clear),
        .ch_enable          (ch_enable),
        .acc_clear          (acc_clear),
        .first_ic           (first_ic),
        .last_ic            (last_ic),
        .pool_valid         (pool_valid),
        .maxpool_clear      (maxpool_clear),
        .channel_select     (channel_select),
        .select_enable      (select_enable),
        .ch_wvalid          (ch_wvalid),
        .ch_wready          (ch_wready),
        .data_write_enable  (controller_data_write_enable),
        .data_write_bank    (controller_data_write_bank),
        .data_write_addr    (controller_data_write_addr),
        .input_channel_index(current_input_channel),
        .pool_x_index       (current_pool_x),
        .pool_y_index       (current_pool_y)
    );

    Weight_Buffer #(
        .NUM_CH    (NUM_CH),
        .ADDR_WIDTH(WEIGHT_ADDR_WIDTH)
    ) U_WEIGHT_BUFFER (
        .clk                 (clk),
        .rst_n               (rst_n),
        .load_start          (controller_weight_load_start),
        .load_ready          (weight_load_ready),
        .load_addr           (controller_weight_load_addr),
        .busy                (weight_busy),
        .weight_valid        (weight_valid),
        .packet_error        (weight_packet_error),
        .request_valid       (weight_request_valid),
        .request_ready       (1'b1),
        .request_addr        (weight_request_addr),
        .s_axis_weight_tdata (weight_axis_tdata),
        .s_axis_weight_tvalid(weight_axis_tvalid),
        .s_axis_weight_tready(weight_axis_tready),
        .s_axis_weight_tlast (weight_axis_tlast),
        .weight_out          (weight_data),
        .bias_out            (bias_data)
    );

    Data_Buffer #(
        .DATA_WIDTH(8),
        .DEPTH     (BUFFER_DEPTH),
        .ADDR_WIDTH(DATA_ADDR_WIDTH)
    ) U_DATA_BUFFER (
        .clk         (clk),
        .rst_n       (rst_n),
        .write_enable(data_write_enable),
        .write_ready (data_write_ready),
        .write_bank  (data_write_bank),
        .write_addr  (data_write_addr),
        .write_data  (data_write_data),
        .read_enable (controller_data_read_enable),
        .read_ready  (data_read_ready),
        .read_bank   (controller_data_read_bank),
        .read_addr   (controller_data_read_addr),
        .read_data   (data_read_data),
        .read_valid  (data_read_valid),
        .read_data_ready(data_read_data_ready)
    );

    Shift_Buffer #(
        .PIXEL_WIDTH(8)
    ) U_SHIFT_BUFFER (
        .clk         (clk),
        .rst_n       (rst_n),
        .clear       (shift_clear),
        .pixel_data  (data_read_data),
        .pixel_valid (data_read_valid),
        .pixel_ready (shift_pixel_ready),
        .pixel_window(pixel_window),
        .window_valid(shift_window_valid),
        .window_ready(shift_window_ready),
        .window_index(shift_window_index),
        .tile_done   (shift_tile_done)
    );

    CH_wrapper #(
        .NUM_CH      (NUM_CH),
        .OUTPUT_SHIFT(8)
    ) U_CH_WRAPPER (
        .clk         (clk),
        .rst_n       (rst_n),
        .ch_enable   (ch_enable),
        .acc_clear   (acc_clear),
        .first_ic    (first_ic),
        .last_ic     (last_ic),
        .pixel_valid (shift_window_valid),
        .pixel_ready (ch_pixel_ready),
        .window_index(shift_window_index),
        .pixel_in    (pixel_window),
        .weight_valid(weight_valid),
        .weight_in   (weight_data),
        .bias_in     (bias_data),
        .result_out  (conv_result),
        .result_valid(conv_result_valid),
        .result_ready(maxpool_conv_ready)
    );

    MaxPool_wrapper #(
        .NUM_CH    (NUM_CH),
        .DATA_WIDTH(8)
    ) U_MAXPOOL_WRAPPER (
        .clk       (clk),
        .rst_n     (rst_n),
        .clear     (maxpool_clear),
        .conv_data (conv_result),
        .conv_valid(conv_result_valid),
        .conv_ready(maxpool_conv_ready),
        .relu_data (relu_data),
        .pool_valid(pool_valid),
        .pool_ready(pool_ready)
    );

    Output_Mux #(
        .NUM_CH    (NUM_CH),
        .DATA_WIDTH(8)
    ) U_OUTPUT_MUX (
        .relu_data    (relu_data),
        .pool_valid   (pool_valid),
        .channel_select(channel_select),
        .select_enable(select_enable),
        .ch_wdata     (ch_wdata),
        .ch_wvalid    (ch_wvalid),
        .ch_wready    (ch_wready),
        .pool_ready   (pool_ready)
    );

    // Ready paths are kept explicit so every internal transfer advances only
    // on valid && ready.
    assign data_read_data_ready = shift_pixel_ready;
    assign shift_window_ready   = ch_pixel_ready;
    assign ch_wready            = data_write_ready;

endmodule
