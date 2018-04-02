//Carry look ahead adder
// Carry look ahead adder
module cla_adder(
	input [3:0] a, b,
	output [3:0] sum,
	output carry
	);
	wire [3:0] c, g, p;

	assign carry  = c[3];
	assign sum[3] = p[3]^c[2];
	assign sum[2] = p[2]^c[1];
	assign sum[1] = p[1]^c[0];
	assign sum[0] = p[0];

	assign c[3] = g[3]|(p[3]&c[2]);
	assign c[2] = g[2]|(p[2]&c[1]);
	assign c[1] = g[1]|(p[1]&c[0]);
	assign c[0] = a[0]&b[0];
	
	//Generate and Propogate
	and (g[0], a[0], b[0]);
	and (g[1], a[1], b[1]);
	and (g[2], a[2], b[2]);
	and (g[3], a[3], b[3]);
	xor (p[0], a[0], b[0]);
	xor (p[1], a[1], b[1]);
	xor (p[2], a[2], b[2]);
	xor (p[3], a[3], b[3]);
	//Carry Prediction
endmodule
