//BCD Adder
module bcd_adder(
	input [3:0] a, b,
	output [3:0] sum,
	output carry		
	);
	
	wire [3:0] t;
	wire cin;
	and (t1, t[1], t[3]);
	and (t2, t[2], t[3]);
	or (t3, t1, t2, carry);
	cla_adder c1(a, b, t, carry);
	cla_adder c2(t, {1'b0, {2{t3}}, 1'b0}, sum, cin);
endmodule
