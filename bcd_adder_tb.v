// BCD Adder test bench
module bcd_adder_tb;
	reg [3:0] a, b;
	wire [3:0] sum;
	wire carry;
	bcd_adder uut(.*);
	
	initial begin
		#2 a = 4'b1001; b = 4'b1001;
	end
endmodule
