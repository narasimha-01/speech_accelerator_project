module testbench;

reg clk;
reg rst;
reg [7:0] audio_in;
wire [7:0] audio_out;

top uut(
    .clk(clk),
    .rst(rst),
    .audio_in(audio_in),
    .audio_out(audio_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    audio_in = 0;

    // Reset active
    #10 rst = 0;

    // Apply inputs
    #10 audio_in = 8'd10;
    #10 audio_in = 8'd50;
    #10 audio_in = 8'd100;
    #10 audio_in = 8'd200;

    #50 ;
end

endmodule