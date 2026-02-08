`timescale 1ns/1ns
`include "CLA.v"
module CLA_tb;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    CLA cla_inst (
        .a(A),
        .b(B),
        .c_in(Cin),
        .sum(Sum),
        .c_out(Cout)
    );

    initial begin
        // Test case 1
        A = 4'b0001; B = 4'b0010; Cin = 0;
        #10; // Wait for 10 ns

        // Test case 2
        A = 4'b0101; B = 4'b0011; Cin = 1;
        #10;

        // Test case 3
        A = 4'b1111; B = 4'b0001; Cin = 0;
        #10;

        // Test case 4
        A = 4'b1010; B = 4'b0101; Cin = 1;
        #10;

        // Finish simulation
        $finish;
    end 
    initial begin
        $dumpfile("CLA_tb.vcd");
        $dumpvars(0, CLA_tb);
    end
endmodule
