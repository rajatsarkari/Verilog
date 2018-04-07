//2 to 1 Multiplexer
module mux2to1(
	input [1:0] in,
	input en,
	input sel,
	output out
	);
	assign out = in[sel]&en; 
endmodule
