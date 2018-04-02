// Testbench for 2-bit multiplier
module multiplier_2_tb;
	reg [1:0] a, b;
	wire [3:0] out;
	
	multiplier_2 uut (.*);

	initial begin
		#2 a = 2'b10; b = 2'b10;
		#2 a = 2'b01; b = 2'b10;
	end
endmodule
