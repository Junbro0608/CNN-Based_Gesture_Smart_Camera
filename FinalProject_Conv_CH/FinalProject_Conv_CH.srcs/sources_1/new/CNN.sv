`timescale 1ns / 1ps

// Configurable one-to-three-layer convolution accelerator.
//
// The input channel count of Layer 0 is one. Each later layer receives the
// output channels of the preceding layer. For example:
//   NUM_LAYERS=1: 1 -> 8
//   NUM_LAYERS=2: 1 -> 16 -> 32
//   NUM_LAYERS=3: 1 -> 32 -> 64 -> 128
//
// One physical NUM_CH-wide datapath is reused across output-channel groups.
// Every active output-channel count must therefore be a multiple of NUM_CH.
module CNN #(
    parameter integer NUM_CH            = 8,
    parameter integer NUM_LAYERS         = 3,
    parameter integer LAYER0_OUTPUT_CHANNELS = 16,
    parameter integer LAYER1_OUTPUT_CHANNELS = 32,
    parameter integer LAYER2_OUTPUT_CHANNELS = 64,
    // Logical image size before the external one-pixel zero border.
    // The external buffer supplies every Conv input already padded:
    //   128 -> Layer inputs 130, 66, 34
    //    64 -> Layer inputs  66, 34, 18
    parameter integer INPUT_WIDTH       = 128,
    parameter integer INPUT_HEIGHT      = 128,
    parameter integer DATA_ADDR_WIDTH   = 32,
    parameter integer BUFFER_DATA_WIDTH = 8,
    parameter integer WEIGHT_ADDR_WIDTH = 32,
    parameter logic LAYER0_MAXPOOL_EN = 1'b1,
    parameter logic LAYER1_MAXPOOL_EN = 1'b1,
    parameter logic LAYER2_MAXPOOL_EN = 1'b1,
    parameter logic LAYER0_RELU_EN    = 1'b1,
    parameter logic LAYER1_RELU_EN    = 1'b1,
    parameter logic LAYER2_RELU_EN    = 1'b1,
    // Final 128x128 architecture executes Pool4 and Pool5 after Layer 3.
    // This may be disabled only by focused Conv-only testbenches.
    parameter logic ENABLE_STANDALONE_POOL = 1'b1,

    // The external controller reloads the Weight Buffer after each layer.
    // Therefore every layer starts reading its newly loaded weights at zero.
    parameter logic [WEIGHT_ADDR_WIDTH-1:0] WEIGHT_BASE_LAYER0 = '0,
    parameter logic [WEIGHT_ADDR_WIDTH-1:0] WEIGHT_BASE_LAYER1 = '0,
    parameter logic [WEIGHT_ADDR_WIDTH-1:0] WEIGHT_BASE_LAYER2 = '0
) (
    input  logic clk,
    input  logic rst_n,

    // CNN ACC controller interface.
    input  logic start,
    output logic done,
    output logic busy,

    // External asynchronous-read pingpongBuffer. Its read bank is selected
    // internally as r_sel=~w_sel and rData follows rAddr combinationally.
    output logic [DATA_ADDR_WIDTH-1:0]   rAddr,
    input  logic signed [BUFFER_DATA_WIDTH-1:0] rData,
    output logic                         we,
    output logic                         w_sel,
    output logic [DATA_ADDR_WIDTH-1:0]   wAddr,
    output logic signed [BUFFER_DATA_WIDTH-1:0] wData,

    // External asynchronous-read weight buffer. weight_data and bias_data
    // follow weight_addr combinationally and are captured when weight_ren=1.
    output logic                           weight_ren,
    output logic [WEIGHT_ADDR_WIDTH-1:0]   weight_addr,
    input  logic signed [7:0] weight_data [0:NUM_CH-1][0:8],
    input  logic signed [31:0] bias_data  [0:NUM_CH-1]
);

    // Physical padded input of Conv Layer 1.
    localparam integer LAYER1_PAD_WIDTH  = INPUT_WIDTH + 2;
    localparam integer LAYER1_PAD_HEIGHT = INPUT_HEIGHT + 2;

    // Logical feature-map size produced by Layer 1.
    localparam integer LAYER1_OUTPUT_WIDTH =
        LAYER0_MAXPOOL_EN ? (INPUT_WIDTH/2) : INPUT_WIDTH;
    localparam integer LAYER1_OUTPUT_HEIGHT =
        LAYER0_MAXPOOL_EN ? (INPUT_HEIGHT/2) : INPUT_HEIGHT;

    // Physical padded input of Conv Layer 2.
    localparam integer LAYER2_PAD_WIDTH  = LAYER1_OUTPUT_WIDTH + 2;
    localparam integer LAYER2_PAD_HEIGHT = LAYER1_OUTPUT_HEIGHT + 2;

    // Logical feature-map size produced by Layer 2.
    localparam integer LAYER2_OUTPUT_WIDTH =
        LAYER1_MAXPOOL_EN
            ? (LAYER1_OUTPUT_WIDTH/2) : LAYER1_OUTPUT_WIDTH;
    localparam integer LAYER2_OUTPUT_HEIGHT =
        LAYER1_MAXPOOL_EN
            ? (LAYER1_OUTPUT_HEIGHT/2) : LAYER1_OUTPUT_HEIGHT;

    // Physical padded input of Conv Layer 3.
    localparam integer LAYER3_PAD_WIDTH  = LAYER2_OUTPUT_WIDTH + 2;
    localparam integer LAYER3_PAD_HEIGHT = LAYER2_OUTPUT_HEIGHT + 2;

    // Logical feature-map size produced by Layer 3. These values are also
    // the input dimensions of the later standalone Pool4 engine.
    localparam integer LAYER3_OUTPUT_WIDTH =
        LAYER2_MAXPOOL_EN
            ? (LAYER2_OUTPUT_WIDTH/2) : LAYER2_OUTPUT_WIDTH;
    localparam integer LAYER3_OUTPUT_HEIGHT =
        LAYER2_MAXPOOL_EN
            ? (LAYER2_OUTPUT_HEIGHT/2) : LAYER2_OUTPUT_HEIGHT;

    localparam integer CH_SELECT_WIDTH =
        (NUM_CH <= 1) ? 1 : $clog2(NUM_CH);
    localparam integer CONFIG_WIDTH = 16;
    // Nine signed 8-bit weights and one signed 32-bit bias per channel.
    localparam integer WEIGHT_PACKET_BYTES = 13 * NUM_CH;

    typedef enum logic [3:0] {
        CNN_IDLE,
        START_GROUP,
        RUN_GROUP,
        STAGE_DONE,
        WAIT_STAGE_START,
        START_POOL4,
        RUN_POOL4,
        START_POOL5,
        RUN_POOL5
    } cnn_state_t;

    cnn_state_t cnn_state;

    localparam logic [1:0] NEXT_CONV  = 2'd0;
    localparam logic [1:0] NEXT_POOL4 = 2'd1;
    localparam logic [1:0] NEXT_POOL5 = 2'd2;

    logic [1:0] next_stage;
    logic       final_stage_done;

    // Visible in the integration waveform.
    logic [1:0] layer_index;
    logic [CONFIG_WIDTH-1:0] output_group_index;

    logic conv_start;
    logic conv_done;
    logic conv_busy;
    logic pool_start;
    logic pool_done;
    logic pool_busy;
    logic select_pool;

    // Conv engine side of Feature_Buffer_Mux.
    logic [DATA_ADDR_WIDTH-1:0] conv_rAddr;
    logic signed [BUFFER_DATA_WIDTH-1:0] conv_rData;
    logic conv_we;
    logic conv_w_sel;
    logic [DATA_ADDR_WIDTH-1:0] conv_wAddr;
    logic signed [BUFFER_DATA_WIDTH-1:0] conv_wData;

    // Standalone MaxPool side of Feature_Buffer_Mux.
    logic [DATA_ADDR_WIDTH-1:0] pool_rAddr;
    logic signed [BUFFER_DATA_WIDTH-1:0] pool_rData;
    logic pool_we;
    logic pool_w_sel;
    logic [DATA_ADDR_WIDTH-1:0] pool_wAddr;
    logic signed [BUFFER_DATA_WIDTH-1:0] pool_wData;

    logic pool_source_bank;
    logic [CONFIG_WIDTH-1:0] pool_input_width;
    logic [CONFIG_WIDTH-1:0] pool_input_height;
    logic [CONFIG_WIDTH-1:0] pool_channel_count;

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
    logic signed [7:0] weight_reg [0:NUM_CH-1][0:8];
    logic signed [31:0] bias_reg  [0:NUM_CH-1];

    // Conv_Controller ↔ external Data Buffer register bridge.
    logic controller_data_read_enable;
    logic controller_data_read_bank;
    logic [DATA_ADDR_WIDTH-1:0] controller_data_read_addr;
    logic data_read_ready;
    logic data_read_fire;
    logic signed [7:0] data_reg;
    logic data_reg_valid;

    logic shift_pixel_ready;
    logic shift_clear;
    logic signed [7:0] pixel_window [0:8];
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
    logic signed [7:0] result_output_data;
    logic result_output_valid;
    logic result_output_ready;
    logic result_output_done;
    logic [CH_SELECT_WIDTH-1:0] result_output_channel;
    logic [1:0] result_output_position;
    logic signed [7:0] ch_wdata;

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
            || (INPUT_WIDTH <= 0)
            || (INPUT_HEIGHT <= 0)
            || (NUM_LAYERS < 1)
            || (NUM_LAYERS > 3)
            || (LAYER0_OUTPUT_CHANNELS <= 0)
            || ((LAYER0_OUTPUT_CHANNELS % NUM_CH) != 0)
            || ((NUM_LAYERS >= 2)
                && ((LAYER1_OUTPUT_CHANNELS <= 0)
                    || ((LAYER1_OUTPUT_CHANNELS % NUM_CH) != 0)))
            || ((NUM_LAYERS >= 3)
                && ((LAYER2_OUTPUT_CHANNELS <= 0)
                    || ((LAYER2_OUTPUT_CHANNELS % NUM_CH) != 0)))) begin
            $error(
                "NUM_LAYERS must be 1..3, BUFFER_DATA_WIDTH must be >=8, and NUM_CH must divide every active output-channel count"
            );
        end
    end

    // Each accepted start executes exactly one buffer-processing stage.
    // done pulses after that stage's final synchronous write. The external
    // controller may then update Data/Weight Buffers and issue the next start.
    assign busy =
        (cnn_state != CNN_IDLE)
        && (cnn_state != STAGE_DONE)
        && (cnn_state != WAIT_STAGE_START);
    assign done = (cnn_state == STAGE_DONE);

    // The external memories use asynchronous reads. Their combinational read
    // values are captured only on an accepted controller request.
    assign data_read_fire =
        controller_data_read_enable && data_read_ready;
    assign conv_rAddr = controller_data_read_addr;

    assign weight_load_ready = 1'b1;
    assign weight_ren  =
        controller_weight_load_start && weight_load_ready;
    assign weight_addr = controller_weight_load_addr;

    assign conv_we    = controller_data_write_enable;
    assign conv_w_sel = controller_data_write_bank;
    assign conv_wAddr = controller_data_write_addr;
    assign conv_wData =
        {{(BUFFER_DATA_WIDTH-8){ch_wdata[7]}}, ch_wdata};

    // Select the run-time configuration for the active layer.
    always_comb begin
        cfg_source_bank        = 1'b0;
        cfg_image_width        = LAYER1_PAD_WIDTH;
        cfg_image_height       = LAYER1_PAD_HEIGHT;
        cfg_input_channels     = 16'd1;
        cfg_output_channels    = LAYER0_OUTPUT_CHANNELS;
        cfg_output_groups      = LAYER0_OUTPUT_CHANNELS / NUM_CH;
        cfg_output_channel_base =
            output_group_index * NUM_CH;
        cfg_layer_weight_base = WEIGHT_BASE_LAYER0;
        cfg_MaxPool_en = LAYER0_MAXPOOL_EN;
        cfg_Relu_en    = LAYER0_RELU_EN;

        case (layer_index)
            2'd0: begin
                cfg_source_bank     = 1'b0;
                cfg_image_width     = LAYER1_PAD_WIDTH;
                cfg_image_height    = LAYER1_PAD_HEIGHT;
                cfg_layer_weight_base = WEIGHT_BASE_LAYER0;
                cfg_MaxPool_en      = LAYER0_MAXPOOL_EN;
                cfg_Relu_en         = LAYER0_RELU_EN;
            end

            2'd1: begin
                cfg_source_bank     = 1'b1;
                cfg_image_width     = LAYER2_PAD_WIDTH;
                cfg_image_height    = LAYER2_PAD_HEIGHT;
                cfg_input_channels  = LAYER0_OUTPUT_CHANNELS;
                cfg_output_channels = LAYER1_OUTPUT_CHANNELS;
                cfg_output_groups   =
                    LAYER1_OUTPUT_CHANNELS / NUM_CH;
                cfg_layer_weight_base = WEIGHT_BASE_LAYER1;
                cfg_MaxPool_en      = LAYER1_MAXPOOL_EN;
                cfg_Relu_en         = LAYER1_RELU_EN;
            end

            default: begin
                cfg_source_bank     = 1'b0;
                cfg_image_width     = LAYER3_PAD_WIDTH;
                cfg_image_height    = LAYER3_PAD_HEIGHT;
                cfg_input_channels  = LAYER1_OUTPUT_CHANNELS;
                cfg_output_channels = LAYER2_OUTPUT_CHANNELS;
                cfg_output_groups   =
                    LAYER2_OUTPUT_CHANNELS / NUM_CH;
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

    // Pool4 and Pool5 reuse one standalone engine. Layer 3 writes its compact
    // 64x16x16 result to Bank B; Pool4 reads B/writes A, then Pool5 reads
    // A/writes B.
    always_comb begin
        select_pool =
            (cnn_state == START_POOL4)
            || (cnn_state == RUN_POOL4)
            || (cnn_state == START_POOL5)
            || (cnn_state == RUN_POOL5);

        pool_source_bank  = 1'b1;
        pool_input_width  = LAYER3_OUTPUT_WIDTH;
        pool_input_height = LAYER3_OUTPUT_HEIGHT;
        pool_channel_count = LAYER2_OUTPUT_CHANNELS;

        if ((cnn_state == START_POOL5)
            || (cnn_state == RUN_POOL5)) begin
            pool_source_bank  = 1'b0;
            pool_input_width  = LAYER3_OUTPUT_WIDTH/2;
            pool_input_height = LAYER3_OUTPUT_HEIGHT/2;
        end
    end

    // The external ping-pong buffer must contain the current stage input
    // before start. One start executes one Conv layer, Pool4, or Pool5.
    // After every stage, done pulses and the FSM waits for the next start so
    // that the external controller can update the ping-pong/weight buffers.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnn_state           <= CNN_IDLE;
            layer_index         <= 2'd0;
            output_group_index  <= '0;
            conv_start          <= 1'b0;
            pool_start          <= 1'b0;
            next_stage          <= NEXT_CONV;
            final_stage_done    <= 1'b0;
        end else begin
            conv_start <= 1'b0;
            pool_start <= 1'b0;

            case (cnn_state)
                CNN_IDLE: begin
                    if (start) begin
                        layer_index         <= 2'd0;
                        output_group_index  <= '0;
                        next_stage          <= NEXT_CONV;
                        final_stage_done    <= 1'b0;
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
                            output_group_index <= '0;

                            if (layer_index < NUM_LAYERS-1) begin
                                layer_index      <= layer_index + 1'b1;
                                next_stage       <= NEXT_CONV;
                                final_stage_done <= 1'b0;
                            end else if (ENABLE_STANDALONE_POOL
                                         && (NUM_LAYERS == 3)) begin
                                next_stage       <= NEXT_POOL4;
                                final_stage_done <= 1'b0;
                            end else begin
                                final_stage_done <= 1'b1;
                            end

                            cnn_state <= STAGE_DONE;
                        end else begin
                            output_group_index <=
                                output_group_index + 1'b1;
                            cnn_state <= START_GROUP;
                        end
                    end
                end

                STAGE_DONE: begin
                    // done is high throughout this state. For a non-final
                    // stage, wait until the external controller has updated
                    // its buffers and supplies another start pulse.
                    if (final_stage_done) begin
                        layer_index         <= 2'd0;
                        output_group_index  <= '0;
                        next_stage          <= NEXT_CONV;
                        final_stage_done    <= 1'b0;
                        cnn_state           <= CNN_IDLE;
                    end else begin
                        cnn_state <= WAIT_STAGE_START;
                    end
                end

                WAIT_STAGE_START: begin
                    if (start) begin
                        case (next_stage)
                            NEXT_POOL4: cnn_state <= START_POOL4;
                            NEXT_POOL5: cnn_state <= START_POOL5;
                            default:    cnn_state <= START_GROUP;
                        endcase
                    end
                end

                START_POOL4: begin
                    pool_start <= 1'b1;
                    cnn_state  <= RUN_POOL4;
                end

                RUN_POOL4: begin
                    if (pool_done) begin
                        next_stage       <= NEXT_POOL5;
                        final_stage_done <= 1'b0;
                        cnn_state        <= STAGE_DONE;
                    end
                end

                START_POOL5: begin
                    pool_start <= 1'b1;
                    cnn_state  <= RUN_POOL5;
                end

                RUN_POOL5: begin
                    if (pool_done) begin
                        final_stage_done <= 1'b1;
                        cnn_state        <= STAGE_DONE;
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

    Standalone_MaxPool #(
        .DATA_WIDTH  (BUFFER_DATA_WIDTH),
        .ADDR_WIDTH  (DATA_ADDR_WIDTH),
        .CONFIG_WIDTH(CONFIG_WIDTH)
    ) U_STANDALONE_MAXPOOL (
        .clk          (clk),
        .rst_n        (rst_n),
        .start        (pool_start),
        .source_bank  (pool_source_bank),
        .input_width  (pool_input_width),
        .input_height (pool_input_height),
        .channel_count(pool_channel_count),
        .busy         (pool_busy),
        .done         (pool_done),
        .rAddr        (pool_rAddr),
        .rData        (pool_rData),
        .we           (pool_we),
        .w_sel        (pool_w_sel),
        .wAddr        (pool_wAddr),
        .wData        (pool_wData)
    );

    Feature_Buffer_Mux #(
        .DATA_WIDTH(BUFFER_DATA_WIDTH),
        .ADDR_WIDTH(DATA_ADDR_WIDTH)
    ) U_FEATURE_BUFFER_MUX (
        .select_pool (select_pool),
        .conv_rAddr  (conv_rAddr),
        .conv_rData  (conv_rData),
        .conv_we     (conv_we),
        .conv_w_sel  (conv_w_sel),
        .conv_wAddr  (conv_wAddr),
        .conv_wData  (conv_wData),
        .pool_rAddr  (pool_rAddr),
        .pool_rData  (pool_rData),
        .pool_we     (pool_we),
        .pool_w_sel  (pool_w_sel),
        .pool_wAddr  (pool_wAddr),
        .pool_wData  (pool_wData),
        .buffer_rAddr(rAddr),
        .buffer_rData(rData),
        .buffer_we   (we),
        .buffer_w_sel(w_sel),
        .buffer_wAddr(wAddr),
        .buffer_wData(wData)
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

    // Capture the asynchronous external Data Buffer output in a CNN-local
    // register. A new value may replace the current value on the same clock
    // that Shift_Buffer consumes it.
    assign data_read_ready = !data_reg_valid || shift_pixel_ready;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            data_reg       <= 8'd0;
            data_reg_valid <= 1'b0;
        end else begin
            if (data_reg_valid && shift_pixel_ready)
                data_reg_valid <= 1'b0;

            if (data_read_fire) begin
                data_reg       <= conv_rData[7:0];
                data_reg_valid <= 1'b1;
            end
        end
    end

    // Capture one complete asynchronous weight-buffer output in CNN-local
    // registers. weight_valid remains asserted until the next request.
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            weight_valid     <= 1'b0;

            for (reg_ch = 0; reg_ch < NUM_CH; reg_ch = reg_ch + 1) begin
                bias_reg[reg_ch] <= 32'sd0;
                for (reg_kernel = 0; reg_kernel < 9;
                     reg_kernel = reg_kernel + 1) begin
                    weight_reg[reg_ch][reg_kernel] <= 8'sd0;
                end
            end
        end else begin
            if (weight_ren) begin
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
