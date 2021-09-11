

module multiplexer4to1(i0,sel,y);

	input [3:0] i0;
	input [1:0] sel;
	output y;
	
	wire [1:0]tmp;
	wire tmp3;
	
	multiplexer2to1 in0(i0[3:2],sel[1],tmp[1]);
	multiplexer2to1 in1(i0[1:0],sel[1],tmp[0]);
	multiplexer2to1 in2(tmp,sel[0],tmp3);
	
	assign y = tmp3;
	
	endmodule
	