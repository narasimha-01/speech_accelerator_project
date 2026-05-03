module attention(
    input clk,
    input rst,
    input [7:0] in,
    output reg [7:0] out
);

parameter SHIFT = 2;

always @(posedge clk or posedge rst) begin
    if (rst)
        out <= 0;
    else
        out <= in >> SHIFT;
end

endmodule