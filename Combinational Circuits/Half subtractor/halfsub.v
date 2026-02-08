module half_sub(Sub,Bout,A,Bin);
    input A,Bin;
    output Sub, Bout;
    assign Sub = A^Bin;
    assign Bout = (~A)&Bin;
endmodule