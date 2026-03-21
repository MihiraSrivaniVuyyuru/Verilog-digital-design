`timescale 1ns/1ps
`include "Decoder.v"
module Decoder_tb;
    reg [1:0] sel;
    wire [3:0] y;
    Decoder uut(
        .sel(sel),
        .y(y)
);
    initial begin
        sel = 2'b00;
        #10;
        for(integer i=0;i<4;i=i+1) begin
            sel = $random %4;
            #10;
            $display("sel=%b => y=%b",sel,y);
        end
    end
    initial begin
        $dumpfile("Decoder_tb.vcd");
        $dumpvars(0,Decoder_tb);
    end
endmodule