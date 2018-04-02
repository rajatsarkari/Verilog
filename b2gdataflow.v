module b2gdataflow(bin, gray);
	parameter N = 4;
	input [N-1:0] gray, bin;
	assign gray[N-1] = bin[N-1];
	assign gray[N-2:0] = (bin[N-1:1]^bin[N-2:0]); 
endmodule
module b2g_test;
	reg [3:0] bin;
	wire [3:0] gray;

	b2gdataflow uut(.*);
	initial begin
		#2 bin = 4'b0101;
	end
endmodule
