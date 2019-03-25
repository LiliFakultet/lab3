////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: vga_periph_synthesis.v
// /___/   /\     Timestamp: Mon Mar 25 11:31:22 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim vga_periph.ngc vga_periph_synthesis.v 
// Device	: xc6slx45-2-fgg676
// Input file	: vga_periph.ngc
// Output file	: D:\RA31-2016\LPRS2\lab3\pcores\vga_periph_v1_00_a\devl\projnav\netgen\synthesis\vga_periph_synthesis.v
// # of Modules	: 1
// Design Name	: vga_periph
// Xilinx        : C:\Xilinx\14.6\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module vga_periph (
  clk_i, reset_n_i, direct_mode_i, S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWVALID, S_AXI_WVALID, S_AXI_BREADY, S_AXI_ARVALID, S_AXI_RREADY, vga_hsync_o, 
vga_vsync_o, blank_o, pix_clock_o, psave_o, sync_o, S_AXI_ARREADY, S_AXI_RVALID, S_AXI_WREADY, S_AXI_BVALID, S_AXI_AWREADY, display_mode_i, 
S_AXI_AWADDR, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_ARADDR, red_o, green_o, blue_o, S_AXI_RDATA, S_AXI_RRESP, S_AXI_BRESP
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk_i;
  input reset_n_i;
  input direct_mode_i;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  output vga_hsync_o;
  output vga_vsync_o;
  output blank_o;
  output pix_clock_o;
  output psave_o;
  output sync_o;
  output S_AXI_ARREADY;
  output S_AXI_RVALID;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_AWREADY;
  input [1 : 0] display_mode_i;
  input [31 : 0] S_AXI_AWADDR;
  input [31 : 0] S_AXI_WDATA;
  input [3 : 0] S_AXI_WSTRB;
  input [31 : 0] S_AXI_ARADDR;
  output [7 : 0] red_o;
  output [7 : 0] green_o;
  output [7 : 0] blue_o;
  output [31 : 0] S_AXI_RDATA;
  output [1 : 0] S_AXI_RRESP;
  output [1 : 0] S_AXI_BRESP;
  
  // synthesis translate_off
  
  wire display_mode_i_1_IBUF_0;
  wire display_mode_i_0_IBUF_1;
  wire S_AXI_WDATA_31_IBUF_2;
  wire S_AXI_WDATA_30_IBUF_3;
  wire S_AXI_WDATA_29_IBUF_4;
  wire S_AXI_WDATA_28_IBUF_5;
  wire S_AXI_WDATA_27_IBUF_6;
  wire S_AXI_WDATA_26_IBUF_7;
  wire S_AXI_WDATA_25_IBUF_8;
  wire S_AXI_WDATA_24_IBUF_9;
  wire S_AXI_WDATA_23_IBUF_10;
  wire S_AXI_WDATA_22_IBUF_11;
  wire S_AXI_WDATA_21_IBUF_12;
  wire S_AXI_WDATA_20_IBUF_13;
  wire S_AXI_WDATA_19_IBUF_14;
  wire S_AXI_WDATA_18_IBUF_15;
  wire S_AXI_WDATA_17_IBUF_16;
  wire S_AXI_WDATA_16_IBUF_17;
  wire S_AXI_WDATA_15_IBUF_18;
  wire S_AXI_WDATA_14_IBUF_19;
  wire S_AXI_WDATA_13_IBUF_20;
  wire S_AXI_WDATA_12_IBUF_21;
  wire S_AXI_WDATA_11_IBUF_22;
  wire S_AXI_WDATA_10_IBUF_23;
  wire S_AXI_WDATA_9_IBUF_24;
  wire S_AXI_WDATA_8_IBUF_25;
  wire S_AXI_WDATA_7_IBUF_26;
  wire S_AXI_WDATA_6_IBUF_27;
  wire S_AXI_WDATA_5_IBUF_28;
  wire S_AXI_WDATA_4_IBUF_29;
  wire S_AXI_WDATA_3_IBUF_30;
  wire S_AXI_WDATA_2_IBUF_31;
  wire S_AXI_WDATA_1_IBUF_32;
  wire S_AXI_WDATA_0_IBUF_33;
  wire reset_n_i_IBUF_35;
  wire direct_mode_i_IBUF_36;
  wire S_AXI_ACLK_BUFGP_37;
  wire S_AXI_ARESETN_IBUF_38;
  wire S_AXI_AWVALID_IBUF_39;
  wire S_AXI_WVALID_IBUF_40;
  wire S_AXI_BREADY_IBUF_41;
  wire S_AXI_ARVALID_IBUF_42;
  wire S_AXI_RREADY_IBUF_43;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_out_r_79 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_out_r_80 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blank_r_81 ;
  wire pix_clock_o_OBUF_82;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/psave_r_83 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/sync_r_84 ;
  wire S_AXI_RRESP_1_OBUF_117;
  wire ipif_Bus2IP_WrCE;
  wire S_AXI_AWREADY_OBUF_119;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_120 ;
  wire S_AXI_ARREADY_OBUF_121;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_122 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_9_o ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_6_o ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<3>_127 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<3>_128 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<2>_129 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<2>_130 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<1>_131 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<1>_132 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<0>_133 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<0>_134 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<3>_135 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<3>_136 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<2>_137 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<2>_138 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<1>_139 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<1>_140 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<0>_141 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<0>_142 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<3>_143 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<3>_144 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<2>_145 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<2>_146 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<1>_147 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<1>_148 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<0>_149 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<0>_150 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<3>_151 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<3>_152 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<2>_153 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<2>_154 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<1>_155 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<1>_156 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<0>_157 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<0>_158 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<3>_159 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<3>_160 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<2>_161 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<2>_162 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<1>_163 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<1>_164 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<0>_165 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<0>_166 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<10>_189 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<9>_190 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<8>_191 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<7>_192 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<6>_193 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<5>_194 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<4>_195 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<3>_196 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<2>_197 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<1>_198 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<0>_199 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_lut<0> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<10>_201 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<9>_202 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<8>_203 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<7>_204 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<6>_205 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<5>_206 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<4>_207 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<3>_208 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<2>_209 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<1>_210 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_lut<1> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<10>_212 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<9>_213 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<8>_214 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<7>_215 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<6>_216 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<5>_217 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<4>_218 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<3>_219 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<2>_220 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<1>_221 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_lut<1> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<0>_223 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_lut<0> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<10>_225 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<9>_226 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<8>_227 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<7>_228 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<6>_229 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<5>_230 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<4>_231 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<3>_232 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<2>_233 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_lut<2> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<10>_235 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<9>_236 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<8>_237 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<7>_238 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<6>_239 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<5>_240 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<4>_241 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<3>_242 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<2>_243 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_lut<2> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<1>_245 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<0>_246 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_lut<0> ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ;
  wire \USER_LOGIC_I/Result<4>2 ;
  wire \USER_LOGIC_I/Result<3>2 ;
  wire \USER_LOGIC_I/Result<2>2 ;
  wire \USER_LOGIC_I/Result<1>2 ;
  wire \USER_LOGIC_I/Result<0>2 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/_n0124_inv ;
  wire \USER_LOGIC_I/Result<21>1 ;
  wire \USER_LOGIC_I/Result<20>1 ;
  wire \USER_LOGIC_I/Result<19>1 ;
  wire \USER_LOGIC_I/Result<18>1 ;
  wire \USER_LOGIC_I/Result<17>1 ;
  wire \USER_LOGIC_I/Result<16>1 ;
  wire \USER_LOGIC_I/Result<15>1 ;
  wire \USER_LOGIC_I/Result<14>1 ;
  wire \USER_LOGIC_I/Result<13>1 ;
  wire \USER_LOGIC_I/Result<12>1 ;
  wire \USER_LOGIC_I/Result<11>1 ;
  wire \USER_LOGIC_I/Result<10>1 ;
  wire \USER_LOGIC_I/Result<9>1 ;
  wire \USER_LOGIC_I/Result<8>1 ;
  wire \USER_LOGIC_I/Result<7>1 ;
  wire \USER_LOGIC_I/Result<6>1 ;
  wire \USER_LOGIC_I/Result<5>1 ;
  wire \USER_LOGIC_I/Result<4>1 ;
  wire \USER_LOGIC_I/Result<3>1 ;
  wire \USER_LOGIC_I/Result<2>1 ;
  wire \USER_LOGIC_I/Result<1>1 ;
  wire \USER_LOGIC_I/Result<0>1 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row8 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row7 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row6 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row5 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row4 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row3 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row2 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row1 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row[8]_PWR_37_o_LessThan_24_o_inv_inv ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/column[4]_PWR_37_o_LessThan_22_o_inv1 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address10 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address9 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address8 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address7 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address6 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address5 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address4 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address3 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address2 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address1 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv_inv_337 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column4 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column3 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column2 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column1 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction_386 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_13_o ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_15_o ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_17_o ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_19_o ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_21_o ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<11> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<10> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<9> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<8> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<7> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<6> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<5> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<4> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<3> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<2> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<1> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<0> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<11> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<10> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<9> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<8> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<7> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<6> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<5> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<4> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<3> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<2> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<1> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<11> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<10> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<9> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<8> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<7> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<6> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<5> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<4> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<3> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<2> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<1> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<0> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<11> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<10> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<9> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<8> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<7> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<6> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<5> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<4> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<3> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<2> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<11> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<10> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<9> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<8> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<7> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<6> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<5> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<4> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<3> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<2> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<1> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<0> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<10> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<9> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<8> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<7> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<6> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<5> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<4> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<3> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<2> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<1> ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<0> ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ;
  wire \USER_LOGIC_I/Inst_top/pix_clock_n ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/Mmux_rom_mux_output_o_3_558 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/Mmux_rom_mux_output_o_4_559 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/clkin1 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/clkfx ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/locked_s ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/locked_del_s ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/active_pixel_s_599 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/display_mode_i[1]_display_mode_i[1]_OR_30_o ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/active_pixel_s_rom_out_s_MUX_128_o ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/rom_out_s ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/locked_del_reg_r_624 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o<11>1 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame_mmx_out ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r9 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r8 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r7 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r6 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r5 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r4 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r3 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r2 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r1 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/BUS_0011_GND_21_o_LessThan_28_o_inv_inv ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r9 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r8 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r7 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r6 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r5 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r4 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r3 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r2 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r1 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/BUS_0002_GND_21_o_LessThan_12_o_inv_inv ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_INV_16_o_704 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_INV_12_o ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/enable_s ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_r_708 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_r_709 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/sync_d_r_710 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blank_d_r_711 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_out_d_r_712 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_out_d_r_713 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/psave_d_r_714 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/background_color_i[7]_dir_blue_i[7]_mux_51_OUT<7> ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/background_color_i[15]_dir_green_i[7]_mux_48_OUT<7> ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_rd_data_o_3 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_753 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_754 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2-In_756 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/start ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_PWR_12_o_OR_9_o ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ;
  wire N2;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o1_765 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o2_766 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o3_767 ;
  wire N4;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>1_770 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>2_771 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>3_772 ;
  wire N8;
  wire N10;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame1_775 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame2_776 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame3_777 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame4_778 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame5_779 ;
  wire N12;
  wire N14;
  wire N16;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/value_0_glue_set ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r_7_glue_set_900 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_glue_set_901 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_glue_set_902 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<20>_rt_903 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<19>_rt_904 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<18>_rt_905 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<17>_rt_906 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<16>_rt_907 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<15>_rt_908 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<14>_rt_909 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<13>_rt_910 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<12>_rt_911 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<11>_rt_912 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<10>_rt_913 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<9>_rt_914 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<8>_rt_915 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<7>_rt_916 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<6>_rt_917 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<5>_rt_918 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<4>_rt_919 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<3>_rt_920 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<2>_rt_921 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<1>_rt_922 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<10>_rt_923 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<9>_rt_924 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<8>_rt_925 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<7>_rt_926 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<6>_rt_927 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<5>_rt_928 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<4>_rt_929 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<3>_rt_930 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<2>_rt_931 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<1>_rt_932 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<10>_rt_933 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<9>_rt_934 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<8>_rt_935 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<7>_rt_936 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<6>_rt_937 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<5>_rt_938 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<4>_rt_939 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<3>_rt_940 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<2>_rt_941 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<10>_rt_942 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<9>_rt_943 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<8>_rt_944 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<7>_rt_945 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<6>_rt_946 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<5>_rt_947 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<4>_rt_948 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<3>_rt_949 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<2>_rt_950 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<10>_rt_951 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<9>_rt_952 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<8>_rt_953 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<7>_rt_954 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<6>_rt_955 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<5>_rt_956 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<4>_rt_957 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<3>_rt_958 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<10>_rt_959 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<9>_rt_960 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<8>_rt_961 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<7>_rt_962 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<6>_rt_963 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<5>_rt_964 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<4>_rt_965 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<3>_rt_966 ;
  wire \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<1>_rt_967 ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<21>_rt_968 ;
  wire \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/sync_d_r_rstpot_969 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_rstpot_970 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ;
  wire \USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction_rstpot_972 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot1_973 ;
  wire N20;
  wire N38;
  wire N58;
  wire N62;
  wire N63;
  wire N64;
  wire N65;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_CARRYOUTF_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_CARRYOUT_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<47>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<46>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<45>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<44>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<43>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<42>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<41>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<40>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<39>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<38>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<37>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<36>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<35>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<34>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<33>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<32>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<47>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<46>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<45>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<44>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<43>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<42>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<41>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<40>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<39>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<38>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<37>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<36>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<35>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<34>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<33>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<32>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<47>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<46>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<45>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<44>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<43>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<42>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<41>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<40>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<39>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<38>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<37>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<36>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<35>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<34>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<33>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<32>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<35>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<34>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<33>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<32>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLK2X180_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLK2X_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLK180_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLK270_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLK0_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLKFX180_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLKDV_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_PSDONE_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLK90_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_CARRYOUTF_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_CARRYOUT_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<47>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<46>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<45>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<44>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<43>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<42>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<41>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<40>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<39>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<38>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<37>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<36>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<35>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<34>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<33>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<32>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<47>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<46>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<45>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<44>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<43>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<42>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<41>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<40>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<39>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<38>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<37>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<36>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<35>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<34>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<33>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<32>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<47>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<46>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<45>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<44>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<43>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<42>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<41>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<40>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<39>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<38>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<37>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<36>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<35>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<34>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<33>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<32>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<35>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<34>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<33>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<32>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_CARRYOUTF_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_CARRYOUT_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<47>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<46>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<45>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<44>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<43>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<42>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<41>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<40>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<39>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<38>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<37>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<36>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<35>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<34>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<33>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<32>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<47>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<46>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<45>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<44>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<43>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<42>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<41>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<40>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<39>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<38>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<37>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<36>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<35>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<34>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<33>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<32>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<47>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<46>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<45>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<44>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<43>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<42>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<41>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<40>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<39>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<38>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<37>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<36>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<35>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<34>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<33>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<32>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<35>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<34>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<33>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<32>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPA<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_ADDRA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_ADDRB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPA<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPA<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_ADDRA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_ADDRB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPA<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPA<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_ADDRA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_ADDRB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPA<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPA<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPA<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPA<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPB<0>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<1>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<31>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<30>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<29>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<28>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<27>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<26>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<25>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<24>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<23>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<22>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<21>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<20>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<19>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<18>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<17>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<16>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<15>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<14>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<13>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<12>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<11>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<10>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<9>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<8>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<7>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<6>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<5>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<4>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<3>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<2>_UNCONNECTED ;
  wire \NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<1>_UNCONNECTED ;
  wire [7 : 7] \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r ;
  wire [7 : 7] \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/green_r ;
  wire [7 : 7] \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blue_r ;
  wire [31 : 0] user_IP2Bus_Data;
  wire [31 : 0] \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i ;
  wire [20 : 0] \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy ;
  wire [0 : 0] \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_lut ;
  wire [8 : 0] \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut ;
  wire [7 : 0] \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy ;
  wire [10 : 0] \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut ;
  wire [9 : 0] \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy ;
  wire [4 : 0] \USER_LOGIC_I/Inst_top/Inst_pixel_driver/column ;
  wire [21 : 0] \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter ;
  wire [4 : 0] \USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin ;
  wire [8 : 0] \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row ;
  wire [10 : 0] \USER_LOGIC_I/Inst_top/Inst_text_driver/base ;
  wire [5 : 0] \USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT ;
  wire [9 : 0] \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r ;
  wire [10 : 0] \USER_LOGIC_I/Inst_top/Inst_text_driver/address ;
  wire [5 : 0] \USER_LOGIC_I/Inst_top/Inst_text_driver/value ;
  wire [0 : 0] \USER_LOGIC_I/Inst_top/Inst_pixel_driver/value ;
  wire [19 : 0] \USER_LOGIC_I/Inst_top/pixel_address ;
  wire [0 : 0] \USER_LOGIC_I/Inst_top/dir_blue ;
  wire [31 : 0] \USER_LOGIC_I/slv_reg0 ;
  wire [7 : 0] \USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data ;
  wire [12 : 0] \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index ;
  wire [13 : 0] \USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c ;
  wire [19 : 5] \USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c ;
  wire [5 : 0] \USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s ;
  wire [9 : 0] \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r ;
  wire [9 : 0] \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut ;
  wire [8 : 0] \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy ;
  wire [9 : 0] \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut ;
  wire [8 : 0] \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy ;
  wire [13 : 0] \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 ;
  wire [13 : 0] \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 ;
  wire [3 : 0] \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt ;
  wire [3 : 0] \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Result ;
  wire [25 : 25] \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_1 ;
  GND   XST_GND (
    .G(S_AXI_RRESP_1_OBUF_117)
  );
  VCC   XST_VCC (
    .P(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> )
  );
  ODDR2 #(
    .DDR_ALIGNMENT ( "NONE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \USER_LOGIC_I/Inst_top/clk5m_inst  (
    .D0(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .D1(S_AXI_RRESP_1_OBUF_117),
    .C0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .C1(\USER_LOGIC_I/Inst_top/pix_clock_n ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .R(S_AXI_RRESP_1_OBUF_117),
    .S(S_AXI_RRESP_1_OBUF_117),
    .Q(pix_clock_o_OBUF_82)
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<3>_127 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_13_o )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<2>_129 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<3>_128 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<3>_127 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<3>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [9]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<9> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [10]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<10> ),
    .I4(S_AXI_RRESP_1_OBUF_117),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<11> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<3>_128 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<1>_131 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<2>_130 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<2>_129 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<2>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [6]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<6> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<7> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [8]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<8> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<2>_130 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<0>_133 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<1>_132 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<1>_131 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<1>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [3]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<3> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [4]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<4> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<5> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<1>_132 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<0>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<0>_134 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_cy<0>_133 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<0>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [0]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<0> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [1]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<1> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [2]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<2> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<0>_134 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<3>_135 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_15_o )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<2>_137 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<3>_136 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<3>_135 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<3>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [9]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<9> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [10]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<10> ),
    .I4(S_AXI_RRESP_1_OBUF_117),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<11> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<3>_136 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<1>_139 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<2>_138 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<2>_137 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<2>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [6]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<6> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<7> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [8]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<8> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<2>_138 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<0>_141 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<1>_140 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<1>_139 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<1>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [3]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<3> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [4]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<4> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<5> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<1>_140 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<0>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<0>_142 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_cy<0>_141 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<0>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [0]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [0]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [1]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<1> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [2]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<2> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_15_o_lut<0>_142 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<3>_143 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_17_o )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<2>_145 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<3>_144 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<3>_143 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<3>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [9]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<9> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [10]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<10> ),
    .I4(S_AXI_RRESP_1_OBUF_117),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<11> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<3>_144 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<1>_147 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<2>_146 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<2>_145 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<2>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [6]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<6> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<7> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [8]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<8> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<2>_146 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<0>_149 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<1>_148 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<1>_147 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<1>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [3]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<3> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [4]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<4> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<5> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<1>_148 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<0>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<0>_150 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_cy<0>_149 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<0>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [0]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<0> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [1]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<1> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [2]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<2> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_17_o_lut<0>_150 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<3>_151 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_19_o )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<2>_153 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<3>_152 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<3>_151 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<3>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [9]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<9> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [10]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<10> ),
    .I4(S_AXI_RRESP_1_OBUF_117),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<11> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<3>_152 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<1>_155 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<2>_154 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<2>_153 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<2>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [6]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<6> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<7> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [8]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<8> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<2>_154 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<0>_157 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<1>_156 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<1>_155 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<1>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [3]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<3> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [4]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<4> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<5> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<1>_156 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<0>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<0>_158 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_cy<0>_157 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<0>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [0]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [0]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [1]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [1]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [2]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<2> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_19_o_lut<0>_158 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<3>_159 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_21_o )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<2>_161 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<3>_160 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<3>_159 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<3>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [9]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<9> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [10]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<10> ),
    .I4(S_AXI_RRESP_1_OBUF_117),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<11> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<3>_160 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<1>_163 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<2>_162 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<2>_161 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<2>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [6]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<6> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<7> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [8]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<8> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<2>_162 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<0>_165 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<1>_164 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<1>_163 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<1>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [3]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<3> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [4]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<4> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<5> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<1>_164 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<0>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<0>_166 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_cy<0>_165 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<0>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [0]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<0> ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [1]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<1> ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [2]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<2> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_21_o_lut<0>_166 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<21>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [20]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<21>_rt_968 ),
    .O(\USER_LOGIC_I/Result<21>1 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<20>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [19]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<20>_rt_903 ),
    .O(\USER_LOGIC_I/Result<20>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<20>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [19]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<20>_rt_903 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [20])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<19>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [18]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<19>_rt_904 ),
    .O(\USER_LOGIC_I/Result<19>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<19>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [18]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<19>_rt_904 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [19])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<18>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [17]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<18>_rt_905 ),
    .O(\USER_LOGIC_I/Result<18>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<18>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [17]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<18>_rt_905 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [18])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<17>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [16]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<17>_rt_906 ),
    .O(\USER_LOGIC_I/Result<17>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<17>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [16]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<17>_rt_906 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [17])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<16>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [15]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<16>_rt_907 ),
    .O(\USER_LOGIC_I/Result<16>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<16>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [15]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<16>_rt_907 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [16])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<15>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [14]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<15>_rt_908 ),
    .O(\USER_LOGIC_I/Result<15>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<15>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [14]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<15>_rt_908 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [15])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<14>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [13]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<14>_rt_909 ),
    .O(\USER_LOGIC_I/Result<14>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<14>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [13]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<14>_rt_909 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [14])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<13>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [12]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<13>_rt_910 ),
    .O(\USER_LOGIC_I/Result<13>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<13>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [12]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<13>_rt_910 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [13])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<12>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [11]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<12>_rt_911 ),
    .O(\USER_LOGIC_I/Result<12>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<12>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [11]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<12>_rt_911 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [12])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<11>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [10]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<11>_rt_912 ),
    .O(\USER_LOGIC_I/Result<11>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<11>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [10]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<11>_rt_912 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [11])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [9]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<10>_rt_913 ),
    .O(\USER_LOGIC_I/Result<10>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [9]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<10>_rt_913 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [10])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [8]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<9>_rt_914 ),
    .O(\USER_LOGIC_I/Result<9>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [8]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<9>_rt_914 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [9])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [7]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<8>_rt_915 ),
    .O(\USER_LOGIC_I/Result<8>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [7]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<8>_rt_915 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [8])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [6]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<7>_rt_916 ),
    .O(\USER_LOGIC_I/Result<7>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [6]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<7>_rt_916 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [7])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [5]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<6>_rt_917 ),
    .O(\USER_LOGIC_I/Result<6>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [5]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<6>_rt_917 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [6])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [4]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<5>_rt_918 ),
    .O(\USER_LOGIC_I/Result<5>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [4]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<5>_rt_918 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [5])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [3]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<4>_rt_919 ),
    .O(\USER_LOGIC_I/Result<4>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [3]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<4>_rt_919 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [4])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [2]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<3>_rt_920 ),
    .O(\USER_LOGIC_I/Result<3>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [2]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<3>_rt_920 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [3])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [1]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<2>_rt_921 ),
    .O(\USER_LOGIC_I/Result<2>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [1]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<2>_rt_921 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [2])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [0]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<1>_rt_922 ),
    .O(\USER_LOGIC_I/Result<1>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [0]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<1>_rt_922 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [1])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<0>  (
    .CI(S_AXI_RRESP_1_OBUF_117),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_lut [0]),
    .O(\USER_LOGIC_I/Result<0>1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<0>  (
    .CI(S_AXI_RRESP_1_OBUF_117),
    .DI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_lut [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy [0])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_xor<11>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<10>_189 ),
    .LI(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<11> )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_xor<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<9>_190 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<10>_rt_923 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<10> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<9>_190 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<10>_rt_923 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<10>_189 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_xor<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<8>_191 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<9>_rt_924 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<9> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<8>_191 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<9>_rt_924 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<9>_190 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_xor<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<7>_192 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<8>_rt_925 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<8> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<7>_192 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<8>_rt_925 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<8>_191 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_xor<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<6>_193 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<7>_rt_926 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<7> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<6>_193 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<7>_rt_926 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<7>_192 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_xor<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<5>_194 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<6>_rt_927 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<6> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<5>_194 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<6>_rt_927 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<6>_193 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_xor<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<4>_195 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<5>_rt_928 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<5> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<4>_195 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<5>_rt_928 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<5>_194 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_xor<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<3>_196 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<4>_rt_929 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<4> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<3>_196 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<4>_rt_929 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<4>_195 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_xor<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<2>_197 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<3>_rt_930 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<3> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<2>_197 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<3>_rt_930 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<3>_196 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_xor<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<1>_198 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<2>_rt_931 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<2> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<1>_198 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<2>_rt_931 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<2>_197 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_xor<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<0>_199 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<1>_rt_932 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<1> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<0>_199 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<1>_rt_932 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<1>_198 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_xor<0>  (
    .CI(S_AXI_RRESP_1_OBUF_117),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_lut<0> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<0> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<0>  (
    .CI(S_AXI_RRESP_1_OBUF_117),
    .DI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_lut<0> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<0>_199 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_xor<11>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<10>_201 ),
    .LI(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<11> )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_xor<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<9>_202 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<10>_rt_933 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<10> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<9>_202 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<10>_rt_933 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<10>_201 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_xor<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<8>_203 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<9>_rt_934 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<9> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<8>_203 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<9>_rt_934 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<9>_202 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_xor<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<7>_204 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<8>_rt_935 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<8> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<7>_204 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<8>_rt_935 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<8>_203 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_xor<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<6>_205 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<7>_rt_936 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<7> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<6>_205 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<7>_rt_936 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<7>_204 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_xor<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<5>_206 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<6>_rt_937 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<6> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<5>_206 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<6>_rt_937 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<6>_205 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_xor<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<4>_207 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<5>_rt_938 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<5> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<4>_207 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<5>_rt_938 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<5>_206 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_xor<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<3>_208 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<4>_rt_939 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<4> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<3>_208 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<4>_rt_939 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<4>_207 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_xor<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<2>_209 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<3>_rt_940 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<3> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<2>_209 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<3>_rt_940 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<3>_208 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_xor<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<1>_210 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<2>_rt_941 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<2> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<1>_210 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<2>_rt_941 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<2>_209 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_xor<1>  (
    .CI(S_AXI_RRESP_1_OBUF_117),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_lut<1> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_13_OUT<1> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<1>  (
    .CI(S_AXI_RRESP_1_OBUF_117),
    .DI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_lut<1> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<1>_210 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_xor<11>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<10>_212 ),
    .LI(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<11> )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_xor<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<9>_213 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<10>_rt_942 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<10> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<9>_213 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<10>_rt_942 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<10>_212 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_xor<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<8>_214 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<9>_rt_943 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<9> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<8>_214 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<9>_rt_943 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<9>_213 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_xor<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<7>_215 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<8>_rt_944 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<8> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<7>_215 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<8>_rt_944 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<8>_214 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_xor<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<6>_216 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<7>_rt_945 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<7> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<6>_216 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<7>_rt_945 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<7>_215 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_xor<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<5>_217 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<6>_rt_946 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<6> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<5>_217 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<6>_rt_946 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<6>_216 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_xor<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<4>_218 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<5>_rt_947 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<5> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<4>_218 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<5>_rt_947 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<5>_217 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_xor<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<3>_219 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<4>_rt_948 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<4> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<3>_219 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<4>_rt_948 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<4>_218 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_xor<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<2>_220 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<3>_rt_949 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<3> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<2>_220 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<3>_rt_949 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<3>_219 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_xor<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<1>_221 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<2>_rt_950 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<2> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<1>_221 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<2>_rt_950 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<2>_220 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_xor<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<0>_223 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_lut<1> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<1> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<0>_223 ),
    .DI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_lut<1> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<1>_221 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_xor<0>  (
    .CI(S_AXI_RRESP_1_OBUF_117),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_lut<0> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_15_OUT<0> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<0>  (
    .CI(S_AXI_RRESP_1_OBUF_117),
    .DI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_lut<0> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<0>_223 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_xor<11>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<10>_225 ),
    .LI(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<11> )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_xor<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<9>_226 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<10>_rt_951 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<10> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<9>_226 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<10>_rt_951 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<10>_225 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_xor<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<8>_227 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<9>_rt_952 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<9> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<8>_227 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<9>_rt_952 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<9>_226 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_xor<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<7>_228 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<8>_rt_953 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<8> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<7>_228 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<8>_rt_953 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<8>_227 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_xor<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<6>_229 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<7>_rt_954 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<7> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<6>_229 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<7>_rt_954 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<7>_228 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_xor<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<5>_230 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<6>_rt_955 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<6> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<5>_230 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<6>_rt_955 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<6>_229 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_xor<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<4>_231 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<5>_rt_956 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<5> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<4>_231 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<5>_rt_956 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<5>_230 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_xor<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<3>_232 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<4>_rt_957 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<4> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<3>_232 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<4>_rt_957 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<4>_231 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_xor<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<2>_233 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<3>_rt_958 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<3> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<2>_233 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<3>_rt_958 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<3>_232 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_xor<2>  (
    .CI(S_AXI_RRESP_1_OBUF_117),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_lut<2> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_17_OUT<2> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<2>  (
    .CI(S_AXI_RRESP_1_OBUF_117),
    .DI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_lut<2> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<2>_233 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_xor<11>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<10>_235 ),
    .LI(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<11> )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_xor<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<9>_236 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<10>_rt_959 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<10> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<9>_236 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<10>_rt_959 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<10>_235 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_xor<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<8>_237 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<9>_rt_960 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<9> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<8>_237 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<9>_rt_960 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<9>_236 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_xor<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<7>_238 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<8>_rt_961 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<8> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<7>_238 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<8>_rt_961 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<8>_237 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_xor<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<6>_239 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<7>_rt_962 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<7> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<6>_239 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<7>_rt_962 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<7>_238 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_xor<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<5>_240 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<6>_rt_963 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<6> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<5>_240 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<6>_rt_963 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<6>_239 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_xor<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<4>_241 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<5>_rt_964 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<5> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<4>_241 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<5>_rt_964 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<5>_240 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_xor<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<3>_242 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<4>_rt_965 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<4> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<3>_242 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<4>_rt_965 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<4>_241 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_xor<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<2>_243 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<3>_rt_966 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<3> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<2>_243 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<3>_rt_966 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<3>_242 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_xor<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<1>_245 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_lut<2> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<2> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<1>_245 ),
    .DI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_lut<2> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<2>_243 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_xor<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<0>_246 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<1>_rt_967 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<1> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<0>_246 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<1>_rt_967 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<1>_245 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_xor<0>  (
    .CI(S_AXI_RRESP_1_OBUF_117),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_lut<0> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_19_OUT<0> )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<0>  (
    .CI(S_AXI_RRESP_1_OBUF_117),
    .DI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_lut<0> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<0>_246 )
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin_4  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/_n0124_inv ),
    .D(\USER_LOGIC_I/Result<4>2 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [4])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin_3  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/_n0124_inv ),
    .D(\USER_LOGIC_I/Result<3>2 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [3])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin_2  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/_n0124_inv ),
    .D(\USER_LOGIC_I/Result<2>2 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [2])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin_1  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/_n0124_inv ),
    .D(\USER_LOGIC_I/Result<1>2 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [1])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin_0  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/_n0124_inv ),
    .D(\USER_LOGIC_I/Result<0>2 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [0])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_21  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<21>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [21])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_20  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<20>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [20])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_19  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<19>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [19])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_18  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<18>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [18])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_17  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<17>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [17])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_16  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<16>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [16])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_15  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<15>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [15])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_14  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<14>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [14])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_13  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<13>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [13])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_12  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<12>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [12])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_11  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<11>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [11])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_10  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<10>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [10])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_9  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<9>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [9])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_8  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<8>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [8])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_7  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<7>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [7])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_6  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<6>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [6])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_5  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<5>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [5])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_4  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<4>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [4])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_3  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<3>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [3])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_2  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<2>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [2])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_1  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<1>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [1])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter_0  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Result<0>1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [0])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row_8  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column[4]_PWR_37_o_LessThan_22_o_inv1 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row8 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row_7  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column[4]_PWR_37_o_LessThan_22_o_inv1 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row7 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row_6  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column[4]_PWR_37_o_LessThan_22_o_inv1 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row6 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [6])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row_5  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column[4]_PWR_37_o_LessThan_22_o_inv1 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row5 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [5])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row_4  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column[4]_PWR_37_o_LessThan_22_o_inv1 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row4 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [4])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row_3  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column[4]_PWR_37_o_LessThan_22_o_inv1 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row3 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [3])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row_2  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column[4]_PWR_37_o_LessThan_22_o_inv1 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row2 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [2])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row_1  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column[4]_PWR_37_o_LessThan_22_o_inv1 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [1])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row_0  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column[4]_PWR_37_o_LessThan_22_o_inv1 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [0])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/column_4  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column4 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [4])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/column_3  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column3 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [3])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/column_2  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column2 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [2])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/column_1  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [1])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/column_0  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [0])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/address_10  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address10 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [10])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/address_9  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address9 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [9])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/address_8  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address8 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [8])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/address_7  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address7 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/address_6  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address6 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [6])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/address_5  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address5 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/address_4  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address4 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [4])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/address_3  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address3 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [3])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/address_2  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address2 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [2])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/address_1  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address1 ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [1])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/address_0  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [0])
  );
  DSP48A1 #(
    .CREG ( 1 ),
    .A0REG ( 0 ),
    .A1REG ( 0 ),
    .B0REG ( 0 ),
    .B1REG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 1 ),
    .OPMODEREG ( 0 ),
    .CARRYINREG ( 0 ),
    .CARRYOUTREG ( 0 ),
    .CARRYINSEL ( "OPMODE5" ),
    .RSTTYPE ( "SYNC" ),
    .DREG ( 0 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT  (
    .CECARRYIN(S_AXI_RRESP_1_OBUF_117),
    .RSTC(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .RSTCARRYIN(S_AXI_RRESP_1_OBUF_117),
    .CED(S_AXI_RRESP_1_OBUF_117),
    .RSTD(S_AXI_RRESP_1_OBUF_117),
    .CEOPMODE(S_AXI_RRESP_1_OBUF_117),
    .CEC(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .CARRYOUTF(\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_CARRYOUTF_UNCONNECTED ),
    .RSTOPMODE(S_AXI_RRESP_1_OBUF_117),
    .RSTM(S_AXI_RRESP_1_OBUF_117),
    .CLK(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .RSTB(S_AXI_RRESP_1_OBUF_117),
    .CEM(S_AXI_RRESP_1_OBUF_117),
    .CEB(S_AXI_RRESP_1_OBUF_117),
    .CARRYIN(S_AXI_RRESP_1_OBUF_117),
    .CEP(reset_n_i_IBUF_35),
    .CEA(S_AXI_RRESP_1_OBUF_117),
    .CARRYOUT(\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_CARRYOUT_UNCONNECTED ),
    .RSTA(S_AXI_RRESP_1_OBUF_117),
    .RSTP(S_AXI_RRESP_1_OBUF_117),
    .B({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117
, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8], 
\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7], \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [6], \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [5], 
\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [4], \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [3], \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [2], 
\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [1], \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [0]}),
    .BCOUT({\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_BCOUT<0>_UNCONNECTED }),
    .PCIN({\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<47>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<46>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<45>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<44>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<43>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<42>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<41>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<40>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<39>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<38>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<37>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<36>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<35>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<34>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<33>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<32>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCIN<0>_UNCONNECTED }),
    .C({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117
, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column4 , \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column3 , 
\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column2 , \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column1 , 
\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column }),
    .P({\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<47>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<46>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<45>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<44>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<43>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<42>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<41>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<40>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<39>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<38>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<37>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<36>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<35>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<34>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<33>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<32>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_P<20>_UNCONNECTED , \USER_LOGIC_I/Inst_top/pixel_address [19], 
\USER_LOGIC_I/Inst_top/pixel_address [18], \USER_LOGIC_I/Inst_top/pixel_address [17], \USER_LOGIC_I/Inst_top/pixel_address [16], 
\USER_LOGIC_I/Inst_top/pixel_address [15], \USER_LOGIC_I/Inst_top/pixel_address [14], \USER_LOGIC_I/Inst_top/pixel_address [13], 
\USER_LOGIC_I/Inst_top/pixel_address [12], \USER_LOGIC_I/Inst_top/pixel_address [11], \USER_LOGIC_I/Inst_top/pixel_address [10], 
\USER_LOGIC_I/Inst_top/pixel_address [9], \USER_LOGIC_I/Inst_top/pixel_address [8], \USER_LOGIC_I/Inst_top/pixel_address [7], 
\USER_LOGIC_I/Inst_top/pixel_address [6], \USER_LOGIC_I/Inst_top/pixel_address [5], \USER_LOGIC_I/Inst_top/pixel_address [4], 
\USER_LOGIC_I/Inst_top/pixel_address [3], \USER_LOGIC_I/Inst_top/pixel_address [2], \USER_LOGIC_I/Inst_top/pixel_address [1], 
\USER_LOGIC_I/Inst_top/pixel_address [0]}),
    .OPMODE({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , S_AXI_RRESP_1_OBUF_117, 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> }),
    .D({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117
, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117}),
    .PCOUT({\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<47>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<46>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<45>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<44>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<43>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<42>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<41>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<40>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<39>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<38>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<37>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<36>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<35>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<34>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<33>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<32>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_PCOUT<0>_UNCONNECTED }),
    .A({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117
, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , S_AXI_RRESP_1_OBUF_117, 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117}),
    .M({\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<35>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<34>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<33>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<32>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/Inst_pixel_driver/Maddsub_PWR_37_o_row[8]_MuLt_15_OUT_M<0>_UNCONNECTED })
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_xor<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [7]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row8 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_xor<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [6]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [7]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row7 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [6]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [7]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [7])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_xor<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [5]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row6 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [5]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [6])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_xor<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [4]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [5]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row5 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [4]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [5]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [5])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_xor<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [3]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row4 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [3]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [4])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_xor<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [2]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [3]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row3 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [2]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [3]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [3])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_xor<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [1]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [2]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row2 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [1]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [2]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [2])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_xor<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [0]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [0]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [1])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_xor<0>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row[8]_PWR_37_o_LessThan_24_o_inv_inv ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy<0>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row[8]_PWR_37_o_LessThan_24_o_inv_inv ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_cy [0])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_xor<10>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [9]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [10]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address10 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_xor<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [8]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [9]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address9 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy<9>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [8]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [9]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut<9>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [9]),
    .I2(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [9])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_xor<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [7]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address8 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy<8>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [7]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut<8>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [8]),
    .I2(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [8])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_xor<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [6]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [7]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address7 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy<7>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [6]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [7]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut<7>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7]),
    .I2(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [7])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_xor<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [5]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address6 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy<6>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [5]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut<6>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [6]),
    .I2(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [6])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_xor<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [4]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [5]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address5 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy<5>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [4]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [5]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut<5>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5]),
    .I2(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [5])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_xor<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [3]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address4 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [3]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut<4>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [4]),
    .I2(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [4])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_xor<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [2]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [3]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address3 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [2]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [3]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut<3>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [3]),
    .I2(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [3])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_xor<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [1]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [2]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address2 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [1]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [2]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut<2>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [2]),
    .I2(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [2])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_xor<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [0]),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [0]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut<1>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [1]),
    .I2(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [1])
  );
  XORCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_xor<0>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv_inv_337 ),
    .LI(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy<0>  (
    .CI(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv_inv_337 ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut<0>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [0]),
    .I2(S_AXI_RRESP_1_OBUF_117),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [0])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/move  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 )
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_text_driver/base_0  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<0> ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [0])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_text_driver/base_1  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<1> ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [1])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_text_driver/base_2  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<2> ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [2])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_text_driver/base_3  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<3> ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [3])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_text_driver/base_4  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<4> ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [4])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_text_driver/base_5  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<5> ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [5])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_text_driver/base_6  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<6> ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [6])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_text_driver/base_7  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<7> ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [7])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_text_driver/base_8  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<8> ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [8])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_text_driver/base_9  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<9> ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [9])
  );
  FDRE   \USER_LOGIC_I/Inst_top/Inst_text_driver/base_10  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<10> ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [10])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/value_0  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT [0]),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/value [0])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/value_1  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT [1]),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/value [1])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/value_2  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT [2]),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/value [2])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/value_3  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT [3]),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/value [3])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/value_4  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT [4]),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/value [4])
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_text_driver/value_5  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT [5]),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_text_driver/value [5])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_31  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_31_IBUF_2),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [31])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_30  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_30_IBUF_3),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [30])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_29  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_29_IBUF_4),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [29])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_28  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_28_IBUF_5),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [28])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_27  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_27_IBUF_6),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [27])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_26  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_26_IBUF_7),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [26])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_25  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_25_IBUF_8),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [25])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_24  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_24_IBUF_9),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [24])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_23  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_23_IBUF_10),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [23])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_22  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_22_IBUF_11),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [22])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_21  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_21_IBUF_12),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [21])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_20  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_20_IBUF_13),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [20])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_19  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_19_IBUF_14),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [19])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_18  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_18_IBUF_15),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [18])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_17  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_17_IBUF_16),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [17])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_16  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_16_IBUF_17),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [16])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_15  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_15_IBUF_18),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [15])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_14  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_14_IBUF_19),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [14])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_13  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_13_IBUF_20),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [13])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_12  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_12_IBUF_21),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [12])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_11  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_11_IBUF_22),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [11])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_10  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_10_IBUF_23),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [10])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_9  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_9_IBUF_24),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [9])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_8  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_8_IBUF_25),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [8])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_7  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_7_IBUF_26),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [7])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_6  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_6_IBUF_27),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [6])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_5  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_5_IBUF_28),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [5])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_4  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_4_IBUF_29),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [4])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_3  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_3_IBUF_30),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [3])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_2  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_2_IBUF_31),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [2])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_1  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_1_IBUF_32),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [1])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_0  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(ipif_Bus2IP_WrCE),
    .D(S_AXI_WDATA_0_IBUF_33),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [0])
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IOSTANDARD ( "DEFAULT" ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/clkin1_buf  (
    .I(clk_i),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/clkin1 )
  );
  DCM_SP #(
    .CLKIN_DIVIDE_BY_2 ( "FALSE" ),
    .CLKOUT_PHASE_SHIFT ( "NONE" ),
    .CLK_FEEDBACK ( "NONE" ),
    .DESKEW_ADJUST ( "SYSTEM_SYNCHRONOUS" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DSS_MODE ( "NONE" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .FACTORY_JF ( 16'h0000 ),
    .STARTUP_WAIT ( "FALSE" ),
    .CLKFX_DIVIDE ( 27 ),
    .CLKFX_MULTIPLY ( 25 ),
    .PHASE_SHIFT ( 0 ),
    .CLKDV_DIVIDE ( 2.000000 ),
    .CLKIN_PERIOD ( 37.037000 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst  (
    .CLK2X180(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLK2X180_UNCONNECTED ),
    .PSCLK(S_AXI_RRESP_1_OBUF_117),
    .CLK2X(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLK2X_UNCONNECTED ),
    .CLKFX(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/clkfx ),
    .CLK180(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLK180_UNCONNECTED ),
    .CLK270(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLK270_UNCONNECTED ),
    .RST(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .PSINCDEC(S_AXI_RRESP_1_OBUF_117),
    .CLKIN(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/clkin1 ),
    .CLKFB(S_AXI_RRESP_1_OBUF_117),
    .PSEN(S_AXI_RRESP_1_OBUF_117),
    .CLK0(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLK0_UNCONNECTED ),
    .CLKFX180(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLKFX180_UNCONNECTED ),
    .CLKDV(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLKDV_UNCONNECTED ),
    .PSDONE(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_PSDONE_UNCONNECTED ),
    .CLK90(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_CLK90_UNCONNECTED ),
    .LOCKED(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/locked_s ),
    .DSSEN(S_AXI_RRESP_1_OBUF_117),
    .STATUS({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/dcm_sp_inst_STATUS<0>_UNCONNECTED })
  );
  BUFG   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/clkout1_buf  (
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/res_1.dcm25_i/clkfx )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/SRL16_inst  (
    .A0(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .A1(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .A2(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .A3(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .CLK(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/locked_s ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/locked_del_s )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/Mmux_rom_mux_output_o_3  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [2]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [1]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [1]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [0]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [2]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [3]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/Mmux_rom_mux_output_o_3_558 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/Mmux_rom_mux_output_o_4  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [2]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [1]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [5]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [4]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [6]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [7]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/Mmux_rom_mux_output_o_4_559 )
  );
  MUXF7   \USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/Mmux_rom_mux_output_o_2_f7  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/Mmux_rom_mux_output_o_4_559 ),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/Mmux_rom_mux_output_o_3_558 ),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/rom_out_s )
  );
  DSP48A1 #(
    .A0REG ( 0 ),
    .A1REG ( 0 ),
    .B0REG ( 0 ),
    .B1REG ( 0 ),
    .DREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CREG ( 1 ),
    .OPMODEREG ( 0 ),
    .CARRYINREG ( 0 ),
    .CARRYOUTREG ( 0 ),
    .CARRYINSEL ( "OPMODE5" ),
    .RSTTYPE ( "SYNC" ))
  \USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103  (
    .CECARRYIN(S_AXI_RRESP_1_OBUF_117),
    .RSTC(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .RSTCARRYIN(S_AXI_RRESP_1_OBUF_117),
    .CED(S_AXI_RRESP_1_OBUF_117),
    .RSTD(S_AXI_RRESP_1_OBUF_117),
    .CEOPMODE(S_AXI_RRESP_1_OBUF_117),
    .CEC(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .CARRYOUTF(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_CARRYOUTF_UNCONNECTED ),
    .RSTOPMODE(S_AXI_RRESP_1_OBUF_117),
    .RSTM(S_AXI_RRESP_1_OBUF_117),
    .CLK(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .RSTB(S_AXI_RRESP_1_OBUF_117),
    .CEM(S_AXI_RRESP_1_OBUF_117),
    .CEB(S_AXI_RRESP_1_OBUF_117),
    .CARRYIN(S_AXI_RRESP_1_OBUF_117),
    .CEP(S_AXI_RRESP_1_OBUF_117),
    .CEA(S_AXI_RRESP_1_OBUF_117),
    .CARRYOUT(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_CARRYOUT_UNCONNECTED ),
    .RSTA(S_AXI_RRESP_1_OBUF_117),
    .RSTP(S_AXI_RRESP_1_OBUF_117),
    .B({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117
, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9], \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8], 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [7], \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [6], 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [5], \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [4]}),
    .BCOUT({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<16>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<14>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<12>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<10>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<8>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<6>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<4>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<2>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_BCOUT<0>_UNCONNECTED }),
    .PCIN({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<47>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<46>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<45>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<44>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<43>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<42>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<41>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<40>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<39>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<38>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<37>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<36>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<35>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<34>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<33>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<32>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<30>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<28>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<26>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<24>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<22>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<20>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<18>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<16>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<14>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<12>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<10>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<8>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<6>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<4>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<2>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCIN<0>_UNCONNECTED }),
    .C({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117
, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r9 , \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r8 , 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r7 , \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r6 , 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r5 , \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r4 }),
    .P({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<47>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<46>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<45>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<44>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<43>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<42>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<41>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<40>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<39>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<38>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<37>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<36>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<35>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<34>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<33>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<32>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<31>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<29>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<27>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<25>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<23>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<21>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<19>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<17>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<15>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_P<14>_UNCONNECTED , 
\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13], \USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12], 
\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [11], \USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [10], 
\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [9], \USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [8], 
\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [7], \USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [6], 
\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [5], \USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [4], 
\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [3], \USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [2], 
\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [1], \USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [0]}),
    .OPMODE({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , S_AXI_RRESP_1_OBUF_117, 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> }),
    .D({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117
, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117}),
    .PCOUT({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<47>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<46>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<45>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<44>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<43>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<42>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<41>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<40>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<39>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<38>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<37>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<36>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<35>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<34>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<33>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<32>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<30>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<28>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<26>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<24>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<22>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<20>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<18>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<16>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<14>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<12>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<10>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<8>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<6>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<4>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<2>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_PCOUT<0>_UNCONNECTED }),
    .A({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117
, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , S_AXI_RRESP_1_OBUF_117, 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117}),
    .M({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<35>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<34>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<33>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<32>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<31>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<29>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<27>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<25>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<23>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<21>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<19>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<17>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<15>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<13>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<11>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<9>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<7>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<5>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<3>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<1>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0103_M<0>_UNCONNECTED })
  );
  DSP48A1 #(
    .A0REG ( 0 ),
    .A1REG ( 0 ),
    .B0REG ( 0 ),
    .B1REG ( 0 ),
    .DREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CREG ( 1 ),
    .OPMODEREG ( 0 ),
    .CARRYINREG ( 0 ),
    .CARRYOUTREG ( 0 ),
    .CARRYINSEL ( "OPMODE5" ),
    .RSTTYPE ( "SYNC" ))
  \USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100  (
    .CECARRYIN(S_AXI_RRESP_1_OBUF_117),
    .RSTC(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .RSTCARRYIN(S_AXI_RRESP_1_OBUF_117),
    .CED(S_AXI_RRESP_1_OBUF_117),
    .RSTD(S_AXI_RRESP_1_OBUF_117),
    .CEOPMODE(S_AXI_RRESP_1_OBUF_117),
    .CEC(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .CARRYOUTF(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_CARRYOUTF_UNCONNECTED ),
    .RSTOPMODE(S_AXI_RRESP_1_OBUF_117),
    .RSTM(S_AXI_RRESP_1_OBUF_117),
    .CLK(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .RSTB(S_AXI_RRESP_1_OBUF_117),
    .CEM(S_AXI_RRESP_1_OBUF_117),
    .CEB(S_AXI_RRESP_1_OBUF_117),
    .CARRYIN(S_AXI_RRESP_1_OBUF_117),
    .CEP(S_AXI_RRESP_1_OBUF_117),
    .CEA(S_AXI_RRESP_1_OBUF_117),
    .CARRYOUT(\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_CARRYOUT_UNCONNECTED ),
    .RSTA(S_AXI_RRESP_1_OBUF_117),
    .RSTP(S_AXI_RRESP_1_OBUF_117),
    .B({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117
, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9], 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8], \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [7], 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [6], \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [5], 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [4], \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3], 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2], \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [1], 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [0]}),
    .BCOUT({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<16>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<14>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<12>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<10>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<8>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<6>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<4>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<2>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_BCOUT<0>_UNCONNECTED }),
    .PCIN({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<47>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<46>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<45>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<44>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<43>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<42>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<41>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<40>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<39>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<38>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<37>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<36>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<35>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<34>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<33>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<32>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<30>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<28>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<26>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<24>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<22>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<20>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<18>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<16>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<14>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<12>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<10>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<8>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<6>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<4>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<2>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCIN<0>_UNCONNECTED }),
    .C({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117
, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r9 , 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r8 , \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r7 , 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r6 , \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r5 , 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r4 , \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r3 , 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r2 , \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r1 , 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r }),
    .P({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<47>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<46>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<45>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<44>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<43>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<42>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<41>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<40>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<39>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<38>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<37>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<36>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<35>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<34>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<33>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<32>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<31>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<29>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<27>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<25>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<23>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<21>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<20>_UNCONNECTED , 
\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19], \USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18], 
\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [17], \USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [16], 
\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15], \USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [14], 
\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [13], \USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [12], 
\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [11], \USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [10], 
\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [9], \USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [8], 
\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [7], \USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [6], 
\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [5], \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<3>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<1>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_P<0>_UNCONNECTED }),
    .OPMODE({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , S_AXI_RRESP_1_OBUF_117, 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> }),
    .D({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117
, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117}),
    .PCOUT({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<47>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<46>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<45>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<44>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<43>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<42>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<41>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<40>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<39>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<38>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<37>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<36>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<35>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<34>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<33>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<32>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<30>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<28>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<26>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<24>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<22>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<20>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<18>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<16>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<14>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<12>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<10>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<8>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<6>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<4>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<2>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_PCOUT<0>_UNCONNECTED }),
    .A({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117
, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
S_AXI_RRESP_1_OBUF_117, \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , S_AXI_RRESP_1_OBUF_117, 
S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117}),
    .M({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<35>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<34>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<33>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<32>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<31>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<29>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<27>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<25>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<23>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<21>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<19>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<17>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<15>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<13>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<11>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<9>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<7>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<5>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<3>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<1>_UNCONNECTED , \NLW_USER_LOGIC_I/Inst_top/vga_top_i/Maddsub_n0100_M<0>_UNCONNECTED })
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/locked_del_reg_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/locked_del_s ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/locked_del_reg_r_624 )
  );
  LD   \USER_LOGIC_I/Inst_top/vga_top_i/active_pixel_s  (
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/active_pixel_s_rom_out_s_MUX_128_o ),
    .G(\USER_LOGIC_I/Inst_top/vga_top_i/display_mode_i[1]_display_mode_i[1]_OR_30_o ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/active_pixel_s_599 )
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r_9  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r9 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9])
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r_8  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r8 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8])
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r_7  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r7 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [7])
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r_6  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r6 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [6])
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r_5  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r5 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [5])
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r_4  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r4 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [4])
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r_3  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r3 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3])
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r_2  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r2 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2])
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r_1  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r1 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [1])
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r_0  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [0])
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r_9  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r9 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9])
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r_8  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r8 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8])
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r_7  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r7 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [7])
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r_6  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r6 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [6])
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r_5  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r5 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [5])
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r_4  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r4 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4])
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r_3  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r3 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3])
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r_2  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r2 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [2])
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r_1  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r1 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [1])
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r_0  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [0])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_xor<9>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [8]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r9 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_xor<8>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [7]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [8]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r8 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy<8>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [7]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [8]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [8])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_xor<7>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [6]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [7]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r7 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy<7>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [6]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [7]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [7])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_xor<6>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [5]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [6]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r6 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy<6>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [5]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [6]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [6])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_xor<5>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [4]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [5]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r5 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy<5>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [4]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [5]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [5])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_xor<4>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [3]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [4]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r4 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [3]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [4]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [4])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_xor<3>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [2]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [3]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r3 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [2]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [3]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [3])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_xor<2>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [1]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [2]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r2 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [1]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [2]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [2])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_xor<1>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [0]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [1]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [0]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [1]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [1])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_xor<0>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/BUS_0011_GND_21_o_LessThan_28_o_inv_inv ),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [0]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy<0>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/BUS_0011_GND_21_o_LessThan_28_o_inv_inv ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [0]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_cy [0])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_xor<9>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [8]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r9 )
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_xor<8>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [7]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [8]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r8 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy<8>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [7]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [8]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [8])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_xor<7>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [6]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [7]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r7 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy<7>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [6]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [7]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [7])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_xor<6>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [5]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [6]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r6 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy<6>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [5]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [6]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [6])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_xor<5>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [4]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [5]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r5 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy<5>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [4]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [5]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [5])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_xor<4>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [3]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [4]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r4 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy<4>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [3]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [4]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [4])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_xor<3>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [2]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [3]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r3 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy<3>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [2]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [3]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [3])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_xor<2>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [1]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [2]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r2 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy<2>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [1]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [2]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [2])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_xor<1>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [0]),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [1]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r1 )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy<1>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [0]),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [1]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [1])
  );
  XORCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_xor<0>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/BUS_0002_GND_21_o_LessThan_12_o_inv_inv ),
    .LI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [0]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r )
  );
  MUXCY   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy<0>  (
    .CI(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/BUS_0002_GND_21_o_LessThan_12_o_inv_inv ),
    .DI(S_AXI_RRESP_1_OBUF_117),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [0]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_cy [0])
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blue_r_7  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/enable_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/background_color_i[7]_dir_blue_i[7]_mux_51_OUT<7> ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blue_r [7])
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/green_r_7  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/enable_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/background_color_i[15]_dir_green_i[7]_mux_48_OUT<7> ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/green_r [7])
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_out_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_out_d_r_712 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_out_r_80 )
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_out_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_out_d_r_713 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_out_r_79 )
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_out_d_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_r_708 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_out_d_r_712 )
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_out_d_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_r_709 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_out_d_r_713 )
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/sync_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/sync_d_r_710 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/sync_r_84 )
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blank_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blank_d_r_711 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blank_r_81 )
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/psave_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/psave_d_r_714 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/psave_r_83 )
  );
  FDSE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_INV_16_o_704 ),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_r_708 )
  );
  FDS   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_INV_12_o ),
    .S(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_r_709 )
  );
  FDR   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blank_d_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/enable_s ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blank_d_r_711 )
  );
  FD   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/psave_d_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/locked_del_reg_r_624 ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/psave_d_r_714 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1  (
    .C(S_AXI_ACLK_BUFGP_37),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_753 )
  );
  FDR   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_3  (
    .C(S_AXI_ACLK_BUFGP_37),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Result [3]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_PWR_12_o_OR_9_o ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3])
  );
  FDR   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_2  (
    .C(S_AXI_ACLK_BUFGP_37),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Result [2]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_PWR_12_o_OR_9_o ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [2])
  );
  FDR   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_1  (
    .C(S_AXI_ACLK_BUFGP_37),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Result [1]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_PWR_12_o_OR_9_o ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [1])
  );
  FDR   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_0  (
    .C(S_AXI_ACLK_BUFGP_37),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Result [0]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_PWR_12_o_OR_9_o ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2  (
    .C(S_AXI_ACLK_BUFGP_37),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2-In_756 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_754 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_31  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[31]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [31])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_30  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[30]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [30])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_29  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[29]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [29])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_28  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[28]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [28])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_27  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[27]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [27])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_26  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[26]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [26])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_25  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[25]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [25])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_24  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[24]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [24])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_23  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[23]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [23])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_22  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[22]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [22])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_21  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[21]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [21])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_20  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[20]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [20])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_19  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[19]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [19])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_18  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[18]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_17  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[17]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [17])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_16  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[16]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [16])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_15  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[15]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_14  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[14]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_13  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[13]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_12  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[12]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_11  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[11]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_10  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[10]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_9  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[9]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_8  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[8]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_7  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[7]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_6  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[6]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_5  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[5]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_4  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[4]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_3  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[3]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_2  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[2]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_1  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[1]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_0  (
    .C(S_AXI_ACLK_BUFGP_37),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o ),
    .D(user_IP2Bus_Data[0]),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_GND_99_o_base[13]_mux_7_OUT141  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<9> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<9> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_GND_99_o_base[13]_mux_7_OUT131  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<8> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<8> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_GND_99_o_base[13]_mux_7_OUT121  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<7> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_GND_99_o_base[13]_mux_7_OUT111  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<6> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_GND_99_o_base[13]_mux_7_OUT101  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<5> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_GND_99_o_base[13]_mux_7_OUT91  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<4> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_GND_99_o_base[13]_mux_7_OUT81  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<3> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_GND_99_o_base[13]_mux_7_OUT71  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<2> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_GND_99_o_base[13]_mux_7_OUT61  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<1> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_GND_99_o_base[13]_mux_7_OUT21  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<10> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<10> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_GND_99_o_base[13]_mux_7_OUT11  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_add_6_OUT<0> ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/GND_99_o_base[13]_mux_7_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h0155 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column5  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [0]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [3]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [2]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/column[4]_PWR_37_o_LessThan_22_o_inv111  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [4]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [3]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [2]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column[4]_PWR_37_o_LessThan_22_o_inv1 )
  );
  LUT5 #(
    .INIT ( 32'h00575700 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column11  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [4]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [3]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [2]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [0]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column1 )
  );
  LUT5 #(
    .INIT ( 32'h07505050 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column21  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [4]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [3]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [2]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [0]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column2 )
  );
  LUT5 #(
    .INIT ( 32'h14444444 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column31  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [4]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [3]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [2]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [0]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column3 )
  );
  LUT5 #(
    .INIT ( 32'h42020202 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column41  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [4]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [3]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [2]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [0]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_column4 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_9_o<4>1  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [4]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [3]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [2]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [1]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_9_o )
  );
  LUT4 #(
    .INIT ( 16'h028A ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/_n0124_inv1  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction_386 ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_9_o ),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_6_o ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/_n0124_inv )
  );
  LUT5 #(
    .INIT ( 32'h02000000 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_6_o<4>1  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [4]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [3]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [2]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [1]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_6_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \USER_LOGIC_I/Result<1>21  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction_386 ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [0]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [1]),
    .O(\USER_LOGIC_I/Result<1>2 )
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \USER_LOGIC_I/Result<2>21  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction_386 ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [0]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [1]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [2]),
    .O(\USER_LOGIC_I/Result<2>2 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAA9 ))
  \USER_LOGIC_I/Result<3>21  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [3]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction_386 ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [0]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [1]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [2]),
    .O(\USER_LOGIC_I/Result<3>2 )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAA9 ))
  \USER_LOGIC_I/Result<4>21  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [4]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction_386 ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [0]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [1]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [2]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [3]),
    .O(\USER_LOGIC_I/Result<4>2 )
  );
  LUT6 #(
    .INIT ( 64'h4144514510131433 ))
  \USER_LOGIC_I/Inst_top/Inst_colorbar_driver/color<1>1  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [5]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [7]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [6]),
    .O(\USER_LOGIC_I/Inst_top/dir_blue [0])
  );
  LUT5 #(
    .INIT ( 32'hFFFF1110 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_PWR_36_o_GND_99_o_mux_25_OUT51  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_15_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_17_o ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_19_o ),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_21_o ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_13_o ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT [4])
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_PWR_36_o_GND_99_o_mux_25_OUT21  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_13_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_15_o ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_17_o ),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_19_o ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT [1])
  );
  LUT4 #(
    .INIT ( 16'h5554 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_PWR_36_o_GND_99_o_mux_25_OUT11  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_13_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_15_o ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_17_o ),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_19_o ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT [0])
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF10 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_PWR_36_o_GND_99_o_mux_25_OUT31  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_17_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_19_o ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_21_o ),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_15_o ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_13_o ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT [2])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_PWR_36_o_GND_99_o_mux_25_OUT41  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_13_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_15_o ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_17_o ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mmux_PWR_36_o_GND_99_o_mux_25_OUT61  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_13_o ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_15_o ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_17_o ),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_19_o ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_base[13]_equal_21_o ),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/PWR_36_o_GND_99_o_mux_25_OUT [5])
  );
  LUT4 #(
    .INIT ( 16'h78D8 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/Mmux_active_pixel_s_rom_out_s_MUX_128_o11  (
    .I0(display_mode_i_1_IBUF_0),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_rd_data_o_3 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/rom_out_s ),
    .I3(display_mode_i_0_IBUF_1),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/active_pixel_s_rom_out_s_MUX_128_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \USER_LOGIC_I/Inst_top/vga_top_i/display_mode_i[1]_display_mode_i[1]_OR_30_o1  (
    .I0(display_mode_i_0_IBUF_1),
    .I1(display_mode_i_1_IBUF_0),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/display_mode_i[1]_display_mode_i[1]_OR_30_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF777777F ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_INV_12_o2  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [7]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [6]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [5]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_INV_12_o )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_INV_12_o11  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [6]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [5]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o<11>1 )
  );
  LUT5 #(
    .INIT ( 32'h0444FFFF ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/BUS_0011_GND_21_o_LessThan_28_o_inv_inv11  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/BUS_0011_GND_21_o_LessThan_28_o_inv_inv )
  );
  LUT5 #(
    .INIT ( 32'h2AFFFFFF ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/BUS_0002_GND_21_o_LessThan_12_o_inv_inv11  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/BUS_0002_GND_21_o_LessThan_12_o_inv_inv )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o21  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [7]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [6]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [5]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o21  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [7]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [6]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [5]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [4]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mmux_background_color_i[15]_dir_green_i[7]_mux_48_OUT181  (
    .I0(direct_mode_i_IBUF_36),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame_mmx_out ),
    .I2(\USER_LOGIC_I/Inst_top/dir_blue [0]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/background_color_i[7]_dir_blue_i[7]_mux_51_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Mcount_INCLUDE_DPHASE_TIMER.dpto_cnt_xor<2>11  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [2]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [0]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [1]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Mcount_INCLUDE_DPHASE_TIMER.dpto_cnt_xor<3>11  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [0]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [1]),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [2]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Result [3])
  );
  LUT5 #(
    .INIT ( 32'h11111000 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Mmux_start11  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_753 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_754 ),
    .I2(S_AXI_AWVALID_IBUF_39),
    .I3(S_AXI_WVALID_IBUF_40),
    .I4(S_AXI_ARVALID_IBUF_42),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/start )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_PWR_12_o_OR_9_o1  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_754 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_753 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_PWR_12_o_OR_9_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Mcount_INCLUDE_DPHASE_TIMER.dpto_cnt_xor<1>11  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [1]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [0]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_GND_12_o_state[1]_equal_14_o1  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_754 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_753 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/GND_12_o_state[1]_equal_14_o )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/wrce_out_i1  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .O(ipif_Bus2IP_WrCE)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o1_SW0  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [8]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [9]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h01115555FFFFFFFF ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o1  (
    .I0(N2),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [6]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [4]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [5]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [7]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [10]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/base[13]_GND_99_o_LessThan_6_o )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o1  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [3]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [2]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [1]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o1_765 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o3  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [1]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [1]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [4]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [4]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [3]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [3]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o3_767 )
  );
  LUT6 #(
    .INIT ( 64'h8200008200000000 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o4  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o2_766 ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [0]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [0]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/column [2]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [2]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o3_767 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/value_0_glue_set )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv1_SW0  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [8]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [9]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA88808080 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv1  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [10]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [6]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [4]),
    .I5(N4),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv )
  );
  LUT6 #(
    .INIT ( 64'h01115555FFFFFFFF ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv_inv  (
    .I0(N4),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [6]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [4]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [10]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/address[13]_GND_99_o_LessThan_27_o_inv_inv_337 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>1  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [16]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [11]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [19]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [18]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [21]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [20]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_1 [25])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>2  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [3]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [2]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [5]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [4]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [7]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>1_770 )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>3  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [8]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [9]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [10]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [12]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [1]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>2_771 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>4  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [14]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [13]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [15]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [17]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>3_772 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>5  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_1 [25]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>1_770 ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>2_771 ),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>3_772 ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index_t[30]_GND_30_o_LessThan_5_o1_SW0  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [7]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [6]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [8]),
    .O(N8)
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o<11>_SW0  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [1]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [0]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o<11>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [2]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I3(N10),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o<11>1 ),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [7]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame1  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [2]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame1_775 )
  );
  LUT6 #(
    .INIT ( 64'hAAA8A8A8A8A8A8A8 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame2  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [7]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_BUS_0008_equal_24_o<11>1 ),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [2]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame2_776 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame3  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [6]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [7]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame3_777 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8888888 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame4  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame3_777 ),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [5]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [4]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame4_778 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame5  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame5_779 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/_n02422_SW0  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [7]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'h0111111111111111 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/_n02422  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .I1(N12),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [7]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [6]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [5]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/enable_s )
  );
  LUT5 #(
    .INIT ( 32'hFFFFBDFF ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_INV_16_o_SW0  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [0]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [1]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [4]),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF7FFF ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_INV_16_o  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [7]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [6]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [5]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .I5(N14),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/GND_21_o_INV_16_o_704 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0_t[30]_GND_48_o_LessThan_8_o1_SW0  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [13]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [12]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [14]),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21  (
    .I0(\USER_LOGIC_I/Inst_top/pixel_address [18]),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [19]),
    .I2(\USER_LOGIC_I/Inst_top/pixel_address [17]),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [16]),
    .I4(\USER_LOGIC_I/Inst_top/pixel_address [15]),
    .I5(\USER_LOGIC_I/Inst_top/pixel_address [14]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 )
  );
  LUT6 #(
    .INIT ( 64'h0001010111111111 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o22  (
    .I0(\USER_LOGIC_I/Inst_top/pixel_address [12]),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [11]),
    .I2(\USER_LOGIC_I/Inst_top/pixel_address [9]),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [8]),
    .I4(\USER_LOGIC_I/Inst_top/pixel_address [7]),
    .I5(\USER_LOGIC_I/Inst_top/pixel_address [10]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 )
  );
  IBUF   display_mode_i_1_IBUF (
    .I(display_mode_i[1]),
    .O(display_mode_i_1_IBUF_0)
  );
  IBUF   display_mode_i_0_IBUF (
    .I(display_mode_i[0]),
    .O(display_mode_i_0_IBUF_1)
  );
  IBUF   S_AXI_WDATA_31_IBUF (
    .I(S_AXI_WDATA[31]),
    .O(S_AXI_WDATA_31_IBUF_2)
  );
  IBUF   S_AXI_WDATA_30_IBUF (
    .I(S_AXI_WDATA[30]),
    .O(S_AXI_WDATA_30_IBUF_3)
  );
  IBUF   S_AXI_WDATA_29_IBUF (
    .I(S_AXI_WDATA[29]),
    .O(S_AXI_WDATA_29_IBUF_4)
  );
  IBUF   S_AXI_WDATA_28_IBUF (
    .I(S_AXI_WDATA[28]),
    .O(S_AXI_WDATA_28_IBUF_5)
  );
  IBUF   S_AXI_WDATA_27_IBUF (
    .I(S_AXI_WDATA[27]),
    .O(S_AXI_WDATA_27_IBUF_6)
  );
  IBUF   S_AXI_WDATA_26_IBUF (
    .I(S_AXI_WDATA[26]),
    .O(S_AXI_WDATA_26_IBUF_7)
  );
  IBUF   S_AXI_WDATA_25_IBUF (
    .I(S_AXI_WDATA[25]),
    .O(S_AXI_WDATA_25_IBUF_8)
  );
  IBUF   S_AXI_WDATA_24_IBUF (
    .I(S_AXI_WDATA[24]),
    .O(S_AXI_WDATA_24_IBUF_9)
  );
  IBUF   S_AXI_WDATA_23_IBUF (
    .I(S_AXI_WDATA[23]),
    .O(S_AXI_WDATA_23_IBUF_10)
  );
  IBUF   S_AXI_WDATA_22_IBUF (
    .I(S_AXI_WDATA[22]),
    .O(S_AXI_WDATA_22_IBUF_11)
  );
  IBUF   S_AXI_WDATA_21_IBUF (
    .I(S_AXI_WDATA[21]),
    .O(S_AXI_WDATA_21_IBUF_12)
  );
  IBUF   S_AXI_WDATA_20_IBUF (
    .I(S_AXI_WDATA[20]),
    .O(S_AXI_WDATA_20_IBUF_13)
  );
  IBUF   S_AXI_WDATA_19_IBUF (
    .I(S_AXI_WDATA[19]),
    .O(S_AXI_WDATA_19_IBUF_14)
  );
  IBUF   S_AXI_WDATA_18_IBUF (
    .I(S_AXI_WDATA[18]),
    .O(S_AXI_WDATA_18_IBUF_15)
  );
  IBUF   S_AXI_WDATA_17_IBUF (
    .I(S_AXI_WDATA[17]),
    .O(S_AXI_WDATA_17_IBUF_16)
  );
  IBUF   S_AXI_WDATA_16_IBUF (
    .I(S_AXI_WDATA[16]),
    .O(S_AXI_WDATA_16_IBUF_17)
  );
  IBUF   S_AXI_WDATA_15_IBUF (
    .I(S_AXI_WDATA[15]),
    .O(S_AXI_WDATA_15_IBUF_18)
  );
  IBUF   S_AXI_WDATA_14_IBUF (
    .I(S_AXI_WDATA[14]),
    .O(S_AXI_WDATA_14_IBUF_19)
  );
  IBUF   S_AXI_WDATA_13_IBUF (
    .I(S_AXI_WDATA[13]),
    .O(S_AXI_WDATA_13_IBUF_20)
  );
  IBUF   S_AXI_WDATA_12_IBUF (
    .I(S_AXI_WDATA[12]),
    .O(S_AXI_WDATA_12_IBUF_21)
  );
  IBUF   S_AXI_WDATA_11_IBUF (
    .I(S_AXI_WDATA[11]),
    .O(S_AXI_WDATA_11_IBUF_22)
  );
  IBUF   S_AXI_WDATA_10_IBUF (
    .I(S_AXI_WDATA[10]),
    .O(S_AXI_WDATA_10_IBUF_23)
  );
  IBUF   S_AXI_WDATA_9_IBUF (
    .I(S_AXI_WDATA[9]),
    .O(S_AXI_WDATA_9_IBUF_24)
  );
  IBUF   S_AXI_WDATA_8_IBUF (
    .I(S_AXI_WDATA[8]),
    .O(S_AXI_WDATA_8_IBUF_25)
  );
  IBUF   S_AXI_WDATA_7_IBUF (
    .I(S_AXI_WDATA[7]),
    .O(S_AXI_WDATA_7_IBUF_26)
  );
  IBUF   S_AXI_WDATA_6_IBUF (
    .I(S_AXI_WDATA[6]),
    .O(S_AXI_WDATA_6_IBUF_27)
  );
  IBUF   S_AXI_WDATA_5_IBUF (
    .I(S_AXI_WDATA[5]),
    .O(S_AXI_WDATA_5_IBUF_28)
  );
  IBUF   S_AXI_WDATA_4_IBUF (
    .I(S_AXI_WDATA[4]),
    .O(S_AXI_WDATA_4_IBUF_29)
  );
  IBUF   S_AXI_WDATA_3_IBUF (
    .I(S_AXI_WDATA[3]),
    .O(S_AXI_WDATA_3_IBUF_30)
  );
  IBUF   S_AXI_WDATA_2_IBUF (
    .I(S_AXI_WDATA[2]),
    .O(S_AXI_WDATA_2_IBUF_31)
  );
  IBUF   S_AXI_WDATA_1_IBUF (
    .I(S_AXI_WDATA[1]),
    .O(S_AXI_WDATA_1_IBUF_32)
  );
  IBUF   S_AXI_WDATA_0_IBUF (
    .I(S_AXI_WDATA[0]),
    .O(S_AXI_WDATA_0_IBUF_33)
  );
  IBUF   reset_n_i_IBUF (
    .I(reset_n_i),
    .O(reset_n_i_IBUF_35)
  );
  IBUF   direct_mode_i_IBUF (
    .I(direct_mode_i),
    .O(direct_mode_i_IBUF_36)
  );
  IBUF   S_AXI_ARESETN_IBUF (
    .I(S_AXI_ARESETN),
    .O(S_AXI_ARESETN_IBUF_38)
  );
  IBUF   S_AXI_AWVALID_IBUF (
    .I(S_AXI_AWVALID),
    .O(S_AXI_AWVALID_IBUF_39)
  );
  IBUF   S_AXI_WVALID_IBUF (
    .I(S_AXI_WVALID),
    .O(S_AXI_WVALID_IBUF_40)
  );
  IBUF   S_AXI_BREADY_IBUF (
    .I(S_AXI_BREADY),
    .O(S_AXI_BREADY_IBUF_41)
  );
  IBUF   S_AXI_ARVALID_IBUF (
    .I(S_AXI_ARVALID),
    .O(S_AXI_ARVALID_IBUF_42)
  );
  IBUF   S_AXI_RREADY_IBUF (
    .I(S_AXI_RREADY),
    .O(S_AXI_RREADY_IBUF_43)
  );
  OBUF   red_o_7_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r [7]),
    .O(red_o[7])
  );
  OBUF   red_o_6_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r [7]),
    .O(red_o[6])
  );
  OBUF   red_o_5_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r [7]),
    .O(red_o[5])
  );
  OBUF   red_o_4_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r [7]),
    .O(red_o[4])
  );
  OBUF   red_o_3_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r [7]),
    .O(red_o[3])
  );
  OBUF   red_o_2_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r [7]),
    .O(red_o[2])
  );
  OBUF   red_o_1_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r [7]),
    .O(red_o[1])
  );
  OBUF   red_o_0_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r [7]),
    .O(red_o[0])
  );
  OBUF   green_o_7_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/green_r [7]),
    .O(green_o[7])
  );
  OBUF   green_o_6_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/green_r [7]),
    .O(green_o[6])
  );
  OBUF   green_o_5_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/green_r [7]),
    .O(green_o[5])
  );
  OBUF   green_o_4_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/green_r [7]),
    .O(green_o[4])
  );
  OBUF   green_o_3_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/green_r [7]),
    .O(green_o[3])
  );
  OBUF   green_o_2_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/green_r [7]),
    .O(green_o[2])
  );
  OBUF   green_o_1_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/green_r [7]),
    .O(green_o[1])
  );
  OBUF   green_o_0_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/green_r [7]),
    .O(green_o[0])
  );
  OBUF   blue_o_7_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blue_r [7]),
    .O(blue_o[7])
  );
  OBUF   blue_o_6_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blue_r [7]),
    .O(blue_o[6])
  );
  OBUF   blue_o_5_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blue_r [7]),
    .O(blue_o[5])
  );
  OBUF   blue_o_4_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blue_r [7]),
    .O(blue_o[4])
  );
  OBUF   blue_o_3_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blue_r [7]),
    .O(blue_o[3])
  );
  OBUF   blue_o_2_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blue_r [7]),
    .O(blue_o[2])
  );
  OBUF   blue_o_1_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blue_r [7]),
    .O(blue_o[1])
  );
  OBUF   blue_o_0_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blue_r [7]),
    .O(blue_o[0])
  );
  OBUF   S_AXI_RDATA_31_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [31]),
    .O(S_AXI_RDATA[31])
  );
  OBUF   S_AXI_RDATA_30_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [30]),
    .O(S_AXI_RDATA[30])
  );
  OBUF   S_AXI_RDATA_29_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [29]),
    .O(S_AXI_RDATA[29])
  );
  OBUF   S_AXI_RDATA_28_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [28]),
    .O(S_AXI_RDATA[28])
  );
  OBUF   S_AXI_RDATA_27_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [27]),
    .O(S_AXI_RDATA[27])
  );
  OBUF   S_AXI_RDATA_26_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [26]),
    .O(S_AXI_RDATA[26])
  );
  OBUF   S_AXI_RDATA_25_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [25]),
    .O(S_AXI_RDATA[25])
  );
  OBUF   S_AXI_RDATA_24_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [24]),
    .O(S_AXI_RDATA[24])
  );
  OBUF   S_AXI_RDATA_23_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [23]),
    .O(S_AXI_RDATA[23])
  );
  OBUF   S_AXI_RDATA_22_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [22]),
    .O(S_AXI_RDATA[22])
  );
  OBUF   S_AXI_RDATA_21_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [21]),
    .O(S_AXI_RDATA[21])
  );
  OBUF   S_AXI_RDATA_20_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [20]),
    .O(S_AXI_RDATA[20])
  );
  OBUF   S_AXI_RDATA_19_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [19]),
    .O(S_AXI_RDATA[19])
  );
  OBUF   S_AXI_RDATA_18_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [18]),
    .O(S_AXI_RDATA[18])
  );
  OBUF   S_AXI_RDATA_17_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [17]),
    .O(S_AXI_RDATA[17])
  );
  OBUF   S_AXI_RDATA_16_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [16]),
    .O(S_AXI_RDATA[16])
  );
  OBUF   S_AXI_RDATA_15_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [15]),
    .O(S_AXI_RDATA[15])
  );
  OBUF   S_AXI_RDATA_14_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [14]),
    .O(S_AXI_RDATA[14])
  );
  OBUF   S_AXI_RDATA_13_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [13]),
    .O(S_AXI_RDATA[13])
  );
  OBUF   S_AXI_RDATA_12_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [12]),
    .O(S_AXI_RDATA[12])
  );
  OBUF   S_AXI_RDATA_11_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [11]),
    .O(S_AXI_RDATA[11])
  );
  OBUF   S_AXI_RDATA_10_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [10]),
    .O(S_AXI_RDATA[10])
  );
  OBUF   S_AXI_RDATA_9_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [9]),
    .O(S_AXI_RDATA[9])
  );
  OBUF   S_AXI_RDATA_8_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [8]),
    .O(S_AXI_RDATA[8])
  );
  OBUF   S_AXI_RDATA_7_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [7]),
    .O(S_AXI_RDATA[7])
  );
  OBUF   S_AXI_RDATA_6_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [6]),
    .O(S_AXI_RDATA[6])
  );
  OBUF   S_AXI_RDATA_5_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [5]),
    .O(S_AXI_RDATA[5])
  );
  OBUF   S_AXI_RDATA_4_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [4]),
    .O(S_AXI_RDATA[4])
  );
  OBUF   S_AXI_RDATA_3_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [3]),
    .O(S_AXI_RDATA[3])
  );
  OBUF   S_AXI_RDATA_2_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [2]),
    .O(S_AXI_RDATA[2])
  );
  OBUF   S_AXI_RDATA_1_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [1]),
    .O(S_AXI_RDATA[1])
  );
  OBUF   S_AXI_RDATA_0_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [0]),
    .O(S_AXI_RDATA[0])
  );
  OBUF   S_AXI_RRESP_1_OBUF (
    .I(S_AXI_RRESP_1_OBUF_117),
    .O(S_AXI_RRESP[1])
  );
  OBUF   S_AXI_RRESP_0_OBUF (
    .I(S_AXI_RRESP_1_OBUF_117),
    .O(S_AXI_RRESP[0])
  );
  OBUF   S_AXI_BRESP_1_OBUF (
    .I(S_AXI_RRESP_1_OBUF_117),
    .O(S_AXI_BRESP[1])
  );
  OBUF   S_AXI_BRESP_0_OBUF (
    .I(S_AXI_RRESP_1_OBUF_117),
    .O(S_AXI_BRESP[0])
  );
  OBUF   vga_hsync_o_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_out_r_79 ),
    .O(vga_hsync_o)
  );
  OBUF   vga_vsync_o_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_out_r_80 ),
    .O(vga_vsync_o)
  );
  OBUF   blank_o_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/blank_r_81 ),
    .O(blank_o)
  );
  OBUF   pix_clock_o_OBUF (
    .I(pix_clock_o_OBUF_82),
    .O(pix_clock_o)
  );
  OBUF   psave_o_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/psave_r_83 ),
    .O(psave_o)
  );
  OBUF   sync_o_OBUF (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/sync_r_84 ),
    .O(sync_o)
  );
  OBUF   S_AXI_ARREADY_OBUF (
    .I(S_AXI_ARREADY_OBUF_121),
    .O(S_AXI_ARREADY)
  );
  OBUF   S_AXI_RVALID_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_122 ),
    .O(S_AXI_RVALID)
  );
  OBUF   S_AXI_WREADY_OBUF (
    .I(S_AXI_AWREADY_OBUF_119),
    .O(S_AXI_WREADY)
  );
  OBUF   S_AXI_BVALID_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_120 ),
    .O(S_AXI_BVALID)
  );
  OBUF   S_AXI_AWREADY_OBUF (
    .I(S_AXI_AWREADY_OBUF_119),
    .O(S_AXI_AWREADY)
  );
  FDR   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/value_0  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/value_0_glue_set ),
    .R(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/value [0])
  );
  FDRE   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r_7  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .CE(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/enable_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r_7_glue_set_900 ),
    .R(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i  (
    .C(S_AXI_ACLK_BUFGP_37),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_glue_set_901 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_120 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i  (
    .C(S_AXI_ACLK_BUFGP_37),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_glue_set_902 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_122 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<20>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [20]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<20>_rt_903 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<19>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [19]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<19>_rt_904 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<18>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [18]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<18>_rt_905 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<17>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [17]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<17>_rt_906 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<16>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [16]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<16>_rt_907 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<15>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [15]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<15>_rt_908 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<14>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [14]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<14>_rt_909 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<13>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [13]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<13>_rt_910 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<12>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [12]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<12>_rt_911 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<11>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [11]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<11>_rt_912 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<10>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [10]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<10>_rt_913 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<9>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [9]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<9>_rt_914 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<8>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<8>_rt_915 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<7>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [7]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<7>_rt_916 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<6>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<6>_rt_917 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<5>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [5]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<5>_rt_918 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<4>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<4>_rt_919 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<3>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [3]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<3>_rt_920 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<2>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [2]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<2>_rt_921 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<1>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_cy<1>_rt_922 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<10>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [10]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<10>_rt_923 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<9>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [9]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<9>_rt_924 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<8>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<8>_rt_925 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<7>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [7]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<7>_rt_926 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<6>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<6>_rt_927 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<5>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [5]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<5>_rt_928 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<4>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<4>_rt_929 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<3>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [3]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<3>_rt_930 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<2>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [2]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<2>_rt_931 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<1>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_cy<1>_rt_932 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<10>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [10]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<10>_rt_933 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<9>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [9]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<9>_rt_934 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<8>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<8>_rt_935 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<7>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [7]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<7>_rt_936 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<6>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<6>_rt_937 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<5>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [5]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<5>_rt_938 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<4>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<4>_rt_939 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<3>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [3]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<3>_rt_940 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<2>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [2]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_cy<2>_rt_941 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<10>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [10]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<10>_rt_942 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<9>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [9]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<9>_rt_943 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<8>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<8>_rt_944 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<7>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [7]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<7>_rt_945 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<6>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<6>_rt_946 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<5>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [5]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<5>_rt_947 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<4>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<4>_rt_948 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<3>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [3]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<3>_rt_949 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<2>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [2]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_cy<2>_rt_950 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<10>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [10]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<10>_rt_951 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<9>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [9]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<9>_rt_952 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<8>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<8>_rt_953 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<7>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [7]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<7>_rt_954 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<6>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<6>_rt_955 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<5>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [5]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<5>_rt_956 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<4>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<4>_rt_957 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<3>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [3]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_cy<3>_rt_958 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<10>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [10]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<10>_rt_959 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<9>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [9]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<9>_rt_960 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<8>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<8>_rt_961 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<7>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [7]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<7>_rt_962 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<6>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<6>_rt_963 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<5>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [5]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<5>_rt_964 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<4>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<4>_rt_965 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<3>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [3]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<3>_rt_966 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<1>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_cy<1>_rt_967 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<21>_rt  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [21]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_xor<21>_rt_968 )
  );
  FD   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/sync_d_r  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/sync_d_r_rstpot_969 ),
    .Q(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/sync_d_r_710 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg  (
    .C(S_AXI_ACLK_BUFGP_37),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_rstpot_970 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst  (
    .C(S_AXI_ACLK_BUFGP_37),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_762 )
  );
  FD   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction  (
    .C(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .D(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction_rstpot_972 ),
    .Q(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction_386 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0  (
    .C(S_AXI_ACLK_BUFGP_37),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot1_973 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index21  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [10]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [10])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index31  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [11]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [11])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_031  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [16]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [11])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_041  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [17]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [12])
  );
  LUT6 #(
    .INIT ( 64'h0000000400040004 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index41  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [11]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [10]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [9]),
    .I5(N8),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [12])
  );
  LUT6 #(
    .INIT ( 64'h000000F0000010F0 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index131  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [11]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [10]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [9]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .I5(N8),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [9])
  );
  LUT6 #(
    .INIT ( 64'h000000F0000010F0 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_021  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [17]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [16]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .I5(N16),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [10])
  );
  LUT6 #(
    .INIT ( 64'h0000010000001100 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_051  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [16]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [17]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .I5(N16),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [13])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index_t[30]_GND_30_o_LessThan_5_o1_SW1  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [11]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [10]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index14  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [0]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .I4(N20),
    .I5(N8),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [0])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index51  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [1]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .I4(N20),
    .I5(N8),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [1])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index61  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [2]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .I4(N20),
    .I5(N8),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [2])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index71  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [3]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .I4(N20),
    .I5(N8),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [3])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index81  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [4]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .I4(N20),
    .I5(N8),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [4])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index91  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [5]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .I4(N20),
    .I5(N8),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [5])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index101  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [6]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .I4(N20),
    .I5(N8),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [6])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index111  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [7]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .I4(N20),
    .I5(N8),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [7])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mmux_index121  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [8]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [12]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/txt_rom_addr_c [13]),
    .I4(N20),
    .I5(N8),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [8])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0_t[30]_GND_48_o_LessThan_8_o1_SW1  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [17]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [16]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_015  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [5]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .I4(N38),
    .I5(N16),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [0])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_061  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [6]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .I4(N38),
    .I5(N16),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [1])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_071  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [7]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .I4(N38),
    .I5(N16),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [2])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_081  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [8]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .I4(N38),
    .I5(N16),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [3])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_091  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [9]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .I4(N38),
    .I5(N16),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [4])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_0101  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [10]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .I4(N38),
    .I5(N16),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [5])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_0111  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [11]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .I4(N38),
    .I5(N16),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [6])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_0121  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [12]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .I4(N38),
    .I5(N16),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [7])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_0131  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [13]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .I4(N38),
    .I5(N16),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [8])
  );
  LUT6 #(
    .INIT ( 64'h000A002A000A00AA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_0141  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [14]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [15]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [18]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/graph_pixel_addr_c [19]),
    .I4(N38),
    .I5(N16),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [9])
  );
  LUT5 #(
    .INIT ( 32'h2020FF20 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_glue_set  (
    .I0(S_AXI_AWREADY_OBUF_119),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_754 ),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_753 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_120 ),
    .I4(S_AXI_BREADY_IBUF_41),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_glue_set_901 )
  );
  LUT5 #(
    .INIT ( 32'h2020FF20 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_glue_set  (
    .I0(S_AXI_ARREADY_OBUF_121),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_753 ),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_754 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_122 ),
    .I4(S_AXI_RREADY_IBUF_43),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_glue_set_902 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/sync_d_r_rstpot  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/horiz_sync_r_709 ),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/vert_sync_r_708 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/locked_del_reg_r_624 ),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/sync_d_r_rstpot_969 )
  );
  LUT6 #(
    .INIT ( 64'h0002222255577777 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mmux_background_color_i[15]_dir_green_i[7]_mux_48_OUT81  (
    .I0(direct_mode_i_IBUF_36),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [6]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [7]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame_mmx_out ),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/background_color_i[15]_dir_green_i[7]_mux_48_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2-In_SW1  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_120 ),
    .I1(S_AXI_BREADY_IBUF_41),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_122 ),
    .I3(S_AXI_RREADY_IBUF_43),
    .O(N58)
  );
  LUT5 #(
    .INIT ( 32'h5EFE54F4 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2-In  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_753 ),
    .I1(S_AXI_ARVALID_IBUF_42),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_754 ),
    .I3(N58),
    .I4(S_AXI_AWREADY_OBUF_119),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2-In_756 )
  );
  LUT5 #(
    .INIT ( 32'hFFFEFFFF ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame11  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame1_775 ),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame4_778 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame5_779 ),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame2_776 ),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/active_pixel_s_599 ),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame_mmx_out )
  );
  LUT5 #(
    .INIT ( 32'h01FFFFFF ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/row[8]_PWR_37_o_LessThan_24_o_inv_inv1  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [6]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [4]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [5]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row[8]_PWR_37_o_LessThan_24_o_inv_inv )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_251  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [13])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_215  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [0]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [0])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_221  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [10]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [10])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_231  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [11]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [11])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_241  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [12]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [12])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_261  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [1]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [1])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_271  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [2]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [2])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_281  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [3]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [3])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_291  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [4]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [4])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_2101  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [5]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [5])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_2111  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [6]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [6])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_2121  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [7]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [7])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_2131  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [8]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [8])
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_index_2141  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o2 ),
    .I1(\USER_LOGIC_I/Inst_top/pixel_address [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2_t[30]_GND_48_o_LessThan_14_o21_784 ),
    .I3(\USER_LOGIC_I/Inst_top/pixel_address [13]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [9])
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rd_done1  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3]),
    .O(S_AXI_ARREADY_OBUF_121)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/wr_done1  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3]),
    .O(S_AXI_AWREADY_OBUF_119)
  );
  LUT5 #(
    .INIT ( 32'h8000FFFF ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_01  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>3_772 ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_1 [25]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>1_770 ),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o<25>2_771 ),
    .I4(reset_n_i_IBUF_35),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_1_o_0 )
  );
  LUT6 #(
    .INIT ( 64'h0004040444444444 ))
  \USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut<10>  (
    .I0(N4),
    .I1(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [10]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [6]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [4]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcount_address_lut [10])
  );
  LUT6 #(
    .INIT ( 64'hAAAFAAAFAAA2AAAA ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_rstpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I1(S_AXI_AWVALID_IBUF_39),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_753 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_754 ),
    .I4(S_AXI_WVALID_IBUF_40),
    .I5(S_AXI_ARVALID_IBUF_42),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_rstpot_970 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data110  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [0]),
    .O(user_IP2Bus_Data[0])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data210  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [10]),
    .O(user_IP2Bus_Data[10])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data33  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [11]),
    .O(user_IP2Bus_Data[11])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data41  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [12]),
    .O(user_IP2Bus_Data[12])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data51  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [13]),
    .O(user_IP2Bus_Data[13])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data61  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [14]),
    .O(user_IP2Bus_Data[14])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data71  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [15]),
    .O(user_IP2Bus_Data[15])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data81  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [16]),
    .O(user_IP2Bus_Data[16])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data91  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [17]),
    .O(user_IP2Bus_Data[17])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data101  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [18]),
    .O(user_IP2Bus_Data[18])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data111  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [19]),
    .O(user_IP2Bus_Data[19])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data121  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [1]),
    .O(user_IP2Bus_Data[1])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data131  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [20]),
    .O(user_IP2Bus_Data[20])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data141  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [21]),
    .O(user_IP2Bus_Data[21])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data151  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [22]),
    .O(user_IP2Bus_Data[22])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data161  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [23]),
    .O(user_IP2Bus_Data[23])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data171  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [24]),
    .O(user_IP2Bus_Data[24])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data181  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [25]),
    .O(user_IP2Bus_Data[25])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data191  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [26]),
    .O(user_IP2Bus_Data[26])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data201  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [27]),
    .O(user_IP2Bus_Data[27])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data211  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [28]),
    .O(user_IP2Bus_Data[28])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data221  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [29]),
    .O(user_IP2Bus_Data[29])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data231  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [2]),
    .O(user_IP2Bus_Data[2])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data241  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [30]),
    .O(user_IP2Bus_Data[30])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data251  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [31]),
    .O(user_IP2Bus_Data[31])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data261  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [3]),
    .O(user_IP2Bus_Data[3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data271  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [4]),
    .O(user_IP2Bus_Data[4])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data281  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [5]),
    .O(user_IP2Bus_Data[5])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data291  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [6]),
    .O(user_IP2Bus_Data[6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data301  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [7]),
    .O(user_IP2Bus_Data[7])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data311  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [8]),
    .O(user_IP2Bus_Data[8])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data321  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_757 ),
    .I2(\USER_LOGIC_I/slv_reg0 [9]),
    .O(user_IP2Bus_Data[9])
  );
  LUT6 #(
    .INIT ( 64'h4040424000000200 ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o2  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [5]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [6]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o1_765 ),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [4]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_column[4]_AND_225_o2_766 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut<8>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut<4>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [4]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut<5>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [5]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut<6>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [6]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [6])
  );
  LUT5 #(
    .INIT ( 32'h2A2AAA2A ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut<3>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [3])
  );
  LUT5 #(
    .INIT ( 32'h22222A22 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut<2>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 ),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [2])
  );
  LUT5 #(
    .INIT ( 32'h2A2AAA2A ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut<4>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [4])
  );
  LUT5 #(
    .INIT ( 32'h22222A22 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut<3>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 ),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [3])
  );
  LUT5 #(
    .INIT ( 32'h0888AAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut<8>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [8])
  );
  LUT5 #(
    .INIT ( 32'h2222222A ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut<7>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [4]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [5]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [7])
  );
  LUT5 #(
    .INIT ( 32'h0888AAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut<9>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [9])
  );
  LUT5 #(
    .INIT ( 32'h2222222A ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut<8>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [4]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [5]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [6]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [8])
  );
  LUT5 #(
    .INIT ( 32'h00404040 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut<9>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [9])
  );
  LUT6 #(
    .INIT ( 64'h0888AAAAAAAAAAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut<0>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [0]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h0888AAAAAAAAAAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut<1>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [1]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h00202020AAAAAAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut<0>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [0]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 ),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h0888AAAAAAAAAAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut<2>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [2]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h2A2A2A2A2A2A2AAA ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut<0>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [0]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [5]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [6]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h00202020AAAAAAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut<1>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [1]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 ),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h2A2A2A2A2A2A2AAA ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut<1>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [1]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [5]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [6]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h2A2A2A2A2A2A2AAA ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut<2>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [2]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [5]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [6]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h0888AAAAAAAAAAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut<5>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [5]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h2A2A2A2A2A2A2AAA ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut<3>  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [3]),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [7]),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [8]),
    .I3(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [5]),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [6]),
    .I5(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/row [4]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_row_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h00202020AAAAAAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut<4>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [4]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 ),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [4])
  );
  LUT6 #(
    .INIT ( 64'h0888AAAAAAAAAAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut<6>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [6]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h00202020AAAAAAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut<5>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [5]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 ),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h0888AAAAAAAAAAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut<7>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [7]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r[10]_GND_21_o_LessThan_64_o2 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [3]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [4]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_h_count_r_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h00202020AAAAAAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut<6>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [6]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 ),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h00202020AAAAAAAA ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut<7>  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [7]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [8]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r[10]_GND_21_o_LessThan_62_o2 ),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3]),
    .I5(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [9]),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/Mcount_v_count_r_lut [7])
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot1  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3]),
    .I1(S_AXI_ARESETN_IBUF_38),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_763 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/start ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot1_973 )
  );
  LUT5 #(
    .INIT ( 32'h6EFF2AFF ))
  \USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction_rstpot  (
    .I0(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction_386 ),
    .I1(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_344 ),
    .I2(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_6_o ),
    .I3(reset_n_i_IBUF_35),
    .I4(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/GND_100_o_GND_100_o_equal_9_o ),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/direction_rstpot_972 )
  );
  MUXF7   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r_7_glue_set  (
    .I0(N62),
    .I1(N63),
    .S(direct_mode_i_IBUF_36),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r_7_glue_set_900 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r_7_glue_set_F  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame4_778 ),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame5_779 ),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame2_776 ),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/active_frame1_775 ),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/active_pixel_s_599 ),
    .O(N62)
  );
  LUT5 #(
    .INIT ( 32'h15015055 ))
  \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/red_r_7_glue_set_G  (
    .I0(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [9]),
    .I1(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [5]),
    .I2(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [6]),
    .I3(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [8]),
    .I4(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/h_count_r [7]),
    .O(N63)
  );
  MUXF7   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In3  (
    .I0(N64),
    .I1(N65),
    .S(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_753 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'h8D888888 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In3_F  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_754 ),
    .I1(S_AXI_ARREADY_OBUF_121),
    .I2(S_AXI_ARVALID_IBUF_42),
    .I3(S_AXI_AWVALID_IBUF_39),
    .I4(S_AXI_WVALID_IBUF_40),
    .O(N64)
  );
  LUT5 #(
    .INIT ( 32'h557F7F7F ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In3_G  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_754 ),
    .I1(S_AXI_RREADY_IBUF_43),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_122 ),
    .I3(S_AXI_BREADY_IBUF_41),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_120 ),
    .O(N65)
  );
  BUFGP   S_AXI_ACLK_BUFGP (
    .I(S_AXI_ACLK),
    .O(S_AXI_ACLK_BUFGP_37)
  );
  INV   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_lut<0>_INV_0  (
    .I(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/move_counter [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/Mcount_move_counter_lut [0])
  );
  INV   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_lut<0>_INV_0  (
    .I(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_6_OUT_lut<0> )
  );
  INV   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_lut<1>_INV_0  (
    .I(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_13_OUT_lut<1> )
  );
  INV   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_lut<1>_INV_0  (
    .I(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [1]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_lut<1> )
  );
  INV   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_lut<0>_INV_0  (
    .I(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_15_OUT_lut<0> )
  );
  INV   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_lut<2>_INV_0  (
    .I(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [2]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_17_OUT_lut<2> )
  );
  INV   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_lut<2>_INV_0  (
    .I(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [2]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_lut<2> )
  );
  INV   \USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_lut<0>_INV_0  (
    .I(\USER_LOGIC_I/Inst_top/Inst_text_driver/base [0]),
    .O(\USER_LOGIC_I/Inst_top/Inst_text_driver/Madd_base[13]_GND_99_o_add_19_OUT_lut<0> )
  );
  INV   \USER_LOGIC_I/Result<0>21_INV_0  (
    .I(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/origin [0]),
    .O(\USER_LOGIC_I/Result<0>2 )
  );
  INV   \USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv1_INV_0  (
    .I(reset_n_i_IBUF_35),
    .O(\USER_LOGIC_I/Inst_top/Inst_pixel_driver/reset_n_i_inv )
  );
  INV   \USER_LOGIC_I/Inst_top/pix_clock_n1_INV_0  (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .O(\USER_LOGIC_I/Inst_top/pix_clock_n )
  );
  INV   \USER_LOGIC_I/Bus2IP_Resetn_inv1_INV_0  (
    .I(S_AXI_ARESETN_IBUF_38),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot )
  );
  INV   \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv1_INV_0  (
    .I(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/locked_del_reg_r_624 ),
    .O(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/rst_n_i_inv )
  );
  INV   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Mcount_INCLUDE_DPHASE_TIMER.dpto_cnt_xor<0>11_INV_0  (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [0]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/Result [0])
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2  (
    .REGCEA(S_AXI_RRESP_1_OBUF_117),
    .CLKA(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .ENB(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .RSTB(S_AXI_RRESP_1_OBUF_117),
    .CLKB(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .REGCEB(S_AXI_RRESP_1_OBUF_117),
    .RSTA(S_AXI_RRESP_1_OBUF_117),
    .ENA(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .DIPA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPA<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPA<0>_UNCONNECTED }),
    .WEA({\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> }),
    .DOA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOA<0>_UNCONNECTED }),
    .ADDRA({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, \USER_LOGIC_I/Inst_top/Inst_text_driver/address [10], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [9], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [8], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [6], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [4], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [3], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [2], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [1], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [0], 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [12], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [11], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [10], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [9], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [8], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [7], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [6], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [5], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [4], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [3], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [2], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [1], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [0], \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPA<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPB<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPB<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DOB<2>_UNCONNECTED , \USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s [3], 
\USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s [2]}),
    .WEB({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117}),
    .DIA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem2_DIA<2>_UNCONNECTED , \USER_LOGIC_I/Inst_top/Inst_text_driver/value [3], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/value [2]})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1  (
    .REGCEA(S_AXI_RRESP_1_OBUF_117),
    .CLKA(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .ENB(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .RSTB(S_AXI_RRESP_1_OBUF_117),
    .CLKB(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .REGCEB(S_AXI_RRESP_1_OBUF_117),
    .RSTA(S_AXI_RRESP_1_OBUF_117),
    .ENA(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .DIPA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPA<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPA<0>_UNCONNECTED }),
    .WEA({\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> }),
    .DOA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOA<0>_UNCONNECTED }),
    .ADDRA({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, \USER_LOGIC_I/Inst_top/Inst_text_driver/address [10], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [9], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [8], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [6], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [4], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [3], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [2], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [1], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [0], 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [12], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [11], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [10], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [9], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [8], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [7], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [6], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [5], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [4], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [3], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [2], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [1], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [0], \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPA<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPB<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPB<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DOB<2>_UNCONNECTED , \USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s [1], 
\USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s [0]}),
    .WEB({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117}),
    .DIA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem1_DIA<2>_UNCONNECTED , \USER_LOGIC_I/Inst_top/Inst_text_driver/value [1], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/value [0]})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 2 ),
    .DATA_WIDTH_B ( 2 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3  (
    .REGCEA(S_AXI_RRESP_1_OBUF_117),
    .CLKA(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .ENB(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .RSTB(S_AXI_RRESP_1_OBUF_117),
    .CLKB(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .REGCEB(S_AXI_RRESP_1_OBUF_117),
    .RSTA(S_AXI_RRESP_1_OBUF_117),
    .ENA(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .DIPA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPA<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPA<0>_UNCONNECTED }),
    .WEA({\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> }),
    .DOA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOA<0>_UNCONNECTED }),
    .ADDRA({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, \USER_LOGIC_I/Inst_top/Inst_text_driver/address [10], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [9], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [8], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [7], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [6], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [5], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [4], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [3], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [2], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/address [1], \USER_LOGIC_I/Inst_top/Inst_text_driver/address [0], 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_ADDRA<0>_UNCONNECTED }),
    .ADDRB({\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [12], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [11], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [10], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [9], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [8], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [7], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [6], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [5], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [4], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [3], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [2], \USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [1], 
\USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/index [0], \NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPA<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPB<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPB<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DOB<2>_UNCONNECTED , \USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s [5], 
\USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s [4]}),
    .WEB({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117}),
    .DIA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/text_mem_i/Mram_text_mem3_DIA<2>_UNCONNECTED , \USER_LOGIC_I/Inst_top/Inst_text_driver/value [5], 
\USER_LOGIC_I/Inst_top/Inst_text_driver/value [4]})
  );
  RAMB16BWER #(
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 1 ),
    .DATA_WIDTH_B ( 1 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32  (
    .REGCEA(S_AXI_RRESP_1_OBUF_117),
    .CLKA(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .ENB(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .RSTB(S_AXI_RRESP_1_OBUF_117),
    .CLKB(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .REGCEB(S_AXI_RRESP_1_OBUF_117),
    .RSTA(S_AXI_RRESP_1_OBUF_117),
    .ENA(\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> ),
    .DIPA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPA<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPA<0>_UNCONNECTED }),
    .WEA({\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> , 
\USER_LOGIC_I/Inst_top/Inst_text_driver/Mcompar_address[13]_base[13]_equal_13_o_lut<4> }),
    .DOA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOA<0>_UNCONNECTED }),
    .ADDRA({\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [13], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [12], 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [11], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [10], 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [9], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [8], 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [7], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [6], 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [5], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [4], 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [3], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [2], 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [1], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_2 [0]}),
    .ADDRB({\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [13], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [12], 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [11], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [10], 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [9], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [8], 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [7], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [6], 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [5], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [4], 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [3], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [2], 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [1], \USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/index_0 [0]}),
    .DIB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIB<0>_UNCONNECTED }),
    .DOPA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPA<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPB<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIPB<0>_UNCONNECTED }),
    .DOPB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPB<1>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DOB<1>_UNCONNECTED , 
\USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mmux_rd_data_o_3 }),
    .WEB({S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117, S_AXI_RRESP_1_OBUF_117}),
    .DIA({\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<31>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<30>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<29>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<28>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<27>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<26>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<25>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<24>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<23>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<22>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<21>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<20>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<19>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<18>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<17>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<16>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<15>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<14>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<13>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<12>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<11>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<10>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<9>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<8>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<7>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<6>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<5>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<4>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<3>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<2>_UNCONNECTED , 
\NLW_USER_LOGIC_I/Inst_top/vga_top_i/graphics_mem_i/Mram_graphics_mem32_DIA<1>_UNCONNECTED , \USER_LOGIC_I/Inst_top/Inst_pixel_driver/value [0]})
  );
  char_rom_def   \USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/BRAM_MEM_I  (
    .clk(\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/clk_s ),
    .dout({\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [7], \USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [6], 
\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [5], \USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [4], 
\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [3], \USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [2], 
\USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [1], \USER_LOGIC_I/Inst_top/vga_top_i/char_rom_i/rom_data [0]}),
    .addr({\USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s [5], \USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s [4], 
\USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s [3], \USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s [2], \USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s [1], 
\USER_LOGIC_I/Inst_top/vga_top_i/char_addr_s [0], \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [3], 
\USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [2], \USER_LOGIC_I/Inst_top/vga_top_i/vga_i/vga_sync_i/v_count_r [1]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
