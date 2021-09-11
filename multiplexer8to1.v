

module multiplexer8to1(a,sel,y);

	input[7:0] a;
	input[2:0] sel;
	output y;
	
	
	wire [1:0]tmp;
	wire tmp2;
	
	multiplexer4to1 mux1(a[7:4],sel[2:1],tmp[1]);
	multiplexer4to1 mux2(a[3:0],sel[2:1],tmp[0]);
	multiplexer2to1 in(tmp,sel[0],tmp2);
	
	assign y = tmp2;
	
	endmodule
	