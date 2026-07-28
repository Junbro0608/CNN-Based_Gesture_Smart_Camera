`timescale 1ns / 1ps

// Three-layer convolution accelerator:
//   Layer 0 : 1  -> 32 channels
//   Layer 1 : 32 -> 64 channels
//   Layer 2 : 64 -> 128 channels
//
// One physical NUM_CH-wide datapath is reused across output-channel groups.
// With NUM_CH=8, the three layers execute 4, 8 and 16 groups respectively.
module CNN #(
    parameter integer NUM_CH            = 8,
    parameter integer BASE_OUTPUT_CHANNELS = 32,
    parameter integer IMAGE_WIDTH       = 128,
    parameter integer IMAGE_HEIGHT      = 128,
    parameter integer DATA_ADDR_WIDTH   = 32,
    parameter integer BUFFER_DATA_WIDTH = 8,
    parameter integer WEIGHT_ADDR_WIDTH = 32,
    parameter logic LAYER0_MAXPOOL_EN = 1'b1,
    parameter logic LAYER1_MAXPOOL_EN = 1'b1,
    parameter logic LAYER2_MAXPOOL_EN = 1'b1,
    parameter logic LAYER0_RELU_EN    = 1'b1,
    parameter logic LAYER1_RELU_EN    = 1'b1,
    parameter logic LAYER2_RELU_EN    = 1'b1,

    parameter logic [WEIGHT_ADDR_WIDTH-1:0] WEIGHT_BASE_LAYER0 =
        32'h1000_0000,
    parameter logic [WEIGHT_ADDR_WIDTH-1:0] WEIGHT_BASE_LAYER1 =
        32'h1100_0000,
    parameter logic [WEIGHT_ADDR_WIDTH-1:0] WEIGHT_BASE_LAYER2 =
        32'h1200_0000
) (
    input  logic clk,
    input  logic rst_n,

    // CNN ACC controller interface.
    input  logic start,
    output logic done,
    output logic busy,

    // Existing external pingpongBuffer. Its read bank is selected internally
    // as r_sel=~w_sel and rData is registered one clock after rAddr.
    output logic [DATA_ADDR_WIDTH-1:0]   rAddr,
    input  logic [BUFFER_DATA_WIDTH-1:0] rData,
    output logic                         we,
    output logic                         w_sel,
    output logic [DATA_ADDR_WIDTH-1:0]   wAddr,
    output logic [BUFFER_DATA_WIDTH-1:0] wData,

    // External weight buffer.
    // A read requested with weight_ren returns all nine weights and the bias
    // for the physical NUM_CH-channel group one clock later.
    output logic                           weight_ren,
    output logic [WEIGHT_ADDR_WIDTH-1:0]   weight_addr,
    input  logic signed [7:0] weight_data [0:NUM_CH-1][0:8],
    input  logic signed [7:0] bias_data   [0:NUM_CH-1]
);

    localparam integer LAYER1_WIDTH =
        LAYER0_MAXPOOL_EN ? ((IMAGE_WIDTH-2)/2) : (IMAGE_WIDTH-2);
    localparam integer LAYER1_HEIGHT =
        LAYER0_MAXPOOL_EN ? ((IMAGE_HEIGHT-2)/2) : (IMAGE_HEIGHT-2);
    localparam integer LAYER2_WIDTH =
        LAYER1_MAXPOOL_EN ? ((LAYER1_WIDTH-2)/2) : (LAYER1_WIDTH-2);
    localparam integer LAYER2_HEIGHT =
        LAYER1_MAXPOOL_EN ? ((LAYER1_HEIGHT-2)/2) : (LAYER1_HEIGHT-2);
    localparam integer LAYER3_WIDTH =
        LAYER2_MAXPOOL_EN ? ((LAYER2_WIDTH-2)/2) : (LAYER2_WIDTH-2);
    localparam integer LAYER3_HEIGHT =
        LAYER2_MAXPOOL_EN ? ((LAYER2_HEIGHT-2)/2) : (LAYER2_HEIGHT-2);

    localparam integer CH_SELECT_WIDTH =
        (NUM_CH <= 1) ? 1 : $clog2(NUM_CH);
    localparam integer CONFIG_WIDTH = 16;
    localparam integer WEIGHT_PACKET_BYTES = 10 * NUM_CH;

    typedef enum logic [1:0] {
        CNN_IDLE,
        START_GROUP,
        RUN_GROUP
    } cnn_state_t;

    cnn_state_t cnn_state;

    // Visible in the integration waveform.
    logic [1:0] layer_index;
    logic [4:0] output_group_index;

    logic conv_start;
    logic conv_done;
    logic conv_busy;

    logic                    cfg_source_bank;
    logic [CONFIG_WIDTH-1:0] cfg_image_width;
    logic [CONFIG_WIDTH-1:0] cfg_image_height;
    logic [CONFIG_WIDTH-1:0] cfg_input_channels;
    logic [CONFIG_WIDTH-1:0] cfg_output_channels;
    logic [CONFIG_WIDTH-1:0] cfg_output_groups;
    logic [CONFIG_WIDTH-1:0] cfg_output_channel_base;
    logic cfg_MaxPool_en;
    logic cfg_Relu_en;
    logic [WEIGHT_ADDR_WIDTH-1:0] cfg_layer_weight_base;
    logic [WEIGHT_ADDR_WIDTH-1:0] cfg_group_weight_base;

    // Conv_Controller ↔ external Weight Buffer register bridge.
    logic controller_weight_load_start;
    logic [WEIGHT_ADDR_WIDTH-1:0] controller_weight_load_addr;
    logic weight_load_ready;
    logic weight_valid;
    logic weight_request_d;
    logic signed [7:0] weight_reg [0:NUM_CH-1][0:8];
    logic signed [7:0] bias_reg   [0:NUM_CH-1];

    // Conv_Controller ↔ external Data Buffer register bridge.
    logic controller_data_read_enable;
    logic controller_data_read_bank;
    logic [DATA_ADDR_WIDTH-1:0] controller_data_read_addr;
    logic data_read_ready;
    logic data_read_fire;
    logic data_request_d;
    logic [7:0] data_reg;
    logic data_reg_valid;

    logic shift_pixel_ready;
    logic shift_clear;
    logic [7:0] pixel_window [0:8];
    logic shift_window_valid;
    logic shift_window_ready;
    logic [1:0] shift_window_index;
    logic shift_tile_done;

    // CH and MaxPool path.
    logic [NUM_CH-1:0] ch_enable;
    logic acc_clear;
    logic first_ic;
    logic last_ic;
    logic ch_pixel_ready;
    logic signed [7:0] conv_result [0:NUM_CH-1];
    logic [NUM_CH-1:0] conv_result_valid;

    logic [NUM_CH-1:0] result_conv_ready;
    logic result_buffer_clear;
    logic [7:0] result_output_data;
    logic result_output_valid;
    logic result_output_ready;
    logic result_output_done;
    logic [CH_SELECT_WIDTH-1:0] result_output_channel;
    logic [1:0] result_output_position;
    logic [7:0] ch_wdata;

    logic controller_data_write_enable;
    logic controller_data_write_bank;
    logic [DATA_ADDR_WIDTH-1:0] controller_data_write_addr;

    logic [CONFIG_WIDTH-1:0] current_input_channel;
    logic [CONFIG_WIDTH-1:0] current_pool_x;
    logic [CONFIG_WIDTH-1:0] current_pool_y;
    integer reg_ch;
    integer reg_kernel;

    initial begin
        if ((NUM_CH <= 0)
            || (BUFFER_DATA_WIDTH < 8)
            || (((BASE_OUTPUT_CHANNELS << 0) % NUM_CH) != 0)
            || (((BASE_OUTPUT_CHANNELS << 1) % NUM_CH) != 0)
            || (((BASE_OUTPUT_CHANNELS << 2) % NUM_CH) != 0)) begin
            $error("BUFFER_DATA_WIDTH must be >=8 and NUM_CH must divide every output-channel count");
        end
    end

    assign busy = (cnn_state != CNN_IDLE);

    // The external memories are fixed-latency synchronous memories. Requests
    // are exposed only when the controller and the internal response register
    // can accept the corresponding transfer.
    assign data_read_fire =
        controller_data_read_enable && data_read_ready;
    assign rAddr     = controller_data_read_addr;

    assign weight_load_ready = 1'b1;
    assign weight_ren  =
        controller_weight_load_start && weight_load_ready;
    assign weight_addr = controller_weight_load_addr;

    assign we         = controller_data_write_enable;
    assign w_sel      = controller_data_write_bank;
    assign wAddr      = controller_data_write_addr;
    assign wData      =
        {{(BUFFER_DATA_WIDTH-8){1'b0}}, ch_wdata};

    // Select the run-time configuration for the active layer.
    always_comb begin
        cfg_source_bank        = 1'b0;
        cfg_image_width        = IMAGE_WIDTH;
        cfg_image_height       = IMAGE_HEIGHT;
        cfg_input_channels     =
            (layer_index == 0)
                ? 16'd1
                : (BASE_OUTPUT_CHANNELS << (layer_index-1));
        cfg_output_channels    =
            BASE_OUTPUT_CHANNELS << layer_index;
        cfg_output_groups      =
            (BASE_OUTPUT_CHANNELS << layer_index) / NUM_CH;
        cfg_output_channel_base =
            output_group_index * NUM_CH;
        cfg_layer_weight_base = WEIGHT_BASE_LAYER0;
        cfg_MaxPool_en = LAYER0_MAXPOOL_EN;
        cfg_Relu_en    = LAYER0_RELU_EN;

        case (layer_index)
            2'd0: begin
                cfg_source_bank     = 1'b0;
                cfg_image_width     = IMAGE_WIDTH;
                cfg_image_height    = IMAGE_HEIGHT;
                cfg_layer_weight_base = WEIGHT_BASE_LAYER0;
                cfg_MaxPool_en      = LAYER0_MAXPOOL_EN;
                cfg_Relu_en         = LAYER0_RELU_EN;
            end

            2'd1: begin
                cfg_source_bank     = 1'b1;
                cfg_image_width     = LAYER1_WIDTH;
                cfg_image_height    = LAYER1_HEIGHT;
                cfg_layer_weight_base = WEIGHT_BASE_LAYER1;
                cfg_MaxPool_en      = LAYER1_MAXPOOL_EN;
                cfg_Relu_en         = LAYER1_RELU_EN;
            end

            default: begin
                cfg_source_bank     = 1'b0;
                cfg_image_width     = LAYER2_WIDTH;
                cfg_image_height    = LAYER2_HEIGHT;
                cfg_layer_weight_base = WEIGHT_BASE_LAYER2;
                cfg_MaxPool_en      = LAYER2_MAXPOOL_EN;
                cfg_Relu_en         = LAYER2_RELU_EN;
            end
        endcase

        cfg_group_weight_base =
            cfg_layer_weight_base
            + output_group_index
                * (cfg_input_channels * WEIGHT_PACKET_BYTES);
    end

    // The external ping-pong buffer must contain the input image before start.
    // Execute all output groups of all three layers after start.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnn_state           <= CNN_IDLE;
            layer_index         <= 2'd0;
            output_group_index  <= 5'd0;
            conv_start          <= 1'b0;
            done                <= 1'b0;
        end else begin
            conv_start <= 1'b0;
            done       <= 1'b0;

            case (cnn_state)
                CNN_IDLE: begin
                    if (start) begin
                        layer_index         <= 2'd0;
                        output_group_index  <= 5'd0;
                        cnn_state           <= START_GROUP;
                    end
                end

                START_GROUP: begin
                    conv_start <= 1'b1;
                    cnn_state  <= RUN_GROUP;
                end

                RUN_GROUP: begin
                    if (conv_done) begin
                        if (output_group_index
                            == cfg_output_groups-1) begin
                            output_group_index <= 5'd0;

                            if (layer_index == 2) begin
                                cnn_state <= CNN_IDLE;
                                done      <= 1'b1;
                            end else begin
                                layer_index <= layer_index + 1'b1;
                                cnn_state   <= START_GROUP;
                            end
                        end else begin
                            output_group_index <=
                                output_group_index + 1'b1;
                            cnn_state <= START_GROUP;
                        end
                    end
                end

                default: begin
                    cnn_state <= CNN_IDLE;
                end
            endcase
        end
    end

    Conv_Controller #(
        .NUM_CH      (NUM_CH),
        .ADDR_WIDTH  (DATA_ADDR_WIDTH),
        .CONFIG_WIDTH(CONFIG_WIDTH)
    ) U_CONV_CONTROLLER (
        .clk                    (clk),
        .rst_n                  (rst_n),
        .start                  (conv_start),
        .source_bank            (cfg_source_bank),
        .MaxPool_en             (cfg_MaxPool_en),
        .cfg_image_width        (cfg_image_width),
        .cfg_image_height       (cfg_image_height),
        .cfg_input_channels     (cfg_input_channels),
        .cfg_output_channel_base(cfg_output_channel_base),
        .weight_base_addr       (cfg_group_weight_base),
        .busy                   (conv_busy),
        .done                   (conv_done),
        .weight_load_start      (controller_weight_load_start),
        .weight_load_addr       (controller_weight_load_addr),
        .weight_load_ready      (weight_load_ready),
        .weight_valid           (weight_valid),
        .data_read_enable       (controller_data_read_enable),
        .data_read_ready        (data_read_ready),
        .data_read_bank         (controller_data_read_bank),
        .data_read_addr         (controller_data_read_addr),
        .shift_pixel_ready      (shift_pixel_ready),
        .shift_window_valid     (shift_window_valid),
        .shift_window_ready     (shift_window_ready),
        .shift_tile_done        (shift_tile_done),
        .shift_clear            (shift_clear),
        .ch_enable              (ch_enable),
        .acc_clear              (acc_clear),
        .first_ic               (first_ic),
        .last_ic                (last_ic),
        .result_buffer_clear    (result_buffer_clear),
        .result_output_valid    (result_output_valid),
        .result_output_ready    (result_output_ready),
        .result_output_done     (result_output_done),
        .result_output_channel  (result_output_channel),
        .result_output_position (result_output_position),
        .data_write_enable      (controller_data_write_enable),
        .data_write_bank        (controller_data_write_bank),
        .data_write_addr        (controller_data_write_addr),
        .input_channel_index    (current_input_channel),
        .pool_x_index           (current_pool_x),
        .pool_y_index           (current_pool_y)
    );

    Shift_Buffer #(
        .PIXEL_WIDTH(8)
    ) U_SHIFT_BUFFER (
        .clk         (clk),
        .rst_n       (rst_n),
        .clear       (shift_clear),
        .pixel_data  (data_reg),
        .pixel_valid (data_reg_valid),
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
        .weight_in   (weight_reg),
        .bias_in     (bias_reg),
        .result_out  (conv_result),
        .result_valid(conv_result_valid),
        .result_ready(result_conv_ready)
    );

    CH_Result_Buffer #(
        .NUM_CH    (NUM_CH),
        .DATA_WIDTH(8)
    ) U_CH_RESULT_BUFFER (
        .clk            (clk),
        .rst_n          (rst_n),
        .clear          (result_buffer_clear),
        .MaxPool_en     (cfg_MaxPool_en),
        .Relu_en        (cfg_Relu_en),
        .conv_data      (conv_result),
        .conv_valid     (conv_result_valid),
        .conv_ready     (result_conv_ready),
        .output_data    (result_output_data),
        .output_valid   (result_output_valid),
        .output_ready   (result_output_ready),
        .output_channel (result_output_channel),
        .output_position(result_output_position),
        .output_done    (result_output_done)
    );

    assign shift_window_ready   = ch_pixel_ready;
    assign ch_wdata             = result_output_data;

    // Capture the synchronous external Data Buffer response in a CNN-local
    // register. A new response may replace the current value on the same
    // clock that Shift_Buffer consumes it.
    assign data_read_ready = !data_reg_valid || shift_pixel_ready;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            data_request_d <= 1'b0;
            data_reg       <= 8'd0;
            data_reg_valid <= 1'b0;
        end else begin
            data_request_d <= data_read_fire;

            if (data_reg_valid && shift_pixel_ready)
                data_reg_valid <= 1'b0;

            if (data_request_d) begin
                data_reg       <= rData[7:0];
                data_reg_valid <= 1'b1;
            end
        end
    end

    // Capture one complete external weight response in CNN-local registers.
    // weight_valid remains asserted until the next weight request starts.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            weight_request_d <= 1'b0;
            weight_valid     <= 1'b0;

            for (reg_ch = 0; reg_ch < NUM_CH; reg_ch = reg_ch + 1) begin
                bias_reg[reg_ch] <= 8'sd0;
                for (reg_kernel = 0; reg_kernel < 9;
                     reg_kernel = reg_kernel + 1) begin
                    weight_reg[reg_ch][reg_kernel] <= 8'sd0;
                end
            end
        end else begin
            weight_request_d <= weight_ren;

            if (weight_ren)
                weight_valid <= 1'b0;

            if (weight_request_d) begin
                for (reg_ch = 0; reg_ch < NUM_CH; reg_ch = reg_ch + 1) begin
                    bias_reg[reg_ch] <= bias_data[reg_ch];
                    for (reg_kernel = 0; reg_kernel < 9;
                         reg_kernel = reg_kernel + 1) begin
                        weight_reg[reg_ch][reg_kernel]
                            <= weight_data[reg_ch][reg_kernel];
                    end
                end

                weight_valid <= 1'b1;
            end
        end
    end

endmodule
