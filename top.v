module top(
    input clk,
    input rst,
    input [7:0] audio_in,
    output [7:0] audio_out
);

wire [7:0] stft_out;
wire [3:0] quant_out;
wire [7:0] mac_out;
wire [7:0] att_out;

// Updated connections with rst
stft u1(.clk(clk), .rst(rst), .audio_in(audio_in), .freq_out(stft_out));

quantizer u2(.clk(clk), .rst(rst), .in(stft_out), .out(quant_out));

mac u3(.clk(clk), .rst(rst), .in(quant_out), .out(mac_out));

attention u4(.clk(clk), .rst(rst), .in(mac_out), .out(att_out));

istft u5(.clk(clk), .rst(rst), .in(att_out), .audio_out(audio_out));

endmodule