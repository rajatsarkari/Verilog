// 2-bit multiplier
module multiplier_2(
	input [1:0] a, b,
	output [3:0] out	
	);	
	//Bit 0
	and (out[0], a[0], b[0]);
	//Bit 1
	and (t1, a[1], b[0]);
	and (t2, a[0], b[1]);
	xor (out[1], t1, t2);
	and (c1, t1, t2);
	//Bit 2
	and (t3, a[1], b[1]);
	xor (out[2], t3, c1);
	and (c2, c1, t3);
	//Bit 3
	buf (out[3], c2);
endmodule
