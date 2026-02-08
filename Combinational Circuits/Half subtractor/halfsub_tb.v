`timescale 1ns/1ns
`include "halfsub.v"
module half_sub_tb;
    reg A,B;
    wire Sub,Bout;
    half_sub uut(Sub,Bout,A,B);
    initial begin
        $display("A B | Sub Bout");
        $monitor("%b %b |  %b   %b",A,B,Sub,Bout);
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;
        $finish;
    end
    initial begin
        $dumpfile("half_sub_tb.vcd");
        $dumpvars(0,half_sub_tb);
    end
endmodule