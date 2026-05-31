module mux_rem(
	input wire [7:0] PC,
	input wire [7:0] RDM,
	input wire sel,
	
	// saide de 8 bit que conecta 
	// na entrada do REGISTRADOR REM
	output wire [7:0] out_MUX
);

	// se sel == 1, RDM
	// se sel == 0, PC
	
	assign out_MUX = sel ? RDM : PC;
	
endmodule

// esse modulo e responsavel por selecionar
// fonte de dados que vai para o reg REM.