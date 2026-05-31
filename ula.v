module ula(
	input wire [7:0] X, // CONECTADO A SAIDO DO AC
	input wire [7:0] Y, // CONECTADO A SAIDO DO RDM
	input wire [2:0] selUAL, // vem do codigo codificador_ula.v
	
	output reg [7:0] out_ULA, // resultado da operacao
	output wire flag_N,
	output wire flag_Z
);

// bloco que seleciona a operacao
always @(*)begin
	case (selUAL)
		3'b000: out_ULA = Y; // ULA(Y): Passa o valor do RDM direto (usado no LDA)
		3'b001: out_ULA = X + Y; // soma AC + RDM
		3'b010: out_ULA = X & Y; // AND logico (bit a bit)
		3'b011: out_ULA = X | Y; // OR logico
		3'b100: out_ULA = ~X; // not nos bits do AC
		default: out_ULA = 8'b00000000;
	endcase
end

// atualiza flags
// flag N e o bit mais significativo
assign flag_N = out_ULA[7];

//flag Z e 1, se todos bits forem 0
assign flag_Z = (out_ULA == 8'b00000000);


endmodule