`include "fulladder.v"
module RCA(sum, c_4,a,b,c_0);
    input [3:0] a,b;
    input c_0;
    output [3:0] sum;
    output c_4;
    wire c_1,c_2,c_3;
    full_adder FA0(sum[0],c_1,a[0],b[0],c_0);
    full_adder FA1(sum[1],c_2,a[1],b[1],c_1);
    full_adder FA2(sum[2],c_3,a[2],b[2],c_2);
    full_adder FA3(sum[3],c_4,a[3],b[3],c_3);
endmodule