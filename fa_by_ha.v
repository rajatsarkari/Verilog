//Full Adder by Half Adder
module fa_by_ha(
	input a, b, cin,
	output sum, carry	
	);
	
	half_adder h1(a, b, s1, c1);
	half_adder h2(cin, s1, sum, c2);
	or (carry, c1, c2);
endmodule
