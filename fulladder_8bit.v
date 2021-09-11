

module fulladder_8bit(i0,i1,c_in,c_out,sum);

	input [7:0] i0,i1;
	input c_in;
	output [7:0]c_out;
	output [7:0] sum;
	
	reg sum_bit;
	
	wire [7:0] out_sum;
	
	adder_1bit add(i0[0],i1[0],c_in,out_sum[0],c_out[0]);
	adder_1bit add1(i0[1],i1[1],c_out[0],out_sum[1],c_out[1]);
	adder_1bit add2(i0[2],i1[2],c_out[1],out_sum[2],c_out[2]);
	adder_1bit add3(i0[3],i1[3],c_out[2],out_sum[3],c_out[3]);
	adder_1bit add4(i0[4],i1[4],c_out[3],out_sum[4],c_out[4]);
	adder_1bit add5(i0[5],i1[5],c_out[4],out_sum[5],c_out[5]);
	adder_1bit add6(i0[6],i1[6],c_out[5],out_sum[6],c_out[6]);
	adder_1bit add7(i0[7],i1[7],c_out[6],out_sum[7],c_out[7]);
	
	assign sum = out_sum;
	
	endmodule
