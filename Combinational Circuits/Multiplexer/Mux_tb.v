`timescale 1ns/1ns
`include "Mux.v"
module Mux_tb;
    reg sel;
    reg [3:0] a;
    reg [3:0] b;
    wire [3:0] out;
    mux uut (
        .sel(sel),
        .a(a),
        .b(b),
        .out(out)
    );
    initial begin
        $display("sel     a      b    |  out");
        $monitor("%b %b %b | %b", sel, a, b, out);
        sel = 1'b0; a = 4'b1010; b = 4'b0101; #10;
        sel = 1'b1; a = 4'b1010; b = 4'b0101; #10;
        sel = 1'b0; a = 4'b1111; b = 4'b0000; #10;
        sel = 1'b1; a = 4'b0001; b = 4'b1110; #10;
        $finish;
    end
    initial begin
        $dumpfile("Mux_tb.vcd");
        $dumpvars(0,Mux_tb);
    end
endmodule