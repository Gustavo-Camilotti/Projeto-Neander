module decodificador(
	input wire[3:0] opcode,
	
	//saidas (1 bit para cada instrucao)
	
	output wire NOP,
	output wire STA,
	output wire LDA,
	output wire ADD,
	output wire OR_inst,
	output wire AND_inst,
	output wire NOT_inst,
	output wire JMP,
	output wire JN,
	output wire JZ,
	output wire HLT
);
	// saida conforme o opcode
	assign NOP = (opcode == 4'b0000);
	assign STA = (opcode == 4'b0001);
	assign LDA = (opcode == 4'b0010);
	assign ADD = (opcode == 4'b0011);
	assign OR_inst = (opcode == 4'b0100);
	assign AND_inst = (opcode == 4'b0101);
	assign NOT_inst = (opcode == 4'b0110);
	assign JMP = (opcode == 4'b1000);
	assign JN = (opcode == 4'b1001);
	assign JZ = (opcode == 4'b1010);
	assign HLT = (opcode == 4'b1111);
endmodule