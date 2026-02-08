`timescale 1ns/1ns
`include "xnor.v"
module xnor_gate_tb;
    reg a,b;
    wire f,f_bar;
    xnor_gate uut(f,a,b);
    assign f_bar = ~f;
    initial begin
        $display("A B | F |F_bar");
        $monitor("%b %b | %b | %b",a,b,f,f_bar);
        a=0;b=0; #10;
        a=0;b=1; #10;
        a=1;b=0; #10;
        a=1;b=1; #10;
        $finish;
    end
    initial begin
        $dumpfile("xnor_gate_tb.vcd");
        $dumpvars(0,xnor_gate_tb);
    end
endmodule