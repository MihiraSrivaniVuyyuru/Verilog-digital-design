`timescale 1ns/1ns
`include "fullsub.v"
module full_sub_tb;
    reg A,B,Cin;
    wire Sub,Bout;
    full_sub uut(Sub,Bout,A,B,Cin);
    initial begin
        $display("A B Cin | Sub Bout");
        $monitor("%b %b %b |  %b   %b",A,B,Cin,Sub,Bout);
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
        $dumpfile("full_sub_tb.vcd");
        $dumpvars(0,full_sub_tb);
    end
endmodule