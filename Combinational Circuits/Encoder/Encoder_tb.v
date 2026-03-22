`timescale 1ns/1ps
`include "Encoder.v"
module Encoder_tb;
    reg [3:0] in;
    wire [1:0] out;
    Encoder uut(
        .in(in),
        .out(out)
    );
    initial begin
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0100; #10;
        in = 4'b1000; #10;
    end
    initial begin
        $monitor("Input: %b,output:%b",in,out);
    end

    initial begin
        $dumpfile("Encoder_tb.vcd");
        $dumpvars(0,Encoder_tb);
    end
endmodule