//Hamming Encoder testbench
module hamming_encoder_tb;
	reg [3:0] in;
	reg en;
	wire [6:0] out;

	hamming_encoder uut(.*);
	initial begin
		en = 1'b1;
		#5 in = 4'd1;
		#5 in = 4'd3;
		#5 in = 4'd5;
		#5 in = 4'd7;
		#5 in = 4'd11;
	end
endmodule
