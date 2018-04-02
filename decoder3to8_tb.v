//3 to 8 Decoder Testbench
module decoder3to8_tb;
	reg [2:0] in;
	reg en;
	wire [7:0] out;

	decoder3to8 uut(.*);
	initial begin
		en = 1'b1;
		#5 in = 3'd1;
		#5 in = 3'd3;
		#5 in = 3'd5;
		#5 in = 3'd7;
		#5 in = 3'd2;
	end
endmodule
