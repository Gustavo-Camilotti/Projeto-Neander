module registrador_rem (
    input  wire       clk,
    input  wire       rst,
    input  wire       cargaREM,
    input  wire [7:0] d,
    output reg  [7:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst) q <= 8'b00000000;
        else if (cargaREM) q <= d;
    end
endmodule