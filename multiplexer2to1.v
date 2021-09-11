module multiplexer2to1(i0,sel,y);

	input [1:0] i0;
	input sel;
	output y;
	
	assign y = sel ? i0[1] : i0[0];
	
	endmodule
	