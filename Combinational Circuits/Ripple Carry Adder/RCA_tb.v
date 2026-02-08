`timescale 1ns/1ns
`include "RCA.v"
module RCA_tb;
    reg [3:0] a,b;
    reg c_0;
    wire [3:0] sum;
    wire c_4;
    RCA rca(sum,c_4,a,b,c_0);
    initial begin
        a=4'b0000; b=4'b0000; c_0=1'b0; #10;
        a=4'b0001; b=4'b0001; c_0=1'b0; #10;
        a=4'b0010; b=4'b0011; c_0=1'b0; #10;
        a=4'b0101; b=4'b0110; c_0=1'b0; #10;
        a=4'b1111; b=4'b1111; c_0=1'b0; #10;
        a=4'b1111; b=4'b1111; c_0=1'b1; #10;
        $finish;
    end
    initial begin
        $dumpfile("RCA_tb.vcd");
        $dumpvars(0,RCA_tb);
    end
endmodule