//NAND as a universal gate
//Universal NAND
module universal_nand(
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
	nand (nota, a, a);
	//AND gate
	nand (t1, a, b);
	nand (anda, t1, t1);
	//OR gate
	nand (notb, b, b);
	nand (ora, nota, notb);
	//XOR gate
	nand (t2, t1, a);
	nand (t3, t1, b);
	nand (xora, t2, t3);
	//XNOR gate
	nand (xnora, xora, xora);
endmodule
