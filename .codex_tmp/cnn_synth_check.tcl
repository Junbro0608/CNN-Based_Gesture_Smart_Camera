read_verilog -sv [list \
    FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CH.sv \
    FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CH_wrapper.sv \
    FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Shift_Buffer.sv \
    FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CH_Result_Buffer.sv \
    FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Conv_Controller.sv \
    FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Standalone_MaxPool.sv \
    FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Feature_Buffer_Mux.sv \
    FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CNN.sv \
]

synth_design -top CNN -part xc7a35tcpg236-1 -mode out_of_context

report_utilization -file .codex_tmp/cnn_synth_utilization.rpt
report_timing_summary -file .codex_tmp/cnn_synth_timing.rpt
report_drc -file .codex_tmp/cnn_synth_drc.rpt
