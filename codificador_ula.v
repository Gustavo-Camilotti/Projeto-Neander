module codificador_ula (
	input wire ULA_Y,
	input wire ULA_ADD,
	input wire ULA_AND,
	input wire ULA_OR,
	input wire ULA_NOT,
	
	// saida seletora de 3 bits
	
	output reg [2:0] selUAL
);

// bloco que defini o seletor beseado no sinal
	always @(*) begin
		if (ULA_Y) selUAL = 3'b000; // passa o valor de Y
		else if (ULA_ADD) selUAL = 3'b001; // soma
		else if (ULA_AND) selUAL = 3'b010; // and logico
		else if (ULA_OR) selUAL = 3'B011; // or logico
		else if (ULA_NOT) selUAL = 3'b100; // not
		else	selUAL = 3'b000; // valor padrao
		end
endmodule