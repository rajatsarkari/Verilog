//Hamming Decoder testbench
module hamming_decoder_tb;
	reg [6:0] in;
	reg en;
	wire [3:0] out;

	hamming_decoder uut(.*);
	initial begin
		en = 1'b1;
		#5 in = 7'd1;
		#5 in = 7'd3;
		#5 in = 7'd5;
		#5 in = 7'd7;
		#5 in = 7'b1011011; //Output is 1000 corrected 5th error bit
	end
endmodule
