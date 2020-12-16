//
//
//
//
//
//
module sb_0__2__mux_2level_tapbuf_size3_mem ( pReset , prog_clk , ccff_head , 
    ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_47__46 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size3_mem_0 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_46__45 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_2 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_58 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_57 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size3 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:2] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_2_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_2_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_57 mux_l1_in_0_ ( 
    .in ( in[0:1] ) , .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_58 mux_l1_in_1_ (
    .in ( { in[2] , SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        mux_2level_tapbuf_basis_input2_mem1_1_out[0] } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_4 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_2_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_56 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_55 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_54 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size3_0 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:2] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_2_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_2_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_54 mux_l1_in_0_ ( 
    .in ( in[0:1] ) , .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_55 mux_l1_in_1_ (
    .in ( { in[2] , SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_56 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        mux_2level_tapbuf_basis_input2_mem1_1_out[0] } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_4 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_2_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem ( pReset , prog_clk , ccff_head , 
    ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_6 FTB_45__44 ( .A ( copt_net_103 ) , 
    .X ( ccff_tail[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1290 ( .A ( mem_out[1] ) , 
    .X ( copt_net_101 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1291 ( .A ( copt_net_101 ) , 
    .X ( copt_net_102 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1292 ( .A ( copt_net_102 ) , 
    .X ( copt_net_103 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_25 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_44__43 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_24 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_43__42 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_23 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_42__41 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_22 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_41__40 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_21 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_40__39 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_20 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_39__38 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_19 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_38__37 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_18 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_37__36 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_17 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_36__35 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_16 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_35__34 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_15 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_34__33 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_14 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_33__32 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_13 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_32__31 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_12 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_31__30 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_11 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_30__29 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_10 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_29__28 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_9 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_28__27 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_8 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_27__26 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_7 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_26__25 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_6 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_25__24 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_5 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_24__23 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_4 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_23__22 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_3 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_22__21 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_2 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_21__20 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_1 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_20__19 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_mem_0 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:1] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_19__18 ( .A ( mem_out[1] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_53 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_2 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_52 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sb_0__2__mux_2level_tapbuf_basis_input2_mem1_52 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_53 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
sky130_fd_sc_hd__buf_6 BUFT_RR_88 ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_51 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_50 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_25 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sb_0__2__mux_2level_tapbuf_basis_input2_mem1_50 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_51 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_86 ( .A ( BUF_net_87 ) , .Y ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_87 ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .Y ( BUF_net_87 ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_49 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_2 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_48 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_24 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sb_0__2__mux_2level_tapbuf_basis_input2_mem1_48 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_49 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
sky130_fd_sc_hd__buf_6 BUFT_RR_85 ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_47 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_46 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_23 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_46 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_47 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_45 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_44 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_22 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_44 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_45 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_43 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_2 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_42 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_21 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_42 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_43 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_41 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_2 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_40 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_20 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_40 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_41 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_39 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_38 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_19 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_38 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_39 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_37 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_36 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_18 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_36 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_37 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_35 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_34 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_17 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_34 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_35 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_33 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_2 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_32 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_16 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_32 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_33 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_31 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_2 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_30 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_15 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_30 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_31 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_29 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_2 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_28 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_14 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_28 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_29 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_27 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_2 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_26 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_13 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_26 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_27 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_25 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_2 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_24 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_12 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_24 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_25 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_23 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_22 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_11 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_22 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_23 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_21 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_20 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_10 ( in , sram , sram_inv , out , 
    VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sb_0__2__mux_2level_tapbuf_basis_input2_mem1_20 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_21 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
sky130_fd_sc_hd__inv_6 BINV_R_83 ( .A ( BUF_net_84 ) , .Y ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_2 BINV_R_84 ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .Y ( BUF_net_84 ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_19 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_18 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_9 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_18 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_19 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_17 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_2 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_16 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_8 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sb_0__2__mux_2level_tapbuf_basis_input2_mem1_16 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_17 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
sky130_fd_sc_hd__buf_6 BUFT_RR_82 ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_15 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_14 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_7 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_14 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_15 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_13 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_12 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_6 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_12 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_13 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_11 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_10 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_5 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_10 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_11 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_9 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_8 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_4 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_8 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_9 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_7 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_6 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_3 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_6 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_7 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_5 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_4 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_2 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sb_0__2__mux_2level_tapbuf_basis_input2_mem1_4 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_5 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
sky130_fd_sc_hd__inv_6 BINV_R_80 ( .A ( BUF_net_81 ) , .Y ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_2 BINV_R_81 ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .Y ( BUF_net_81 ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_3 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_2 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_1 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_2 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_3 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_1 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( p0 ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input2_mem1_0 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:1] in ;
input  [0:0] mem ;
input  [0:0] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__mux2_1 sky130_fd_sc_hd__mux2_1_0 ( .A0 ( in[1] ) , 
    .A1 ( in[0] ) , .S ( mem[0] ) , .X ( out[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size2_0 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:1] in ;
input  [0:1] sram ;
input  [0:1] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input2_mem1_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_0 mux_l1_in_0_ ( .in ( in ) , 
    .mem ( sram[0] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_1 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input2_mem1_1 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input2_mem1_0_out[0] , 
        SYNOPSYS_UNCONNECTED_2 } ) ,
    .mem ( sram[1] ) ,
    .mem_inv ( { SYNOPSYS_UNCONNECTED_3 } ) ,
    .out ( mux_2level_tapbuf_basis_input2_mem1_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size4_mem ( pReset , prog_clk , ccff_head , 
    ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[3] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_18__17 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size4_mem_4 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[3] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_17__16 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size4_mem_3 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[3] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_16__15 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size4_mem_2 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[3] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_15__14 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size4_mem_1 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ccff_head[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[3] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_14__13 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size4_mem_0 ( pReset , prog_clk , 
    ccff_head , ccff_tail , mem_out , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:0] prog_clk ;
input  [0:0] ccff_head ;
output [0:0] ccff_tail ;
output [0:3] mem_out ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_0_ ( .D ( ropt_net_167 ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_1_ ( .D ( mem_out[0] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_2_ ( .D ( mem_out[1] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dfrtp_1 sky130_fd_sc_hd__dfrtp_1_3_ ( .D ( mem_out[2] ) , 
    .CLK ( prog_clk[0] ) , .RESET_B ( pReset[0] ) , .Q ( mem_out[3] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_13__12 ( .A ( mem_out[3] ) , .X ( ccff_tail[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1283 ( .A ( ccff_head[0] ) , 
    .X ( copt_net_94 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1284 ( .A ( copt_net_94 ) , 
    .X ( copt_net_95 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1285 ( .A ( copt_net_95 ) , 
    .X ( copt_net_96 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1286 ( .A ( copt_net_96 ) , 
    .X ( copt_net_97 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1287 ( .A ( copt_net_97 ) , 
    .X ( copt_net_98 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 copt_h_inst_1288 ( .A ( copt_net_98 ) , 
    .X ( copt_net_99 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 ropt_h_inst_1354 ( .A ( copt_net_99 ) , 
    .X ( ropt_net_165 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 ropt_h_inst_1355 ( .A ( ropt_net_165 ) , 
    .X ( ropt_net_166 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__dlygate4sd3_1 ropt_h_inst_1356 ( .A ( ropt_net_166 ) , 
    .X ( ropt_net_167 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input3_mem3 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:2] in ;
input  [0:2] mem ;
input  [0:2] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] out_inv ;
supply1 VDD ;
supply0 VSS ;

sky130_uuopenfpga_cc_hd_invmux3_1 sky130_uuopenfpga_cc_hd_invmux3_1_0 ( 
    .Q1 ( in[0] ) , .Q2 ( in[1] ) , .Q3 ( p0 ) , .S0 ( mem[0] ) , 
    .S0B ( mem_inv[0] ) , .S1 ( mem[1] ) , .S1B ( mem_inv[1] ) , 
    .S2 ( mem[2] ) , .S2B ( mem_inv[2] ) , .Z ( out_inv[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 sky130_uuopenfpga_cc_hd_invmux3_1_inv_follower0 ( 
    .A ( out_inv[0] ) , .Y ( out[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input3_mem3_10 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:2] in ;
input  [0:2] mem ;
input  [0:2] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

wire [0:0] out_inv ;
supply1 VDD ;
supply0 VSS ;

sky130_uuopenfpga_cc_hd_invmux3_1 sky130_uuopenfpga_cc_hd_invmux3_1_0 ( 
    .Q1 ( in[0] ) , .Q2 ( in[1] ) , .Q3 ( in[2] ) , .S0 ( mem[0] ) , 
    .S0B ( mem_inv[0] ) , .S1 ( mem[1] ) , .S1B ( mem_inv[1] ) , 
    .S2 ( mem[2] ) , .S2B ( mem_inv[2] ) , .Z ( out_inv[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 sky130_uuopenfpga_cc_hd_invmux3_1_inv_follower0 ( 
    .A ( out_inv[0] ) , .Y ( out[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__local_encoder2to3 ( addr , data , data_inv , VDD , VSS ) ;
input  [0:1] addr ;
output [0:2] data ;
output [0:2] data_inv ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__clkinv_1 U8 ( .A ( data[0] ) , .Y ( data_inv[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U9 ( .A ( data_inv[1] ) , .Y ( data[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nand2_1 U10 ( .A ( addr[0] ) , .B ( data_inv[2] ) , 
    .Y ( data_inv[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U11 ( .A ( data[2] ) , .Y ( data_inv[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nor2_1 U12 ( .A ( data[2] ) , .B ( addr[0] ) , 
    .Y ( data[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_12__11 ( .A ( addr[1] ) , .X ( data[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__local_encoder2to3_10 ( addr , data , data_inv , VDD , VSS ) ;
input  [0:1] addr ;
output [0:2] data ;
output [0:2] data_inv ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__clkinv_1 U8 ( .A ( data[0] ) , .Y ( data_inv[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U9 ( .A ( data_inv[1] ) , .Y ( data[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nand2_1 U10 ( .A ( addr[0] ) , .B ( data_inv[2] ) , 
    .Y ( data_inv[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U11 ( .A ( data[2] ) , .Y ( data_inv[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nor2_1 U12 ( .A ( data[2] ) , .B ( addr[0] ) , 
    .Y ( data[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_11__10 ( .A ( addr[1] ) , .X ( data[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size4 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:3] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:2] local_encoder2to3_0_data ;
wire [0:2] local_encoder2to3_0_data_inv ;
wire [0:2] local_encoder2to3_1_data ;
wire [0:2] local_encoder2to3_1_data_inv ;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_1_out ;
supply1 VDD ;
supply0 VSS ;

sb_0__2__local_encoder2to3_10 local_encoder2to3_0_ ( .addr ( sram[0:1] ) , 
    .data ( local_encoder2to3_0_data ) , 
    .data_inv ( local_encoder2to3_0_data_inv ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__local_encoder2to3 local_encoder2to3_1_ ( .addr ( sram[2:3] ) , 
    .data ( local_encoder2to3_1_data ) , 
    .data_inv ( local_encoder2to3_1_data_inv ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input3_mem3_10 mux_l1_in_0_ ( 
    .in ( in[0:2] ) , .mem ( local_encoder2to3_0_data ) , 
    .mem_inv ( local_encoder2to3_0_data_inv ) , 
    .out ( mux_2level_tapbuf_basis_input3_mem3_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input3_mem3 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input3_mem3_0_out[0] , in[3] , 
        SYNOPSYS_UNCONNECTED_1 } ) ,
    .mem ( local_encoder2to3_1_data ) , 
    .mem_inv ( local_encoder2to3_1_data_inv ) , 
    .out ( mux_2level_tapbuf_basis_input3_mem3_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
sky130_fd_sc_hd__inv_6 BINV_R_78 ( .A ( BUF_net_79 ) , .Y ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_79 ( 
    .A ( mux_2level_tapbuf_basis_input3_mem3_1_out[0] ) , .Y ( BUF_net_79 ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input3_mem3_9 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:2] in ;
input  [0:2] mem ;
input  [0:2] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] out_inv ;
supply1 VDD ;
supply0 VSS ;

sky130_uuopenfpga_cc_hd_invmux3_1 sky130_uuopenfpga_cc_hd_invmux3_1_0 ( 
    .Q1 ( in[0] ) , .Q2 ( in[1] ) , .Q3 ( p0 ) , .S0 ( mem[0] ) , 
    .S0B ( mem_inv[0] ) , .S1 ( mem[1] ) , .S1B ( mem_inv[1] ) , 
    .S2 ( mem[2] ) , .S2B ( mem_inv[2] ) , .Z ( out_inv[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 sky130_uuopenfpga_cc_hd_invmux3_1_inv_follower0 ( 
    .A ( out_inv[0] ) , .Y ( out[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input3_mem3_8 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:2] in ;
input  [0:2] mem ;
input  [0:2] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

wire [0:0] out_inv ;
supply1 VDD ;
supply0 VSS ;

sky130_uuopenfpga_cc_hd_invmux3_1 sky130_uuopenfpga_cc_hd_invmux3_1_0 ( 
    .Q1 ( in[0] ) , .Q2 ( in[1] ) , .Q3 ( in[2] ) , .S0 ( mem[0] ) , 
    .S0B ( mem_inv[0] ) , .S1 ( mem[1] ) , .S1B ( mem_inv[1] ) , 
    .S2 ( mem[2] ) , .S2B ( mem_inv[2] ) , .Z ( out_inv[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 sky130_uuopenfpga_cc_hd_invmux3_1_inv_follower0 ( 
    .A ( out_inv[0] ) , .Y ( out[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__local_encoder2to3_9 ( addr , data , data_inv , VDD , VSS ) ;
input  [0:1] addr ;
output [0:2] data ;
output [0:2] data_inv ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__clkinv_1 U8 ( .A ( data[0] ) , .Y ( data_inv[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U9 ( .A ( data_inv[1] ) , .Y ( data[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nand2_1 U10 ( .A ( addr[0] ) , .B ( data_inv[2] ) , 
    .Y ( data_inv[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U11 ( .A ( data[2] ) , .Y ( data_inv[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nor2_1 U12 ( .A ( data[2] ) , .B ( addr[0] ) , 
    .Y ( data[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_10__9 ( .A ( addr[1] ) , .X ( data[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__local_encoder2to3_8 ( addr , data , data_inv , VDD , VSS ) ;
input  [0:1] addr ;
output [0:2] data ;
output [0:2] data_inv ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__clkinv_1 U8 ( .A ( data[0] ) , .Y ( data_inv[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U9 ( .A ( data_inv[1] ) , .Y ( data[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nand2_1 U10 ( .A ( addr[0] ) , .B ( data_inv[2] ) , 
    .Y ( data_inv[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U11 ( .A ( data[2] ) , .Y ( data_inv[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nor2_1 U12 ( .A ( data[2] ) , .B ( addr[0] ) , 
    .Y ( data[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_9__8 ( .A ( addr[1] ) , .X ( data[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size4_4 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:3] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:2] local_encoder2to3_0_data ;
wire [0:2] local_encoder2to3_0_data_inv ;
wire [0:2] local_encoder2to3_1_data ;
wire [0:2] local_encoder2to3_1_data_inv ;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_1_out ;
supply1 VDD ;
supply0 VSS ;

sb_0__2__local_encoder2to3_8 local_encoder2to3_0_ ( .addr ( sram[0:1] ) , 
    .data ( local_encoder2to3_0_data ) , 
    .data_inv ( local_encoder2to3_0_data_inv ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__local_encoder2to3_9 local_encoder2to3_1_ ( .addr ( sram[2:3] ) , 
    .data ( local_encoder2to3_1_data ) , 
    .data_inv ( local_encoder2to3_1_data_inv ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input3_mem3_8 mux_l1_in_0_ ( 
    .in ( in[0:2] ) , .mem ( local_encoder2to3_0_data ) , 
    .mem_inv ( local_encoder2to3_0_data_inv ) , 
    .out ( mux_2level_tapbuf_basis_input3_mem3_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input3_mem3_9 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input3_mem3_0_out[0] , in[3] , 
        SYNOPSYS_UNCONNECTED_1 } ) ,
    .mem ( local_encoder2to3_1_data ) , 
    .mem_inv ( local_encoder2to3_1_data_inv ) , 
    .out ( mux_2level_tapbuf_basis_input3_mem3_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_76 ( .A ( BUF_net_77 ) , .Y ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_77 ( 
    .A ( mux_2level_tapbuf_basis_input3_mem3_1_out[0] ) , .Y ( BUF_net_77 ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input3_mem3_7 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:2] in ;
input  [0:2] mem ;
input  [0:2] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] out_inv ;
supply1 VDD ;
supply0 VSS ;

sky130_uuopenfpga_cc_hd_invmux3_1 sky130_uuopenfpga_cc_hd_invmux3_1_0 ( 
    .Q1 ( in[0] ) , .Q2 ( in[1] ) , .Q3 ( p0 ) , .S0 ( mem[0] ) , 
    .S0B ( mem_inv[0] ) , .S1 ( mem[1] ) , .S1B ( mem_inv[1] ) , 
    .S2 ( mem[2] ) , .S2B ( mem_inv[2] ) , .Z ( out_inv[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 sky130_uuopenfpga_cc_hd_invmux3_1_inv_follower0 ( 
    .A ( out_inv[0] ) , .Y ( out[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input3_mem3_6 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:2] in ;
input  [0:2] mem ;
input  [0:2] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

wire [0:0] out_inv ;
supply1 VDD ;
supply0 VSS ;

sky130_uuopenfpga_cc_hd_invmux3_1 sky130_uuopenfpga_cc_hd_invmux3_1_0 ( 
    .Q1 ( in[0] ) , .Q2 ( in[1] ) , .Q3 ( in[2] ) , .S0 ( mem[0] ) , 
    .S0B ( mem_inv[0] ) , .S1 ( mem[1] ) , .S1B ( mem_inv[1] ) , 
    .S2 ( mem[2] ) , .S2B ( mem_inv[2] ) , .Z ( out_inv[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 sky130_uuopenfpga_cc_hd_invmux3_1_inv_follower0 ( 
    .A ( out_inv[0] ) , .Y ( out[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__local_encoder2to3_7 ( addr , data , data_inv , VDD , VSS ) ;
input  [0:1] addr ;
output [0:2] data ;
output [0:2] data_inv ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__clkinv_1 U8 ( .A ( data[0] ) , .Y ( data_inv[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U9 ( .A ( data_inv[1] ) , .Y ( data[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nand2_1 U10 ( .A ( addr[0] ) , .B ( data_inv[2] ) , 
    .Y ( data_inv[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U11 ( .A ( data[2] ) , .Y ( data_inv[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nor2_1 U12 ( .A ( data[2] ) , .B ( addr[0] ) , 
    .Y ( data[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_8__7 ( .A ( addr[1] ) , .X ( data[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__local_encoder2to3_6 ( addr , data , data_inv , VDD , VSS ) ;
input  [0:1] addr ;
output [0:2] data ;
output [0:2] data_inv ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__clkinv_1 U8 ( .A ( data[0] ) , .Y ( data_inv[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U9 ( .A ( data_inv[1] ) , .Y ( data[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nand2_1 U10 ( .A ( addr[0] ) , .B ( data_inv[2] ) , 
    .Y ( data_inv[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U11 ( .A ( data[2] ) , .Y ( data_inv[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nor2_1 U12 ( .A ( data[2] ) , .B ( addr[0] ) , 
    .Y ( data[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_7__6 ( .A ( addr[1] ) , .X ( data[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size4_3 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:3] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:2] local_encoder2to3_0_data ;
wire [0:2] local_encoder2to3_0_data_inv ;
wire [0:2] local_encoder2to3_1_data ;
wire [0:2] local_encoder2to3_1_data_inv ;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input3_mem3_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__local_encoder2to3_6 local_encoder2to3_0_ ( .addr ( sram[0:1] ) , 
    .data ( local_encoder2to3_0_data ) , 
    .data_inv ( local_encoder2to3_0_data_inv ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__local_encoder2to3_7 local_encoder2to3_1_ ( .addr ( sram[2:3] ) , 
    .data ( local_encoder2to3_1_data ) , 
    .data_inv ( local_encoder2to3_1_data_inv ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input3_mem3_6 mux_l1_in_0_ ( 
    .in ( in[0:2] ) , .mem ( local_encoder2to3_0_data ) , 
    .mem_inv ( local_encoder2to3_0_data_inv ) , 
    .out ( mux_2level_tapbuf_basis_input3_mem3_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input3_mem3_7 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input3_mem3_0_out[0] , in[3] , 
        SYNOPSYS_UNCONNECTED_1 } ) ,
    .mem ( local_encoder2to3_1_data ) , 
    .mem_inv ( local_encoder2to3_1_data_inv ) , 
    .out ( mux_2level_tapbuf_basis_input3_mem3_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input3_mem3_5 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:2] in ;
input  [0:2] mem ;
input  [0:2] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] out_inv ;
supply1 VDD ;
supply0 VSS ;

sky130_uuopenfpga_cc_hd_invmux3_1 sky130_uuopenfpga_cc_hd_invmux3_1_0 ( 
    .Q1 ( in[0] ) , .Q2 ( in[1] ) , .Q3 ( p0 ) , .S0 ( mem[0] ) , 
    .S0B ( mem_inv[0] ) , .S1 ( mem[1] ) , .S1B ( mem_inv[1] ) , 
    .S2 ( mem[2] ) , .S2B ( mem_inv[2] ) , .Z ( out_inv[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 sky130_uuopenfpga_cc_hd_invmux3_1_inv_follower0 ( 
    .A ( out_inv[0] ) , .Y ( out[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input3_mem3_4 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:2] in ;
input  [0:2] mem ;
input  [0:2] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

wire [0:0] out_inv ;
supply1 VDD ;
supply0 VSS ;

sky130_uuopenfpga_cc_hd_invmux3_1 sky130_uuopenfpga_cc_hd_invmux3_1_0 ( 
    .Q1 ( in[0] ) , .Q2 ( in[1] ) , .Q3 ( in[2] ) , .S0 ( mem[0] ) , 
    .S0B ( mem_inv[0] ) , .S1 ( mem[1] ) , .S1B ( mem_inv[1] ) , 
    .S2 ( mem[2] ) , .S2B ( mem_inv[2] ) , .Z ( out_inv[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 sky130_uuopenfpga_cc_hd_invmux3_1_inv_follower0 ( 
    .A ( out_inv[0] ) , .Y ( out[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__local_encoder2to3_5 ( addr , data , data_inv , VDD , VSS ) ;
input  [0:1] addr ;
output [0:2] data ;
output [0:2] data_inv ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__clkinv_1 U8 ( .A ( data[0] ) , .Y ( data_inv[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U9 ( .A ( data_inv[1] ) , .Y ( data[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nand2_1 U10 ( .A ( addr[0] ) , .B ( data_inv[2] ) , 
    .Y ( data_inv[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U11 ( .A ( data[2] ) , .Y ( data_inv[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nor2_1 U12 ( .A ( data[2] ) , .B ( addr[0] ) , 
    .Y ( data[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_6__5 ( .A ( addr[1] ) , .X ( data[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__local_encoder2to3_4 ( addr , data , data_inv , VDD , VSS ) ;
input  [0:1] addr ;
output [0:2] data ;
output [0:2] data_inv ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__clkinv_1 U8 ( .A ( data[0] ) , .Y ( data_inv[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U9 ( .A ( data_inv[1] ) , .Y ( data[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nand2_1 U10 ( .A ( addr[0] ) , .B ( data_inv[2] ) , 
    .Y ( data_inv[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U11 ( .A ( data[2] ) , .Y ( data_inv[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nor2_1 U12 ( .A ( data[2] ) , .B ( addr[0] ) , 
    .Y ( data[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_5__4 ( .A ( addr[1] ) , .X ( data[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size4_2 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:3] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:2] local_encoder2to3_0_data ;
wire [0:2] local_encoder2to3_0_data_inv ;
wire [0:2] local_encoder2to3_1_data ;
wire [0:2] local_encoder2to3_1_data_inv ;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_1_out ;
supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__buf_6 sky130_fd_sc_hd__buf_4_0_ ( 
    .A ( mux_2level_tapbuf_basis_input3_mem3_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sb_0__2__local_encoder2to3_4 local_encoder2to3_0_ ( .addr ( sram[0:1] ) , 
    .data ( local_encoder2to3_0_data ) , 
    .data_inv ( local_encoder2to3_0_data_inv ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__local_encoder2to3_5 local_encoder2to3_1_ ( .addr ( sram[2:3] ) , 
    .data ( local_encoder2to3_1_data ) , 
    .data_inv ( local_encoder2to3_1_data_inv ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input3_mem3_4 mux_l1_in_0_ ( 
    .in ( in[0:2] ) , .mem ( local_encoder2to3_0_data ) , 
    .mem_inv ( local_encoder2to3_0_data_inv ) , 
    .out ( mux_2level_tapbuf_basis_input3_mem3_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input3_mem3_5 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input3_mem3_0_out[0] , in[3] , 
        SYNOPSYS_UNCONNECTED_1 } ) ,
    .mem ( local_encoder2to3_1_data ) , 
    .mem_inv ( local_encoder2to3_1_data_inv ) , 
    .out ( mux_2level_tapbuf_basis_input3_mem3_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input3_mem3_3 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:2] in ;
input  [0:2] mem ;
input  [0:2] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] out_inv ;
supply1 VDD ;
supply0 VSS ;

sky130_uuopenfpga_cc_hd_invmux3_1 sky130_uuopenfpga_cc_hd_invmux3_1_0 ( 
    .Q1 ( in[0] ) , .Q2 ( in[1] ) , .Q3 ( p0 ) , .S0 ( mem[0] ) , 
    .S0B ( mem_inv[0] ) , .S1 ( mem[1] ) , .S1B ( mem_inv[1] ) , 
    .S2 ( mem[2] ) , .S2B ( mem_inv[2] ) , .Z ( out_inv[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 sky130_uuopenfpga_cc_hd_invmux3_1_inv_follower0 ( 
    .A ( out_inv[0] ) , .Y ( out[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input3_mem3_2 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:2] in ;
input  [0:2] mem ;
input  [0:2] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

wire [0:0] out_inv ;
supply1 VDD ;
supply0 VSS ;

sky130_uuopenfpga_cc_hd_invmux3_1 sky130_uuopenfpga_cc_hd_invmux3_1_0 ( 
    .Q1 ( in[0] ) , .Q2 ( in[1] ) , .Q3 ( in[2] ) , .S0 ( mem[0] ) , 
    .S0B ( mem_inv[0] ) , .S1 ( mem[1] ) , .S1B ( mem_inv[1] ) , 
    .S2 ( mem[2] ) , .S2B ( mem_inv[2] ) , .Z ( out_inv[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 sky130_uuopenfpga_cc_hd_invmux3_1_inv_follower0 ( 
    .A ( out_inv[0] ) , .Y ( out[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__local_encoder2to3_3 ( addr , data , data_inv , VDD , VSS ) ;
input  [0:1] addr ;
output [0:2] data ;
output [0:2] data_inv ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__clkinv_1 U8 ( .A ( data[0] ) , .Y ( data_inv[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U9 ( .A ( data_inv[1] ) , .Y ( data[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nand2_1 U10 ( .A ( addr[0] ) , .B ( data_inv[2] ) , 
    .Y ( data_inv[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U11 ( .A ( data[2] ) , .Y ( data_inv[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nor2_1 U12 ( .A ( data[2] ) , .B ( addr[0] ) , 
    .Y ( data[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_4__3 ( .A ( addr[1] ) , .X ( data[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__local_encoder2to3_2 ( addr , data , data_inv , VDD , VSS ) ;
input  [0:1] addr ;
output [0:2] data ;
output [0:2] data_inv ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__clkinv_1 U8 ( .A ( data[0] ) , .Y ( data_inv[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U9 ( .A ( data_inv[1] ) , .Y ( data[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nand2_1 U10 ( .A ( addr[0] ) , .B ( data_inv[2] ) , 
    .Y ( data_inv[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U11 ( .A ( data[2] ) , .Y ( data_inv[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nor2_1 U12 ( .A ( data[2] ) , .B ( addr[0] ) , 
    .Y ( data[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_3__2 ( .A ( addr[1] ) , .X ( data[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size4_1 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:3] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:2] local_encoder2to3_0_data ;
wire [0:2] local_encoder2to3_0_data_inv ;
wire [0:2] local_encoder2to3_1_data ;
wire [0:2] local_encoder2to3_1_data_inv ;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_1_out ;
supply1 VDD ;
supply0 VSS ;

sb_0__2__local_encoder2to3_2 local_encoder2to3_0_ ( .addr ( sram[0:1] ) , 
    .data ( local_encoder2to3_0_data ) , 
    .data_inv ( local_encoder2to3_0_data_inv ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__local_encoder2to3_3 local_encoder2to3_1_ ( .addr ( sram[2:3] ) , 
    .data ( local_encoder2to3_1_data ) , 
    .data_inv ( local_encoder2to3_1_data_inv ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input3_mem3_2 mux_l1_in_0_ ( 
    .in ( in[0:2] ) , .mem ( local_encoder2to3_0_data ) , 
    .mem_inv ( local_encoder2to3_0_data_inv ) , 
    .out ( mux_2level_tapbuf_basis_input3_mem3_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input3_mem3_3 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input3_mem3_0_out[0] , in[3] , 
        SYNOPSYS_UNCONNECTED_1 } ) ,
    .mem ( local_encoder2to3_1_data ) , 
    .mem_inv ( local_encoder2to3_1_data_inv ) , 
    .out ( mux_2level_tapbuf_basis_input3_mem3_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
sky130_fd_sc_hd__inv_6 BINV_R_74 ( .A ( BUF_net_75 ) , .Y ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_75 ( 
    .A ( mux_2level_tapbuf_basis_input3_mem3_1_out[0] ) , .Y ( BUF_net_75 ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input3_mem3_1 ( in , mem , mem_inv , 
    out , VDD , VSS , p0 ) ;
input  [0:2] in ;
input  [0:2] mem ;
input  [0:2] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:0] out_inv ;
supply1 VDD ;
supply0 VSS ;

sky130_uuopenfpga_cc_hd_invmux3_1 sky130_uuopenfpga_cc_hd_invmux3_1_0 ( 
    .Q1 ( in[0] ) , .Q2 ( in[1] ) , .Q3 ( p0 ) , .S0 ( mem[0] ) , 
    .S0B ( mem_inv[0] ) , .S1 ( mem[1] ) , .S1B ( mem_inv[1] ) , 
    .S2 ( mem[2] ) , .S2B ( mem_inv[2] ) , .Z ( out_inv[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_2 sky130_uuopenfpga_cc_hd_invmux3_1_inv_follower0 ( 
    .A ( out_inv[0] ) , .Y ( out[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_basis_input3_mem3_0 ( in , mem , mem_inv , 
    out , VDD , VSS ) ;
input  [0:2] in ;
input  [0:2] mem ;
input  [0:2] mem_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;

wire [0:0] out_inv ;
supply1 VDD ;
supply0 VSS ;

sky130_uuopenfpga_cc_hd_invmux3_1 sky130_uuopenfpga_cc_hd_invmux3_1_0 ( 
    .Q1 ( in[0] ) , .Q2 ( in[1] ) , .Q3 ( in[2] ) , .S0 ( mem[0] ) , 
    .S0B ( mem_inv[0] ) , .S1 ( mem[1] ) , .S1B ( mem_inv[1] ) , 
    .S2 ( mem[2] ) , .S2B ( mem_inv[2] ) , .Z ( out_inv[0] ) , .VPWR ( VDD ) , 
    .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 sky130_uuopenfpga_cc_hd_invmux3_1_inv_follower0 ( 
    .A ( out_inv[0] ) , .Y ( out[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__local_encoder2to3_1 ( addr , data , data_inv , VDD , VSS ) ;
input  [0:1] addr ;
output [0:2] data ;
output [0:2] data_inv ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__clkinv_1 U8 ( .A ( data[0] ) , .Y ( data_inv[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U9 ( .A ( data_inv[1] ) , .Y ( data[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nand2_1 U10 ( .A ( addr[0] ) , .B ( data_inv[2] ) , 
    .Y ( data_inv[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U11 ( .A ( data[2] ) , .Y ( data_inv[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nor2_1 U12 ( .A ( data[2] ) , .B ( addr[0] ) , 
    .Y ( data[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_2__1 ( .A ( addr[1] ) , .X ( data[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__local_encoder2to3_0 ( addr , data , data_inv , VDD , VSS ) ;
input  [0:1] addr ;
output [0:2] data ;
output [0:2] data_inv ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

sky130_fd_sc_hd__clkinv_1 U8 ( .A ( data[0] ) , .Y ( data_inv[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U9 ( .A ( data_inv[1] ) , .Y ( data[1] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nand2_1 U10 ( .A ( addr[0] ) , .B ( data_inv[2] ) , 
    .Y ( data_inv[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__clkinv_1 U11 ( .A ( data[2] ) , .Y ( data_inv[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__nor2_1 U12 ( .A ( data[2] ) , .B ( addr[0] ) , 
    .Y ( data[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 FTB_1__0 ( .A ( addr[1] ) , .X ( data[2] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2__mux_2level_tapbuf_size4_0 ( in , sram , sram_inv , out , VDD , 
    VSS , p0 ) ;
input  [0:3] in ;
input  [0:3] sram ;
input  [0:3] sram_inv ;
output [0:0] out ;
input  VDD ;
input  VSS ;
input  p0 ;

wire [0:2] local_encoder2to3_0_data ;
wire [0:2] local_encoder2to3_0_data_inv ;
wire [0:2] local_encoder2to3_1_data ;
wire [0:2] local_encoder2to3_1_data_inv ;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_0_out ;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_1_out ;
supply1 VDD ;
supply0 VSS ;

sb_0__2__local_encoder2to3_0 local_encoder2to3_0_ ( .addr ( sram[0:1] ) , 
    .data ( local_encoder2to3_0_data ) , 
    .data_inv ( local_encoder2to3_0_data_inv ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__local_encoder2to3_1 local_encoder2to3_1_ ( .addr ( sram[2:3] ) , 
    .data ( local_encoder2to3_1_data ) , 
    .data_inv ( local_encoder2to3_1_data_inv ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input3_mem3_0 mux_l1_in_0_ ( 
    .in ( in[0:2] ) , .mem ( local_encoder2to3_0_data ) , 
    .mem_inv ( local_encoder2to3_0_data_inv ) , 
    .out ( mux_2level_tapbuf_basis_input3_mem3_0_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_basis_input3_mem3_1 mux_l2_in_0_ (
    .in ( { mux_2level_tapbuf_basis_input3_mem3_0_out[0] , in[3] , 
        SYNOPSYS_UNCONNECTED_1 } ) ,
    .mem ( local_encoder2to3_1_data ) , 
    .mem_inv ( local_encoder2to3_1_data_inv ) , 
    .out ( mux_2level_tapbuf_basis_input3_mem3_1_out ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .p0 ( p0 ) ) ;
sky130_fd_sc_hd__buf_6 BUFT_RR_73 ( 
    .A ( mux_2level_tapbuf_basis_input3_mem3_1_out[0] ) , .X ( out[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


module sb_0__2_ ( pReset , chanx_right_in , right_top_grid_pin_1_ , 
    right_bottom_grid_pin_36_ , right_bottom_grid_pin_37_ , 
    right_bottom_grid_pin_38_ , right_bottom_grid_pin_39_ , 
    right_bottom_grid_pin_40_ , right_bottom_grid_pin_41_ , 
    right_bottom_grid_pin_42_ , right_bottom_grid_pin_43_ , chany_bottom_in , 
    bottom_left_grid_pin_1_ , ccff_head , chanx_right_out , chany_bottom_out , 
    ccff_tail , SC_IN_TOP , SC_OUT_BOT , pReset_E_in , pReset_S_out , 
    prog_clk_0_E_in , VDD , VSS ) ;
input  [0:0] pReset ;
input  [0:29] chanx_right_in ;
input  [0:0] right_top_grid_pin_1_ ;
input  [0:0] right_bottom_grid_pin_36_ ;
input  [0:0] right_bottom_grid_pin_37_ ;
input  [0:0] right_bottom_grid_pin_38_ ;
input  [0:0] right_bottom_grid_pin_39_ ;
input  [0:0] right_bottom_grid_pin_40_ ;
input  [0:0] right_bottom_grid_pin_41_ ;
input  [0:0] right_bottom_grid_pin_42_ ;
input  [0:0] right_bottom_grid_pin_43_ ;
input  [0:29] chany_bottom_in ;
input  [0:0] bottom_left_grid_pin_1_ ;
input  [0:0] ccff_head ;
output [0:29] chanx_right_out ;
output [0:29] chany_bottom_out ;
output [0:0] ccff_tail ;
input  SC_IN_TOP ;
output SC_OUT_BOT ;
input  pReset_E_in ;
output pReset_S_out ;
input  prog_clk_0_E_in ;
input  VDD ;
input  VSS ;

wire ropt_net_122 ;
wire [0:0] prog_clk ;
wire prog_clk_0 ;
wire [0:1] mux_2level_tapbuf_size2_0_sram ;
wire [0:1] mux_2level_tapbuf_size2_10_sram ;
wire [0:1] mux_2level_tapbuf_size2_11_sram ;
wire [0:1] mux_2level_tapbuf_size2_12_sram ;
wire [0:1] mux_2level_tapbuf_size2_13_sram ;
wire [0:1] mux_2level_tapbuf_size2_14_sram ;
wire [0:1] mux_2level_tapbuf_size2_15_sram ;
wire [0:1] mux_2level_tapbuf_size2_16_sram ;
wire [0:1] mux_2level_tapbuf_size2_17_sram ;
wire [0:1] mux_2level_tapbuf_size2_18_sram ;
wire [0:1] mux_2level_tapbuf_size2_19_sram ;
wire [0:1] mux_2level_tapbuf_size2_1_sram ;
wire [0:1] mux_2level_tapbuf_size2_20_sram ;
wire [0:1] mux_2level_tapbuf_size2_21_sram ;
wire [0:1] mux_2level_tapbuf_size2_22_sram ;
wire [0:1] mux_2level_tapbuf_size2_23_sram ;
wire [0:1] mux_2level_tapbuf_size2_24_sram ;
wire [0:1] mux_2level_tapbuf_size2_25_sram ;
wire [0:1] mux_2level_tapbuf_size2_26_sram ;
wire [0:1] mux_2level_tapbuf_size2_2_sram ;
wire [0:1] mux_2level_tapbuf_size2_3_sram ;
wire [0:1] mux_2level_tapbuf_size2_4_sram ;
wire [0:1] mux_2level_tapbuf_size2_5_sram ;
wire [0:1] mux_2level_tapbuf_size2_6_sram ;
wire [0:1] mux_2level_tapbuf_size2_7_sram ;
wire [0:1] mux_2level_tapbuf_size2_8_sram ;
wire [0:1] mux_2level_tapbuf_size2_9_sram ;
wire [0:0] mux_2level_tapbuf_size2_mem_0_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_10_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_11_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_12_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_13_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_14_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_15_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_16_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_17_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_18_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_19_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_1_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_20_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_21_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_22_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_23_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_24_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_25_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_2_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_3_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_4_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_5_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_6_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_7_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_8_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size2_mem_9_ccff_tail ;
wire [0:1] mux_2level_tapbuf_size3_0_sram ;
wire [0:1] mux_2level_tapbuf_size3_1_sram ;
wire [0:0] mux_2level_tapbuf_size3_mem_0_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size3_mem_1_ccff_tail ;
wire [0:3] mux_2level_tapbuf_size4_0_sram ;
wire [0:3] mux_2level_tapbuf_size4_1_sram ;
wire [0:3] mux_2level_tapbuf_size4_2_sram ;
wire [0:3] mux_2level_tapbuf_size4_3_sram ;
wire [0:3] mux_2level_tapbuf_size4_4_sram ;
wire [0:3] mux_2level_tapbuf_size4_5_sram ;
wire [0:0] mux_2level_tapbuf_size4_mem_0_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size4_mem_1_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size4_mem_2_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size4_mem_3_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size4_mem_4_ccff_tail ;
wire [0:0] mux_2level_tapbuf_size4_mem_5_ccff_tail ;
supply1 VDD ;
supply0 VSS ;

assign prog_clk_0 = prog_clk[0] ;

sb_0__2__mux_2level_tapbuf_size4_0 mux_right_track_0 (
    .in ( { right_top_grid_pin_1_[0] , right_bottom_grid_pin_38_[0] , 
        right_bottom_grid_pin_41_[0] , chany_bottom_in[28] } ) ,
    .sram ( mux_2level_tapbuf_size4_0_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_1 , SYNOPSYS_UNCONNECTED_2 , 
        SYNOPSYS_UNCONNECTED_3 , SYNOPSYS_UNCONNECTED_4 } ) ,
    .out ( chanx_right_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size4_1 mux_right_track_2 (
    .in ( { right_bottom_grid_pin_36_[0] , right_bottom_grid_pin_39_[0] , 
        right_bottom_grid_pin_42_[0] , chany_bottom_in[27] } ) ,
    .sram ( mux_2level_tapbuf_size4_1_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_5 , SYNOPSYS_UNCONNECTED_6 , 
        SYNOPSYS_UNCONNECTED_7 , SYNOPSYS_UNCONNECTED_8 } ) ,
    .out ( chanx_right_out[1] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size4_2 mux_right_track_4 (
    .in ( { right_bottom_grid_pin_37_[0] , right_bottom_grid_pin_40_[0] , 
        right_bottom_grid_pin_43_[0] , chany_bottom_in[26] } ) ,
    .sram ( mux_2level_tapbuf_size4_2_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_9 , SYNOPSYS_UNCONNECTED_10 , 
        SYNOPSYS_UNCONNECTED_11 , SYNOPSYS_UNCONNECTED_12 } ) ,
    .out ( chanx_right_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size4_3 mux_right_track_6 (
    .in ( { right_top_grid_pin_1_[0] , right_bottom_grid_pin_38_[0] , 
        right_bottom_grid_pin_41_[0] , chany_bottom_in[25] } ) ,
    .sram ( mux_2level_tapbuf_size4_3_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_13 , SYNOPSYS_UNCONNECTED_14 , 
        SYNOPSYS_UNCONNECTED_15 , SYNOPSYS_UNCONNECTED_16 } ) ,
    .out ( chanx_right_out[3] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size4_4 mux_right_track_8 (
    .in ( { right_bottom_grid_pin_36_[0] , right_bottom_grid_pin_39_[0] , 
        right_bottom_grid_pin_42_[0] , chany_bottom_in[24] } ) ,
    .sram ( mux_2level_tapbuf_size4_4_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_17 , SYNOPSYS_UNCONNECTED_18 , 
        SYNOPSYS_UNCONNECTED_19 , SYNOPSYS_UNCONNECTED_20 } ) ,
    .out ( chanx_right_out[4] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_92 ) ) ;
sb_0__2__mux_2level_tapbuf_size4 mux_right_track_10 (
    .in ( { right_bottom_grid_pin_37_[0] , right_bottom_grid_pin_40_[0] , 
        right_bottom_grid_pin_43_[0] , chany_bottom_in[23] } ) ,
    .sram ( mux_2level_tapbuf_size4_5_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_21 , SYNOPSYS_UNCONNECTED_22 , 
        SYNOPSYS_UNCONNECTED_23 , SYNOPSYS_UNCONNECTED_24 } ) ,
    .out ( chanx_right_out[5] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_92 ) ) ;
sb_0__2__mux_2level_tapbuf_size4_mem_0 mem_right_track_0 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , .ccff_head ( ccff_head ) , 
    .ccff_tail ( mux_2level_tapbuf_size4_mem_0_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size4_0_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size4_mem_1 mem_right_track_2 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size4_mem_0_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size4_mem_1_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size4_1_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size4_mem_2 mem_right_track_4 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size4_mem_1_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size4_mem_2_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size4_2_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size4_mem_3 mem_right_track_6 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size4_mem_2_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size4_mem_3_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size4_3_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size4_mem_4 mem_right_track_8 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size4_mem_3_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size4_mem_4_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size4_4_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size4_mem mem_right_track_10 ( .pReset ( pReset ) , 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size4_mem_4_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size4_mem_5_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size4_5_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_0 mux_right_track_12 (
    .in ( { right_top_grid_pin_1_[0] , chany_bottom_in[22] } ) ,
    .sram ( mux_2level_tapbuf_size2_0_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_25 , SYNOPSYS_UNCONNECTED_26 } ) ,
    .out ( chanx_right_out[6] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_1 mux_right_track_14 (
    .in ( { right_bottom_grid_pin_36_[0] , chany_bottom_in[21] } ) ,
    .sram ( mux_2level_tapbuf_size2_1_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_27 , SYNOPSYS_UNCONNECTED_28 } ) ,
    .out ( chanx_right_out[7] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_2 mux_right_track_16 (
    .in ( { right_bottom_grid_pin_37_[0] , chany_bottom_in[20] } ) ,
    .sram ( mux_2level_tapbuf_size2_2_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_29 , SYNOPSYS_UNCONNECTED_30 } ) ,
    .out ( chanx_right_out[8] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_3 mux_right_track_18 (
    .in ( { right_bottom_grid_pin_38_[0] , chany_bottom_in[19] } ) ,
    .sram ( mux_2level_tapbuf_size2_3_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_31 , SYNOPSYS_UNCONNECTED_32 } ) ,
    .out ( chanx_right_out[9] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_4 mux_right_track_20 (
    .in ( { right_bottom_grid_pin_39_[0] , chany_bottom_in[18] } ) ,
    .sram ( mux_2level_tapbuf_size2_4_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_33 , SYNOPSYS_UNCONNECTED_34 } ) ,
    .out ( chanx_right_out[10] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_5 mux_right_track_22 (
    .in ( { right_bottom_grid_pin_40_[0] , chany_bottom_in[17] } ) ,
    .sram ( mux_2level_tapbuf_size2_5_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_35 , SYNOPSYS_UNCONNECTED_36 } ) ,
    .out ( chanx_right_out[11] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_6 mux_right_track_24 (
    .in ( { right_bottom_grid_pin_41_[0] , chany_bottom_in[16] } ) ,
    .sram ( mux_2level_tapbuf_size2_6_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_37 , SYNOPSYS_UNCONNECTED_38 } ) ,
    .out ( chanx_right_out[12] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_7 mux_right_track_26 (
    .in ( { right_bottom_grid_pin_42_[0] , chany_bottom_in[15] } ) ,
    .sram ( mux_2level_tapbuf_size2_7_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_39 , SYNOPSYS_UNCONNECTED_40 } ) ,
    .out ( chanx_right_out[13] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_8 mux_right_track_30 (
    .in ( { right_bottom_grid_pin_36_[0] , chany_bottom_in[13] } ) ,
    .sram ( mux_2level_tapbuf_size2_8_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_41 , SYNOPSYS_UNCONNECTED_42 } ) ,
    .out ( chanx_right_out[15] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_9 mux_right_track_32 (
    .in ( { right_bottom_grid_pin_37_[0] , chany_bottom_in[12] } ) ,
    .sram ( mux_2level_tapbuf_size2_9_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_43 , SYNOPSYS_UNCONNECTED_44 } ) ,
    .out ( chanx_right_out[16] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_10 mux_right_track_34 (
    .in ( { right_bottom_grid_pin_38_[0] , chany_bottom_in[11] } ) ,
    .sram ( mux_2level_tapbuf_size2_10_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_45 , SYNOPSYS_UNCONNECTED_46 } ) ,
    .out ( chanx_right_out[17] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_11 mux_right_track_36 (
    .in ( { right_bottom_grid_pin_39_[0] , chany_bottom_in[10] } ) ,
    .sram ( mux_2level_tapbuf_size2_11_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_47 , SYNOPSYS_UNCONNECTED_48 } ) ,
    .out ( chanx_right_out[18] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_12 mux_right_track_38 (
    .in ( { right_bottom_grid_pin_40_[0] , chany_bottom_in[9] } ) ,
    .sram ( mux_2level_tapbuf_size2_12_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_49 , SYNOPSYS_UNCONNECTED_50 } ) ,
    .out ( chanx_right_out[19] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_13 mux_right_track_40 (
    .in ( { right_bottom_grid_pin_41_[0] , chany_bottom_in[8] } ) ,
    .sram ( mux_2level_tapbuf_size2_13_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_51 , SYNOPSYS_UNCONNECTED_52 } ) ,
    .out ( chanx_right_out[20] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_14 mux_right_track_42 (
    .in ( { right_bottom_grid_pin_42_[0] , chany_bottom_in[7] } ) ,
    .sram ( mux_2level_tapbuf_size2_14_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_53 , SYNOPSYS_UNCONNECTED_54 } ) ,
    .out ( chanx_right_out[21] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_15 mux_right_track_44 (
    .in ( { right_top_grid_pin_1_[0] , chany_bottom_in[6] } ) ,
    .sram ( mux_2level_tapbuf_size2_15_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_55 , SYNOPSYS_UNCONNECTED_56 } ) ,
    .out ( chanx_right_out[22] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_16 mux_right_track_46 (
    .in ( { right_bottom_grid_pin_36_[0] , chany_bottom_in[5] } ) ,
    .sram ( mux_2level_tapbuf_size2_16_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_57 , SYNOPSYS_UNCONNECTED_58 } ) ,
    .out ( chanx_right_out[23] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_17 mux_right_track_48 (
    .in ( { right_bottom_grid_pin_37_[0] , chany_bottom_in[4] } ) ,
    .sram ( mux_2level_tapbuf_size2_17_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_59 , SYNOPSYS_UNCONNECTED_60 } ) ,
    .out ( chanx_right_out[24] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_18 mux_right_track_50 (
    .in ( { right_bottom_grid_pin_38_[0] , chany_bottom_in[3] } ) ,
    .sram ( mux_2level_tapbuf_size2_18_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_61 , SYNOPSYS_UNCONNECTED_62 } ) ,
    .out ( chanx_right_out[25] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_19 mux_right_track_54 (
    .in ( { right_bottom_grid_pin_40_[0] , chany_bottom_in[1] } ) ,
    .sram ( mux_2level_tapbuf_size2_19_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_63 , SYNOPSYS_UNCONNECTED_64 } ) ,
    .out ( chanx_right_out[27] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_20 mux_right_track_56 (
    .in ( { right_bottom_grid_pin_41_[0] , chany_bottom_in[0] } ) ,
    .sram ( mux_2level_tapbuf_size2_20_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_65 , SYNOPSYS_UNCONNECTED_66 } ) ,
    .out ( chanx_right_out[28] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_21 mux_right_track_58 (
    .in ( { right_bottom_grid_pin_42_[0] , chany_bottom_in[29] } ) ,
    .sram ( mux_2level_tapbuf_size2_21_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_67 , SYNOPSYS_UNCONNECTED_68 } ) ,
    .out ( chanx_right_out[29] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_22 mux_bottom_track_1 (
    .in ( { chanx_right_in[28] , bottom_left_grid_pin_1_[0] } ) ,
    .sram ( mux_2level_tapbuf_size2_22_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_69 , SYNOPSYS_UNCONNECTED_70 } ) ,
    .out ( chany_bottom_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_92 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_23 mux_bottom_track_7 (
    .in ( { chanx_right_in[25] , bottom_left_grid_pin_1_[0] } ) ,
    .sram ( mux_2level_tapbuf_size2_23_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_71 , SYNOPSYS_UNCONNECTED_72 } ) ,
    .out ( chany_bottom_out[3] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_92 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_24 mux_bottom_track_13 (
    .in ( { chanx_right_in[22] , bottom_left_grid_pin_1_[0] } ) ,
    .sram ( mux_2level_tapbuf_size2_24_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_73 , SYNOPSYS_UNCONNECTED_74 } ) ,
    .out ( chany_bottom_out[6] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_92 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_25 mux_bottom_track_29 (
    .in ( { chanx_right_in[14] , bottom_left_grid_pin_1_[0] } ) ,
    .sram ( mux_2level_tapbuf_size2_25_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_75 , SYNOPSYS_UNCONNECTED_76 } ) ,
    .out ( chany_bottom_out[14] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_92 ) ) ;
sb_0__2__mux_2level_tapbuf_size2 mux_bottom_track_45 (
    .in ( { chanx_right_in[6] , bottom_left_grid_pin_1_[0] } ) ,
    .sram ( mux_2level_tapbuf_size2_26_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_77 , SYNOPSYS_UNCONNECTED_78 } ) ,
    .out ( chany_bottom_out[22] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_92 ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_0 mem_right_track_12 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size4_mem_5_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_0_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_0_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_1 mem_right_track_14 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_0_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_1_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_1_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_2 mem_right_track_16 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_1_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_2_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_2_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_3 mem_right_track_18 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_2_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_3_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_3_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_4 mem_right_track_20 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_3_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_4_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_4_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_5 mem_right_track_22 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_4_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_5_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_5_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_6 mem_right_track_24 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_5_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_6_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_6_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_7 mem_right_track_26 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_6_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_7_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_7_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_8 mem_right_track_30 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size3_mem_0_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_8_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_8_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_9 mem_right_track_32 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_8_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_9_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_9_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_10 mem_right_track_34 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_9_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_10_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_10_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_11 mem_right_track_36 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_10_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_11_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_11_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_12 mem_right_track_38 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_11_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_12_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_12_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_13 mem_right_track_40 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_12_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_13_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_13_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_14 mem_right_track_42 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_13_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_14_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_14_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_15 mem_right_track_44 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_14_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_15_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_15_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_16 mem_right_track_46 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_15_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_16_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_16_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_17 mem_right_track_48 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_16_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_17_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_17_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_18 mem_right_track_50 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_17_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_18_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_18_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_19 mem_right_track_54 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size3_mem_1_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_19_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_19_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_20 mem_right_track_56 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_19_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_20_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_20_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_21 mem_right_track_58 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_20_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_21_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_21_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_22 mem_bottom_track_1 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_21_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_22_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_22_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_23 mem_bottom_track_7 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_22_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_23_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_23_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_24 mem_bottom_track_13 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_23_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_24_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_24_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem_25 mem_bottom_track_29 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_24_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size2_mem_25_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size2_25_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size2_mem mem_bottom_track_45 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_25_ccff_tail ) , 
    .ccff_tail ( ccff_tail ) , .mem_out ( mux_2level_tapbuf_size2_26_sram ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size3_0 mux_right_track_28 (
    .in ( { right_top_grid_pin_1_[0] , right_bottom_grid_pin_43_[0] , 
        chany_bottom_in[14] } ) ,
    .sram ( mux_2level_tapbuf_size3_0_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_79 , SYNOPSYS_UNCONNECTED_80 } ) ,
    .out ( chanx_right_out[14] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_91 ) ) ;
sb_0__2__mux_2level_tapbuf_size3 mux_right_track_52 (
    .in ( { right_bottom_grid_pin_39_[0] , right_bottom_grid_pin_43_[0] , 
        chany_bottom_in[2] } ) ,
    .sram ( mux_2level_tapbuf_size3_1_sram ) ,
    .sram_inv ( { SYNOPSYS_UNCONNECTED_81 , SYNOPSYS_UNCONNECTED_82 } ) ,
    .out ( chanx_right_out[26] ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .p0 ( optlc_net_93 ) ) ;
sb_0__2__mux_2level_tapbuf_size3_mem_0 mem_right_track_28 ( 
    .pReset ( pReset ) , .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_7_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size3_mem_0_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size3_0_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sb_0__2__mux_2level_tapbuf_size3_mem mem_right_track_52 ( .pReset ( pReset ) , 
    .prog_clk ( prog_clk ) , 
    .ccff_head ( mux_2level_tapbuf_size2_mem_18_ccff_tail ) , 
    .ccff_tail ( mux_2level_tapbuf_size3_mem_1_ccff_tail ) , 
    .mem_out ( mux_2level_tapbuf_size3_1_sram ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 pReset_FTB00 ( .A ( pReset_E_in ) , .X ( pReset[0] ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__conb_1 optlc_93 ( .LO ( SYNOPSYS_UNCONNECTED_83 ) , 
    .HI ( optlc_net_91 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_1 prog_clk_0_FTB00 ( .A ( prog_clk_0_E_in ) , 
    .X ( prog_clk[0] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_48__47 ( .A ( chanx_right_in[0] ) , 
    .X ( chany_bottom_out[28] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_49__48 ( .A ( chanx_right_in[1] ) , 
    .X ( chany_bottom_out[27] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_6 FTB_50__49 ( .A ( chanx_right_in[2] ) , 
    .X ( chany_bottom_out[26] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_51__50 ( .A ( chanx_right_in[3] ) , 
    .X ( chany_bottom_out[25] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_52__51 ( .A ( chanx_right_in[4] ) , 
    .X ( chany_bottom_out[24] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_53__52 ( .A ( chanx_right_in[5] ) , 
    .X ( chany_bottom_out[23] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_54__53 ( .A ( chanx_right_in[7] ) , 
    .X ( chany_bottom_out[21] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_55__54 ( .A ( chanx_right_in[8] ) , 
    .X ( chany_bottom_out[20] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_56__55 ( .A ( chanx_right_in[9] ) , 
    .X ( chany_bottom_out[19] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_57__56 ( .A ( chanx_right_in[10] ) , 
    .X ( chany_bottom_out[18] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_58__57 ( .A ( chanx_right_in[11] ) , 
    .X ( chany_bottom_out[17] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_59__58 ( .A ( chanx_right_in[12] ) , 
    .X ( chany_bottom_out[16] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_60__59 ( .A ( chanx_right_in[13] ) , 
    .X ( chany_bottom_out[15] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_61__60 ( .A ( chanx_right_in[15] ) , 
    .X ( chany_bottom_out[13] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_62__61 ( .A ( chanx_right_in[16] ) , 
    .X ( chany_bottom_out[12] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_6 FTB_63__62 ( .A ( chanx_right_in[17] ) , 
    .X ( chany_bottom_out[11] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_6 FTB_64__63 ( .A ( chanx_right_in[18] ) , 
    .X ( ropt_net_122 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_65__64 ( .A ( chanx_right_in[19] ) , 
    .X ( chany_bottom_out[9] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_66__65 ( .A ( chanx_right_in[20] ) , 
    .X ( chany_bottom_out[8] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_67__66 ( .A ( chanx_right_in[21] ) , 
    .X ( chany_bottom_out[7] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_68__67 ( .A ( chanx_right_in[23] ) , 
    .X ( chany_bottom_out[5] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_69__68 ( .A ( chanx_right_in[24] ) , 
    .X ( chany_bottom_out[4] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_70__69 ( .A ( chanx_right_in[26] ) , 
    .X ( chany_bottom_out[2] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_71__70 ( .A ( chanx_right_in[27] ) , 
    .X ( chany_bottom_out[1] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 FTB_72__71 ( .A ( chanx_right_in[29] ) , 
    .X ( chany_bottom_out[29] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_6 FTB_73__72 ( .A ( SC_IN_TOP ) , .X ( SC_OUT_BOT ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_8 BINV_R_89 ( .A ( BUF_net_90 ) , .Y ( pReset_S_out ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__inv_1 BINV_R_90 ( .A ( pReset_E_in ) , .Y ( BUF_net_90 ) , 
    .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__conb_1 optlc_95 ( .LO ( SYNOPSYS_UNCONNECTED_84 ) , 
    .HI ( optlc_net_92 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__conb_1 optlc_97 ( .LO ( SYNOPSYS_UNCONNECTED_85 ) , 
    .HI ( optlc_net_93 ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
sky130_fd_sc_hd__buf_8 ropt_mt_inst_1311 ( .A ( ropt_net_122 ) , 
    .X ( chany_bottom_out[10] ) , .VPWR ( VDD ) , .VGND ( VSS ) ) ;
endmodule


