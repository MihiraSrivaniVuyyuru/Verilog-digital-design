`timescale 1ns/1ps
`include "Elevator.v"
module Elevator_tb;
reg clk = 0;
reg rst;
reg ra = 0;
reg rb = 0;
reg rc = 0;
wire [1:0] floor;
Elevator DUT (clk, rst, ra, rb, rc, floor);
always #5 clk = ~clk;
initial begin
    rst = 1;
    #10 rst = 0;
end
initial begin
    $display("Time\tclk rst ra rb rc | floor");
    $monitor("%0t\t%b   %b   %b  %b  %b | %b",
              $time, clk, rst, ra, rb, rc, floor);

    repeat (2) @(posedge clk);

    repeat (5) begin
        {ra, rb, rc} = $random;
        @(posedge clk);

        {ra, rb, rc} = 3'b000;
        repeat (2) @(posedge clk);
    end

    $finish;
end
initial begin
    $dumpfile("Elevator_tb.vcd");
    $dumpvars(0, Elevator_tb);
end
endmodule