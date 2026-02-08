`timescale 1ns/1ns
`include "fulladder.v"
module full_adder_tb;
    reg A,B,Cin;
    wire Sum,Cout;
    full_adder uut(Sum,Cout,A,B,Cin);
    initial begin
        $display("A B Cin | Sum Cout");
        $monitor("%b %b %b |  %b   %b",A,B,Cin,Sum,Cout);
        A=0; B=0; Cin=0; #10;
        A=0; B=1; Cin=0; #10;
        A=1; B=0; Cin=0; #10;
        A=1; B=1; Cin=0; #10;
        A=0; B=0; Cin=1; #10;
        A=0; B=1; Cin=1; #10;
        A=1; B=0; Cin=1; #10;
        A=1; B=1; Cin=1; #10;
        $finish;
    end
    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0,full_adder_tb);
    end
endmodule