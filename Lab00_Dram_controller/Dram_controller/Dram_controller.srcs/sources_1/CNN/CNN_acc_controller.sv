module CNN_acc_controller (
    input logic clk,
    input logic rst_n,
    //conv_ctrl
    output logic conv_start,
    output logic conv_conv_en,
    output logic conv_Relu_en,
    output logic conv_MaxPool_en,
    input logic cnn_Done,
    //fc_ctrl
    output logic fc_start,
    output logic fc_finish_en,
    output logic [$clog2(1024)-1:0] fc_input_length,
    output logic [$clog2(64)-1:0] fc_output_length,
    input logic fc_Done,
    //weight_Move_ctrl
    output logic dram_move_start,
    input logic dram_move_Done,
    //Mem_ctrl
    output logic img_MUX_sel,
    output logic CONVFC_MUX_sel,
    output logic pingpong_W_sel,  //0 : A write 1 : B write 메모리로 선언
    //outside
    input logic cnn_start,
    output logic Done,
    output logic busy
);
    logic dram_move_Done_reg;
    logic cnn_Done_reg;
    logic fc_Done_reg;
    logic dram_move_Done_reg_d;
    logic cnn_Done_reg_d;
    logic fc_Done_reg_d;
    logic dram_move_Done_clr;
    logic cnn_Done_clr;
    logic fc_Done_clr;

    typedef enum logic [3:0] {
        IDLE,
        WT_GET,
        CONV_1,
        CONV_2,
        CONV_3,
        MAXPOOL_1,
        MAXPOOL_2,
        FC_1,
        FC_2
    } state_t;

    state_t state, next_state;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
        end else begin
            state <= next_state;
        end
    end

    // done flag register: set by input done, clear by clr signal
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            dram_move_Done_reg   <= 1'b0;
            cnn_Done_reg         <= 1'b0;
            fc_Done_reg          <= 1'b0;
            dram_move_Done_reg_d <= 1'b0;
            cnn_Done_reg_d       <= 1'b0;
            fc_Done_reg_d        <= 1'b0;
        end else begin
            if (dram_move_Done) dram_move_Done_reg <= 1'b1;
            if (cnn_Done) cnn_Done_reg <= 1'b1;
            if (fc_Done) fc_Done_reg <= 1'b1;

            if (dram_move_Done_clr) dram_move_Done_reg <= 1'b0;
            if (cnn_Done_clr) cnn_Done_reg <= 1'b0;
            if (fc_Done_clr) fc_Done_reg <= 1'b0;

            if (dram_move_Done_clr) dram_move_Done_reg_d <= 1'b0;
            else dram_move_Done_reg_d <= dram_move_Done_reg;

            if (cnn_Done_clr) cnn_Done_reg_d <= 1'b0;
            else cnn_Done_reg_d <= cnn_Done_reg;

            if (fc_Done_clr) fc_Done_reg_d <= 1'b0;
            else fc_Done_reg_d <= fc_Done_reg;
        end
    end

    always_comb begin
        next_state         = state;

        // default outputs to avoid latch inference
        conv_start         = 0;
        conv_conv_en       = 0;
        conv_Relu_en       = 0;
        conv_MaxPool_en    = 0;
        fc_start           = 0;
        fc_finish_en       = 0;
        fc_input_length    = 0;
        fc_output_length   = 0;
        dram_move_start    = 0;
        pingpong_W_sel     = 0;
        Done               = 0;

        // busy is state-derived
        busy               = (state != IDLE);

        dram_move_Done_clr = 0;
        cnn_Done_clr       = 0;
        fc_Done_clr        = 0;

        //FC가 메모리 점유 MUX 스위칭
        if (state == FC_1 || state == FC_2) CONVFC_MUX_sel = 1;  //FC가 사용
        else CONVFC_MUX_sel = 0;  //CONV가 사용
        //이미지 데이터 사용 MUX 스위칭
        if (state == CONV_1) img_MUX_sel = 1;  // img 사용
        else img_MUX_sel = 0;  //내부 메모리 사용

        case (state)
            IDLE: begin
                //output hendsheck
                //done_reg
                dram_move_Done_clr = 1;
                cnn_Done_clr       = 1;
                fc_Done_clr        = 1;
                if (cnn_start) begin
                    next_state      = WT_GET;
                    dram_move_start = 1;  //for conv_1
                end
            end
            WT_GET: begin  //W_sel_read A
                if (dram_move_Done_reg_d) begin
                    next_state                                    = CONV_1;
                    conv_start                                    = 1;  //conv_1_start
                    dram_move_start                               = 1;  //for conv_2
                    pingpong_W_sel                                = 1;
                    dram_move_Done_clr                            = 1;
                    {conv_conv_en, conv_Relu_en, conv_MaxPool_en} = 3'b111;
                end
            end
            CONV_1: begin  //W_sel_read B
                if (cnn_Done_reg_d && dram_move_Done_reg_d) begin
                    next_state                                    = CONV_2;
                    conv_start                                    = 1;  //conv_2_start
                    dram_move_start                               = 1;  //for conv_3
                    pingpong_W_sel                                = 0;
                    cnn_Done_clr                                  = 1;
                    dram_move_Done_clr                            = 1;
                    {conv_conv_en, conv_Relu_en, conv_MaxPool_en} = 3'b111;
                end
            end
            CONV_2: begin  //W_sel_read A
                if (cnn_Done_reg_d && dram_move_Done_reg_d) begin
                    next_state                                    = CONV_3;
                    conv_start                                    = 1;  //conv_3_start
                    pingpong_W_sel                                = 1;
                    cnn_Done_clr                                  = 1;
                    dram_move_Done_clr                            = 1;
                    {conv_conv_en, conv_Relu_en, conv_MaxPool_en} = 3'b111;
                end
            end
            CONV_3: begin  //W_sel_read B
                if (cnn_Done_reg_d) begin
                    next_state                                    = MAXPOOL_1;
                    conv_start                                    = 1;  //MAXPOOL_1_start
                    pingpong_W_sel                                = 0;
                    {conv_conv_en, conv_Relu_en, conv_MaxPool_en} = 3'b001;
                    cnn_Done_clr                                  = 1;
                end
            end
            MAXPOOL_1: begin  //W_sel_read A
                conv_MaxPool_en = 1;
                if (cnn_Done_reg_d) begin
                    next_state                                    = MAXPOOL_2;
                    conv_start                                    = 1;  //MAXPOOL_2_start
                    dram_move_start                               = 1;  //for fc_1
                    pingpong_W_sel                                = 1;
                    {conv_conv_en, conv_Relu_en, conv_MaxPool_en} = 3'b001;
                end
            end
            MAXPOOL_2: begin  //W_sel_read B
                if (cnn_Done_reg_d) begin
                    next_state       = FC_1;
                    fc_start         = 1;
                    dram_move_start  = 1;  //for FC_2
                    pingpong_W_sel   = 0;
                    cnn_Done_clr     = 1;
                    fc_input_length  = 1024;
                    fc_output_length = 64;
                end
            end
            FC_1: begin  //W_sel_read A
                if (fc_Done_reg_d && dram_move_Done_reg_d) begin
                    next_state         = FC_2;
                    fc_start           = 1;
                    dram_move_start    = 1;
                    pingpong_W_sel     = 1;
                    fc_Done_clr        = 1;
                    dram_move_Done_clr = 1;
                    fc_input_length    = 64;
                    fc_output_length   = 1;
                    fc_finish_en       = 1;
                end
            end
            FC_2: begin  //W_sel_read B
                if (fc_Done_reg_d) begin
                    next_state  = IDLE;
                    fc_Done_clr = 1;
                    Done        = 1;
                end
            end
            default: next_state = IDLE;
        endcase

    end

endmodule
