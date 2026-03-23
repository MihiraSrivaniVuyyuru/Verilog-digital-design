`timescale 1ns/1ns
`include "not.v"
module not_tb;
    reg a;
    wire abar;
    not_gate uut(abar, a);
    initial begin
        $display("Time\ta | abar");
        $monitor("%g\t%b | %b",$time, a, abar);
        a=0; #10;
        a=1; #10;
        $finish;
    end
initial begin
        $dumpfile("not_tb.vcd");
        $dumpvars(0, not_tb);    
    end
endmodule