#RTL
./src/Buffer.sv
./src/CNN_acc_controller.sv
./src/CNN_accelerator.sv
./src/padding.sv
./src/requantize.sv

./src/conv/CH.sv
./src/conv/CH_Result_Buffer.sv
./src/conv/CH_wrapper.sv
./src/conv/Conv_Controller.sv
./src/conv/Feature_Buffer_Mux.sv
./src/conv/MaxPool_2x2.sv
./src/conv/MaxPool_wrapper.sv
./src/conv/Output_Mux.sv
./src/conv/Shift_Buffer.sv
./src/conv/Standalone_MaxPool.sv
./src/conv/Weight_Loader.sv
./src/conv/conv.sv

./src/fc/fc.sv
./src/fc/fc_controller.sv
./src/fc/fc_core.sv
./src/fc/fc_memory_adapter.sv
./src/fc/fc_output_buffer.sv
./src/fc/fc_pe.sv
./src/fc/fc_pe_array.sv
./src/fc/fc_quantizer.sv


#Testbench
./testbench/tb_CNN_400_imge.sv
