`timescale 1ns/1ns
`include "and.v"
module and_gate_tb;
    reg a,b;
    wire f;
    and_gate uut(f,a,b);
    initial begin
        $display("Time\t a b |f");
        $monitor("%g\t %b %b |%b",$time, a, b, f);
        a=0; b=0; #10;
        a=0; b=1; #10; 
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
    initial begin
        $dumpfile("and_gate_tb.vcd");
        $dumpvars(0,and_gate_tb);
    end
endmodule 