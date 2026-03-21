 `timescale 1ns/1ps
 `include "Tristate_buffer.v"
 module Tristate_buffer_tb;
    reg a,b,sel;
    wire f;
    tri_state_buffer uut(
        .x(a),
        .y(b),
        .sel(sel),
        .f(f)
    );
    initial begin
        a=0;b=0;sel=0;
        for(integer i=0;i<10;i=i+1) begin
            a= $random & 1;
            b= $random & 1;
            sel= $random & 1;
            #10;
        end
        #10
        $finish;
    end
    initial begin
        $monitor("At time %t: a=%b, b=%b, sel=%b, f=%b",$time,a,b,sel,f);
    end
    initial begin
        $dumpfile("Tristate_buffer_tb.vcd");
        $dumpvars(0,Tristate_buffer_tb);
    end
endmodule