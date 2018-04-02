// Carry look ahead adder test bench
module cla_adder_tb;
	reg [3:0] a, b;
	wire [4:0] sum;
	cla_adder uut(.*);
	
	initial begin
		#2 a = 4'b1110; b = 4'b1111;
	end
endmodule
