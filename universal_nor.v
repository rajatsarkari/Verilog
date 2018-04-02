//NOR as a universal gate
module universal_nor(
	input a, b,
	output nota,
	output notb,
	output anda,
	output ora,
	output xora,
	output xnora		
	);
	wire t1, t2, t3;
	//NOT gate
	nor (nota, a, a);
	//OR gate
	nor (t1, a, b);
	nor (ora, t1, t1);
	//AND gate
	nor (notb, b, b);
	nor (anda, nota, notb);
	//XOR gate
	nor (xora, xnora, xnora);
	//XNOR gate
	nor (t2, t1, a);
	nor (t3, t1, b);
	nor (xnora, t2, t3);
endmodule
