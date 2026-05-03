module quantizer(
    input clk,
    input rst,
    input [7:0] in,
    output reg [3:0] out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        out <= 0;
    else
        out <= in[7:4]; // 8-bit ? 4-bit
end

endmodule