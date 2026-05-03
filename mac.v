module mac(
    input clk,
    input rst,
    input [3:0] in,
    output reg [7:0] out
);

parameter WEIGHT = 4'd3;

always @(posedge clk or posedge rst) begin
    if (rst)
        out <= 0;
    else
        out <= in * WEIGHT;
end

endmodule