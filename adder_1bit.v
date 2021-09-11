module adder_1bit(i0, i1,c_in,sum,c_out);

	input i0,i1,c_in;
	output sum, c_out;
	
	wire p0,p1,p2;


	assign p0 = i0 ^ i1;
	assign sum = p0 ^ c_in;

	assign p1 = p0 & c_in;
	assign p2 = i0 & i1;
	assign c_out = p1 | p2;

endmodule
