module registrador_pc (
    input  wire       clk,
    input  wire       rst,           // reset assincrono
    input  wire       cargaPC,       // habilita a carga de um novo endereço
    input  wire       incrementaPC,  // habilita o incremento do PC
    input  wire [7:0] d,             // dados de entrada (vem do RDM)
    
    output reg  [7:0] q              // Valor atual do PC
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 8'b00000000;        // zera o PC no reset
        end
        else if (cargaPC) begin
            q <= d;                  // desvio carrega o novo endereço
        end
        else if (incrementaPC) begin
            q <= q + 1'b1;           // execucao normal avança para a próxima instrução
        end
    end

endmodule