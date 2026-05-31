module registrador_rdm (
    input  wire       clk,
    input  wire       rst,
    input  wire       cargaRDM,
    input  wire [7:0] d,
    output reg  [7:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst) q <= 8'b00000000;
        else if (cargaRDM) q <= d;
    end
endmodule