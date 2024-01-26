// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jan 26 10:24:35 2024
// Host        : LAPTOP-DWAYNE running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/hdway/Documents/vivado/SSM/zybo_tp2/zybo_tp2.sim/sim_1/synth/timing/xsim/test_pulse_gen_time_synth.v
// Design      : pulse_gen
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* MAX_CPT = "8" *) 
(* NotValidForBitStream *)
module pulse_gen
   (RST,
    MCLK,
    P);
  input RST;
  input MCLK;
  output P;

  wire MCLK;
  wire MCLK_IBUF;
  wire MCLK_IBUF_BUFG;
  wire P;
  wire P_OBUF;
  wire RST;
  wire RST_IBUF;
  wire [2:0]cpt;
  wire p_0_in;
  wire \ppulse.cpt[0]_i_1_n_0 ;
  wire \ppulse.cpt[1]_i_1_n_0 ;
  wire \ppulse.cpt[2]_i_1_n_0 ;
  wire \ppulse.cpt[2]_i_2_n_0 ;

initial begin
 $sdf_annotate("test_pulse_gen_time_synth.sdf",,,,"tool_control");
end
  BUFG MCLK_IBUF_BUFG_inst
       (.I(MCLK_IBUF),
        .O(MCLK_IBUF_BUFG));
  IBUF MCLK_IBUF_inst
       (.I(MCLK),
        .O(MCLK_IBUF));
  OBUF P_OBUF_inst
       (.I(P_OBUF),
        .O(P));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    P_i_1
       (.I0(cpt[2]),
        .I1(cpt[1]),
        .I2(cpt[0]),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    P_reg
       (.C(MCLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\ppulse.cpt[2]_i_2_n_0 ),
        .D(p_0_in),
        .Q(P_OBUF));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ppulse.cpt[0]_i_1 
       (.I0(cpt[0]),
        .O(\ppulse.cpt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ppulse.cpt[1]_i_1 
       (.I0(cpt[0]),
        .I1(cpt[1]),
        .O(\ppulse.cpt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ppulse.cpt[2]_i_1 
       (.I0(cpt[0]),
        .I1(cpt[1]),
        .I2(cpt[2]),
        .O(\ppulse.cpt[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ppulse.cpt[2]_i_2 
       (.I0(RST_IBUF),
        .O(\ppulse.cpt[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ppulse.cpt_reg[0] 
       (.C(MCLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\ppulse.cpt[2]_i_2_n_0 ),
        .D(\ppulse.cpt[0]_i_1_n_0 ),
        .Q(cpt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ppulse.cpt_reg[1] 
       (.C(MCLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\ppulse.cpt[2]_i_2_n_0 ),
        .D(\ppulse.cpt[1]_i_1_n_0 ),
        .Q(cpt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ppulse.cpt_reg[2] 
       (.C(MCLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\ppulse.cpt[2]_i_2_n_0 ),
        .D(\ppulse.cpt[2]_i_1_n_0 ),
        .Q(cpt[2]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
