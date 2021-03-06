module b2gdataflow(bin, gray);
	parameter N = 4;
	input [N-1:0] gray;
	output [N-1:0] bin;

	assign gray[N-1] = bin[N-1];
	assign gray[N-2:0] = (bin[N-1:1]^bin[N-2:0]); 
endmodule
module g2bdataflow(bin, gray);
	parameter N = 4;
	output [N-1:0] gray;
	input [N-1:0] bin;
	assign bin[N-1] = gray[N-1];
	assign bin[N-2:0] = (gray[N-2:0]^bin[N-1:1]); 
endmodule
module b2g_test;
	reg [3:0] bin;
	wire [3:0] gray;

	b2gdataflow uut(.*);
	initial begin
		#2 bin = 4'b0101;
	end
endmodule
module g2b_test;
	wire [3:0] bin;
	reg [3:0] gray;

	g2bdataflow uut(.*);
	initial begin
		#2 gray = 4'b1001;
	end
endmodule
