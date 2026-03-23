`timescale 1ns/1ps
`include "Buffer.v"
module Buffer_tb;
    reg A;
    wire y;
    Buffer uut(
        .A(A),
        .Y(y)
    );
    initial begin
        for(integer i=0;i<10;i=i+1) begin
            A = $random;
            #10;
        end
    end
    initial begin
        $monitor("A=%b, Y=%b", A, y);
    end
    initial begin
        $dumpfile("Buffer_tb.vcd");
        $dumpvars(0, Buffer_tb);
    end
endmodule