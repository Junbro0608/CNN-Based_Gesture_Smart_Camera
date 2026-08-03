# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\project_19_Final_Project\vitis_gray128\pcam_gray128_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\project_19_Final_Project\vitis_gray128\pcam_gray128_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {pcam_gray128_platform}\
-hw {D:\project_19_Final_Project\260731_pcam_128x128_grayscale\pcam_gray128_v2.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -no-boot-bsp -fsbl-target {psu_cortexa53_0} -out {D:/project_19_Final_Project/vitis_gray128}

platform write
platform generate -domains 
platform active {pcam_gray128_platform}
platform generate
platform config -create-boot-bsp
platform write
platform generate
platform config -updatehw {D:/project_19_Final_Project/260731_pcam_128x128_grayscale/pcam_overlay.xsa}
platform generate -domains 
platform active {pcam_gray128_platform}
platform config -updatehw {D:/project_19_Final_Project/260731_pcam_128x128_grayscale/pcam_overlay_jetson_controller.xsa}
platform clean
platform generate
platform config -updatehw {D:/project_19_Final_Project/260731_pcam_128x128_grayscale/pcam_overlay_jetson_controller.xsa}
platform generate -domains 
platform config -updatehw {D:/project_19_Final_Project/260731_pcam_128x128_grayscale/pcam_overlay_jetson_controller_v2.xsa}
platform generate -domains 
platform active {pcam_gray128_platform}
platform config -updatehw {D:/project_19_Final_Project/260731_pcam_128x128_grayscale/pcam_gray128_v3.xsa}
platform generate -domains 
