

module greaterthan4bit(a,b,gt);
	
	input [3:0] a,b;
	output wire gt;

	wire gt0,gt1,gt2;
	wire pre0,pre1,pre2,pre3;
	
	greaterthan1bit in1(a[3],b[3],gt0);
	greaterthan1bit in2(a[2],b[2],gt1);
	greaterthan1bit in3(a[1],b[1],gt2);

	
	assign pre0 = a[3] & ~b[3];
	assign pre1 = a[2] & ~b[2] & gt0;
	assign pre2 = a[1] & ~b[1] & gt0 & gt1;
	assign pre3 = a[0] & ~b[0] & gt0 & gt1 & gt2;
	
	assign gt = pre0 | pre1 | pre2 | pre3;
	
endmodule



	
	