module cnn_controller (
    input  logic clk,
    input  logic rst_n,
    //conv
    output logic conv_start,
    input  logic conv_Done,
    //fc
    output logic fc_start,
    input  logic fc_done,
    //outside 
    input  logic cnn_start,
    output logic push_img_start,
    input  logic push_img_done,
    output logic done,
    output logic busy
);



endmodule
