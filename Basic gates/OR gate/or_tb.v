`timescale 1ns/1ns
`include "or.v"
module or_gate_tb;
    reg a,b;
    wire f;
    or_gate uut(f,a,b);
    initial begin
        $display("A B | F");
        $monitor("%b %b | %b",a,b,f);
        a=0;b=1; #10;
        a=1;b=0; #10;
        a=1;b=1; #10;
        a=0;b=0; #10;
    end
    initial begin
        $dumpfile("or_gate_tb.vcd");
        $dumpvars(0, or_gate_tb);
    end
endmodule