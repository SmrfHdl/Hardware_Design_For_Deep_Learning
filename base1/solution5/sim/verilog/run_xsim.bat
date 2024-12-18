
set PATH=
call D:/Setting_code/Xilinx/Vivado/2018.3/bin/xelab xil_defaultlib.apatb_processImage_top glbl -prj processImage.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "D:/Setting_code/Xilinx/Vivado/2018.3/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s processImage 
call D:/Setting_code/Xilinx/Vivado/2018.3/bin/xsim --noieeewarnings processImage -tclbatch processImage.tcl

