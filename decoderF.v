module decoderF(
	input [2:0] d,
	input en,
	output reg[7:0] enout
);
	
	
	always@*
	begin
		case({en,d})
			
			4'b1_000: enout = 8'h1;
			4'b1_001: enout = 8'h2;
			4'b1_010: enout = 8'h3;
			4'b1_011: enout = 8'h4;
			4'b1_100: enout = 8'h5;
			4'b1_101: enout = 8'h6;
			4'b1_110: enout = 8'h7;
			4'b1_111: enout = 8'h8;
			default : enout = 8'h0;
			
		endcase
			
	end
	
	endmodule
	