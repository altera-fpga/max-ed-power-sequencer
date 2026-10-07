## Copyright (C) 2025  Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus Prime License Agreement,
## the Altera IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Altera and sold by Altera or its authorized distributors.  Please
## refer to the Altera Software License Subscription Agreements 
## on the Quartus Prime software download page.
 
 
## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Standard Edition"
 
## DATE    "Fri Jun 12 13:44:29 2026"
 
##
## DEVICE  "10M08SAE144C8G"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name clk_ref -period 50.0MHz [get_ports {clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************

derive_pll_clocks
derive_clock_uncertainty
# Constrain the clock divider on the internal flash, if it's instantiated
if {[get_collection_size [get_registers *avmm_data_controller|flash_se_neg_reg -nowarn]] != 0} {
  create_generated_clock -name flash_se_neg_reg -divide_by 2 \
    -source [get_pins -compatibility_mode { *avmm_data_controller|flash_se_neg_reg|clk }] \
    [get_pins -compatibility_mode { *avmm_data_controller|flash_se_neg_reg|q } ]
}


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

derive_clock_uncertainty


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

