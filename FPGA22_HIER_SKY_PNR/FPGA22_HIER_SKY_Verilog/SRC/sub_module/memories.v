//
//
//
//
//
//
//
//
`timescale 1ns / 1ps

//
module mux_tree_tapbuf_size10_mem(prog_clk,
                                  ccff_head,
                                  ccff_tail,
                                  mem_out,
                                  mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:3] mem_out;
//
output [0:3] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[3];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_2_ (
		.CLK(prog_clk[0]),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_3_ (
		.CLK(prog_clk[0]),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.Q_N(mem_outb[3]));

endmodule
//



//
module mux_tree_tapbuf_size8_mem(prog_clk,
                                 ccff_head,
                                 ccff_tail,
                                 mem_out,
                                 mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:3] mem_out;
//
output [0:3] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[3];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_2_ (
		.CLK(prog_clk[0]),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_3_ (
		.CLK(prog_clk[0]),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.Q_N(mem_outb[3]));

endmodule
//



//
module mux_tree_tapbuf_size4_mem(prog_clk,
                                 ccff_head,
                                 ccff_tail,
                                 mem_out,
                                 mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:2] mem_out;
//
output [0:2] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[2];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_2_ (
		.CLK(prog_clk[0]),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

endmodule
//



//
module mux_tree_tapbuf_size7_mem(prog_clk,
                                 ccff_head,
                                 ccff_tail,
                                 mem_out,
                                 mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:2] mem_out;
//
output [0:2] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[2];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_2_ (
		.CLK(prog_clk[0]),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

endmodule
//



//
module mux_tree_tapbuf_size11_mem(prog_clk,
                                  ccff_head,
                                  ccff_tail,
                                  mem_out,
                                  mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:3] mem_out;
//
output [0:3] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[3];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_2_ (
		.CLK(prog_clk[0]),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_3_ (
		.CLK(prog_clk[0]),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.Q_N(mem_outb[3]));

endmodule
//



//
module mux_tree_tapbuf_size2_mem(prog_clk,
                                 ccff_head,
                                 ccff_tail,
                                 mem_out,
                                 mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:1] mem_out;
//
output [0:1] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[1];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

endmodule
//



//
module mux_tree_tapbuf_size6_mem(prog_clk,
                                 ccff_head,
                                 ccff_tail,
                                 mem_out,
                                 mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:2] mem_out;
//
output [0:2] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[2];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_2_ (
		.CLK(prog_clk[0]),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

endmodule
//



//
module mux_tree_tapbuf_size5_mem(prog_clk,
                                 ccff_head,
                                 ccff_tail,
                                 mem_out,
                                 mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:2] mem_out;
//
output [0:2] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[2];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_2_ (
		.CLK(prog_clk[0]),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

endmodule
//



//
module mux_tree_tapbuf_size12_mem(prog_clk,
                                  ccff_head,
                                  ccff_tail,
                                  mem_out,
                                  mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:3] mem_out;
//
output [0:3] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[3];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_2_ (
		.CLK(prog_clk[0]),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_3_ (
		.CLK(prog_clk[0]),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.Q_N(mem_outb[3]));

endmodule
//



//
module mux_tree_tapbuf_size16_mem(prog_clk,
                                  ccff_head,
                                  ccff_tail,
                                  mem_out,
                                  mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:4] mem_out;
//
output [0:4] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[4];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_2_ (
		.CLK(prog_clk[0]),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_3_ (
		.CLK(prog_clk[0]),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.Q_N(mem_outb[3]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_4_ (
		.CLK(prog_clk[0]),
		.D(mem_out[3]),
		.Q(mem_out[4]),
		.Q_N(mem_outb[4]));

endmodule
//



//
module mux_tree_tapbuf_size3_mem(prog_clk,
                                 ccff_head,
                                 ccff_tail,
                                 mem_out,
                                 mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:1] mem_out;
//
output [0:1] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[1];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

endmodule
//



//
module mux_tree_tapbuf_size9_mem(prog_clk,
                                 ccff_head,
                                 ccff_tail,
                                 mem_out,
                                 mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:3] mem_out;
//
output [0:3] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[3];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_2_ (
		.CLK(prog_clk[0]),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_3_ (
		.CLK(prog_clk[0]),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.Q_N(mem_outb[3]));

endmodule
//



//
module mux_tree_tapbuf_size14_mem(prog_clk,
                                  ccff_head,
                                  ccff_tail,
                                  mem_out,
                                  mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:3] mem_out;
//
output [0:3] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[3];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_2_ (
		.CLK(prog_clk[0]),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_3_ (
		.CLK(prog_clk[0]),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.Q_N(mem_outb[3]));

endmodule
//



//
module mux_tree_size2_mem(prog_clk,
                          ccff_head,
                          ccff_tail,
                          mem_out,
                          mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:1] mem_out;
//
output [0:1] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[1];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

endmodule
//



//
module frac_lut4_sky130_fd_sc_hd__dfxbp_1_mem(prog_clk,
                                              ccff_head,
                                              ccff_tail,
                                              mem_out,
                                              mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:16] mem_out;
//
output [0:16] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[16];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_1_ (
		.CLK(prog_clk[0]),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_2_ (
		.CLK(prog_clk[0]),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_3_ (
		.CLK(prog_clk[0]),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.Q_N(mem_outb[3]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_4_ (
		.CLK(prog_clk[0]),
		.D(mem_out[3]),
		.Q(mem_out[4]),
		.Q_N(mem_outb[4]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_5_ (
		.CLK(prog_clk[0]),
		.D(mem_out[4]),
		.Q(mem_out[5]),
		.Q_N(mem_outb[5]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_6_ (
		.CLK(prog_clk[0]),
		.D(mem_out[5]),
		.Q(mem_out[6]),
		.Q_N(mem_outb[6]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_7_ (
		.CLK(prog_clk[0]),
		.D(mem_out[6]),
		.Q(mem_out[7]),
		.Q_N(mem_outb[7]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_8_ (
		.CLK(prog_clk[0]),
		.D(mem_out[7]),
		.Q(mem_out[8]),
		.Q_N(mem_outb[8]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_9_ (
		.CLK(prog_clk[0]),
		.D(mem_out[8]),
		.Q(mem_out[9]),
		.Q_N(mem_outb[9]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_10_ (
		.CLK(prog_clk[0]),
		.D(mem_out[9]),
		.Q(mem_out[10]),
		.Q_N(mem_outb[10]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_11_ (
		.CLK(prog_clk[0]),
		.D(mem_out[10]),
		.Q(mem_out[11]),
		.Q_N(mem_outb[11]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_12_ (
		.CLK(prog_clk[0]),
		.D(mem_out[11]),
		.Q(mem_out[12]),
		.Q_N(mem_outb[12]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_13_ (
		.CLK(prog_clk[0]),
		.D(mem_out[12]),
		.Q(mem_out[13]),
		.Q_N(mem_outb[13]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_14_ (
		.CLK(prog_clk[0]),
		.D(mem_out[13]),
		.Q(mem_out[14]),
		.Q_N(mem_outb[14]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_15_ (
		.CLK(prog_clk[0]),
		.D(mem_out[14]),
		.Q(mem_out[15]),
		.Q_N(mem_outb[15]));

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_16_ (
		.CLK(prog_clk[0]),
		.D(mem_out[15]),
		.Q(mem_out[16]),
		.Q_N(mem_outb[16]));

endmodule
//



//
module EMBEDDED_IO_sky130_fd_sc_hd__dfxbp_1_mem(prog_clk,
                                                ccff_head,
                                                ccff_tail,
                                                mem_out,
                                                mem_outb);
//
input [0:0] prog_clk;
//
input [0:0] ccff_head;
//
output [0:0] ccff_tail;
//
output [0:0] mem_out;
//
output [0:0] mem_outb;

//
//


//
//



//
//
//
	assign ccff_tail[0] = mem_out[0];
//

	sky130_fd_sc_hd__dfxbp_1 sky130_fd_sc_hd__dfxbp_1_0_ (
		.CLK(prog_clk[0]),
		.D(ccff_head[0]),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

endmodule
//



