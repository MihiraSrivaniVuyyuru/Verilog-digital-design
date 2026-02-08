`timescale 1ns/1ns
`include "halfadder.v"
module half_adder_tb;
    reg A,B;
    wire Sum,Cout;
    half_adder uut(Sum,Cout,A,B);
    initial begin
        $display("A B | Sum Cout");
        $monitor("%b %b |  %b   %b",A,B,Sum,Cout);
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;
        $finish;
    end
    initial begin
        $dumpfile("half_adder_tb.vcd");
        $dumpvars(0,half_adder_tb);
    end
endmodule