//Full adder by half adders test bench
module fa_by_ha_tb;
	reg a, b, cin;
	wire sum, carry;

	fa_by_ha uut(.*);
	initial begin
		#2 a = 0; b = 0; cin = 0;
		#2 a = 0; b = 0; cin = 1;
		#2 a = 0; b = 1; cin = 0;
		#2 a = 0; b = 1; cin = 1;
		#2 a = 1; b = 0; cin = 0;
		#2 a = 1; b = 0; cin = 1;
		#2 a = 1; b = 1; cin = 0;
		#2 a = 1; b = 1; cin = 1;		
	end
endmodule
