`timescale 1ns/1ns
`include "nand.v"
module nand_gate_tb;
    reg a,b;
    wire f_bar,f;
    nand_gate uut(f,a,b);
    assign f_bar = ~f;
    initial begin
        $display("a b f f_bar");
        $monitor("%b %b %b %b",a,b,f,f_bar);
        a=0;b=0;#10;
        a=0;b=1;#10;
        a=1;b=0;#10;
        a=1;b=1;#10;
        $finish;
    end
    initial begin
        $dumpfile("nand_tb.vcd");
        $dumpvars(0,nand_gate_tb);
    end
endmodule