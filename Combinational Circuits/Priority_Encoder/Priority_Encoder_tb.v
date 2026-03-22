`timescale 1ns/1ps
`include "Priority_Encoder.v"
module Priority_Encoder_tb;
    reg [3:0] in;
    reg enable;
    wire [1:0] out;
    wire valid;
    Priority_Encoder uut (
        .in(in),
        .enable(enable),
        .out(out),
        .valid(valid)
    );
    initial begin
        for(integer i=0;i<4;i=i+1) begin
            enable = $random;
            in = $random;
            #10;
            $display("in: %b, enable: %b, out: %b, valid: %b", in, enable, out, valid);
        end
    end
    initial begin
        $dumpfile("Priority_Encoder_tb.vcd");
        $dumpvars(0, Priority_Encoder_tb);
    end
endmodule