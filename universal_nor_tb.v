//Universal NOR gate test fixture
module universal_nor_tb;
	reg a, b;
	wire nota, notb, anda, ora, xora, xnora;

	universal_nor uut (.*);

	initial begin
		#2 a = 0; b = 0;
		#2 a = 0; b = 1;
		#2 a = 1; b = 0;
		#2 a = 1; b = 1;
	end
endmodule
