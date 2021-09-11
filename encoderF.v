module encoderF(
	input [7:0] d,
	input en,
	output reg[2:0] enout
);


//	assign g = en &(|d);
	
	
	always@*
	begin
		case({en,d})
			
			9'b1_0000_0010: enout = 3'h1;
			9'b1_0000_0100: enout = 3'h2;
			9'b1_0000_1000: enout = 3'h3;
			9'b1_0001_0000: enout = 3'h4;
			9'b1_0010_0000: enout = 3'h5;
			9'b1_0100_0000: enout = 3'h6;
			9'b1_1000_0000: enout = 3'h7;
			default : enout = 3'h0;
			
		endcase
			
	end
	
	endmodule
	