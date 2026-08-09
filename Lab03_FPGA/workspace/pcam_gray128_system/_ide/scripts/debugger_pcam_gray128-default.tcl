# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\project_19_Final_Project\workspace\pcam_gray128_system\_ide\scripts\debugger_pcam_gray128-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\project_19_Final_Project\workspace\pcam_gray128_system\_ide\scripts\debugger_pcam_gray128-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351BE7D6EA" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351BE7D6EA-23727093-0"}
fpga -file D:/project_19_Final_Project/260731_pcam_128x128_grayscale_sujeong/hw.runs/impl_1/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/project_19_Final_Project/workspace/pcam_gray128_platform/export/pcam_gray128_platform/hw/reset_add.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/project_19_Final_Project/workspace/pcam_gray128/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/project_19_Final_Project/workspace/pcam_gray128/Debug/pcam_gray128.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
