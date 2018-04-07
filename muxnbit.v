//Dataflow N-bit multiplexer
module muxnbit #(parameter N = 2, S = $clog2(N))(
	input [N-1:0] in,
	input [S-1:0] sel,
	input en,
	output out
	);
	assign out = in[sel];
endmodule	
module mux_test;
	reg [7:0] in;
	reg [2:0] sel;
 	reg en;
	wire out;

	muxnbit #(8) uut(.*);

	initial begin
		en = 1'b1;
		#1 in =  8'b01101101; sel = 3'b111;
	end
endmodule
