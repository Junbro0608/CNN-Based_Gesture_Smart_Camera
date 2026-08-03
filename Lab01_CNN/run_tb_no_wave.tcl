open_project "D:/git_clone/CNN-Based_Gesture_Smart_Camera/Lab00_Dram_controller/Dram_controller/Dram_controller.xpr"
set_property top tb_CNN_accelerator_mem [get_filesets sim_1]
launch_simulation -mode behavioral -simset sim_1
run all
close_sim
exit
