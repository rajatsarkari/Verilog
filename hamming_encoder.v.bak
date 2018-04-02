module hamming_encoder(
	input [3:0] in,
	input en,
	output [6:0] out
	);
	and 	(out[0], en, in[3], in[1], in[0]),
		(out[1], en, in[3], in[2], in[0]),
		(out[2], en, in[0]),
		(out[3], en, in[3], in[2], in[1]),
		(out[4], en, in[1]),
		(out[5], en, in[2]),
		(out[6], en, in[3]);
endmodule
