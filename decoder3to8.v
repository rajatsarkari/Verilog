//3 to 8 Decoder
module decoder3to8(
	input en,
	input [2:0] in,
	output [7:0] out
	);
	and 	(out[0], en, ~in[2], ~in[1], ~in[0]),
		(out[1], en, ~in[2], ~in[1], in[0]),
		(out[2], en, ~in[2], in[1], ~in[0]),
		(out[3], en, ~in[2], in[1], in[0]),
		(out[4], en, in[2], ~in[1], ~in[0]),
		(out[5], en, in[2], ~in[1], in[0]),
		(out[6], en, in[2], in[1], ~in[0]),
		(out[7], en, in[2], in[1], in[0]);
endmodule
