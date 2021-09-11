
module multiplexer32to1(a,sel,y);

	input[31:0] a;
	input[4:0] sel;
	output y;
	
	
	wire [1:0]tmp;
	wire tmp2;
	
	multiplexer16to1 mux1(a[31:16],sel[4:1],tmp[1]);
	multiplexer16to1 mux2(a[15:0],sel[4:1],tmp[0]);
	multiplexer2to1 in(tmp,sel[0],tmp2);
	
	assign y = tmp2;
	
	endmodule
	