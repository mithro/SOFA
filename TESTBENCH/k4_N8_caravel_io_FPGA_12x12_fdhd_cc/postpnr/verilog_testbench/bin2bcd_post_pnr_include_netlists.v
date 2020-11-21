//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Nov 20 15:48:46 2020
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include simulation defines -----
`include "/research/ece/lnis/USERS/tang/github/skywater-openfpga/TESTBENCH/k4_N8_caravel_io_FPGA_12x12_fdhd_cc/prepnr/verilog_testbench/define_simulation.v"

`include "/research/ece/lnis/USERS/tang/github/skywater-openfpga/HDL/common/skywater_function_verification.v"

// ------ Include Skywater cell netlists -----
`include "/research/ece/lnis/USERS/tang/github/skywater-openfpga/TESTBENCH/common/post_pnr_fpga_cells.v"

// ------ Include fabric top-level netlists -----
//`include "/research/ece/lnis/USERS/tang/github/skywater-openfpga/FPGA1212_FC_HD_SKY_PNR/fpga_core/fpga_core_icv_in_design.pt.v"
`include "/research/ece/lnis/USERS/DARPA_ERI/Tapeout/Nov2020_Skywater/FPGA1212_FLAT_HD_SKY_PNR/fpga_top/fpga_top_icv_in_design.pt.v"

`ifdef AUTOCHECKED_SIMULATION
	`include "bin2bcd_output_verilog.v"
`endif

`ifdef AUTOCHECKED_SIMULATION
	`include "/research/ece/lnis/USERS/tang/github/skywater-openfpga/TESTBENCH/k4_N8_caravel_io_FPGA_12x12_fdhd_cc/postpnr/verilog_testbench/bin2bcd_post_pnr_autocheck_top_tb.v"
`endif

