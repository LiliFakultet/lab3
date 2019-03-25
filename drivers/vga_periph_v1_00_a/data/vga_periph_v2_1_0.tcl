##############################################################################
## Filename:          D:\RA31-2016\LPRS2\lab3/drivers/vga_periph_v1_00_a/data/vga_periph_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Mon Mar 25 10:57:37 2019 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "vga_periph" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
