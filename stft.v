module stft(
    input clk,
    input rst,
    input [7:0] audio_in,
    output reg [7:0] freq_out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        freq_out <= 0;
    else
        freq_out <= audio_in;
end

endmodule