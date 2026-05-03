module istft(
    input clk,
    input rst,
    input [7:0] in,
    output reg [7:0] audio_out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        audio_out <= 0;
    else
        audio_out <= in;
end

endmodule