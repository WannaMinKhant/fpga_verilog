

module multiplexer16to1(a,sel,y);

	input[15:0] a;
	input[3:0] sel;
	output y;
	
	
	wire [1:0]tmp;
	wire tmp2;
	
	multiplexer8to1 mux1(a[15:8],sel[3:1],tmp[1]);
	multiplexer8to1 mux2(a[7:0],sel[3:1],tmp[0]);
	multiplexer2to1 in(tmp,sel[0],tmp2);
	
	assign y = tmp2;
	
	endmodule
	