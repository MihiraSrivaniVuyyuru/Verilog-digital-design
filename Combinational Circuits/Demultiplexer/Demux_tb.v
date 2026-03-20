`timescale 1ns/1ns
`include "Demux.v"
module Demux_tb;
    reg i;
    reg [1:0] S;
    wire [3:0] y;
    Demux dut (
        .sel(S),
        .i(i),
        .y(y)
    );
    initial begin
        S = 0; i = 0; #10;
        $display("Test case 1: S=0, i=0 => y=%b", y);
        S = 0; i = 1; #10;
        $display("Test case 2: S=0, i=1 => y=%b", y);
        S = 1; i = 0; #10;
        $display("Test case 3: S=1, i=0 => y=%b", y);
        S = 1; i = 1; #10;
        $display("Test case 4: S=1, i=1 => y=%b", y);
        $finish;
    end 
    initial begin
        $dumpfile("Demux_tb.vcd");
        $dumpvars(0, Demux_tb);
    end
endmodule