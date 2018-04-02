//Hamming Decoder
module hamming_decoder(
	input [6:0] in,
	input en,
	output [3:0] out
	);
	
	wire [2:0] p;
	assign out[3] 	= (p == 3'd7)? ~in[6]:in[6];
	assign out[2] 	= (p == 3'd6)? ~in[5]:in[5];
	assign out[1] 	= (p == 3'd5)? ~in[4]:in[4];
	assign out[0] 	= (p == 3'd3)? ~in[2]:in[2];
	
	xnor 	(p[0], en, in[3], in[4], in[5], in[6]),
		(p[1], en, in[1], in[2], in[5], in[6]),
		(p[2], en, in[0], in[2], in[4], in[6]);
endmodule
