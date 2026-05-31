module registrador_ac (
    input  wire       clk,
    input  wire       rst,
    input  wire       cargaAC,
    input  wire [7:0] d,
    output reg  [7:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst) q <= 8'b00000000;
        else if (cargaAC) q <= d;
    end
endmodule