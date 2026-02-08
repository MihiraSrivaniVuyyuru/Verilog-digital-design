module full_sub(Sub,Bout,A,B,Bin);
    input A,B,Bin;
    output Sub, Bout;
    assign Sub = A^B^Bin;
    assign Bout = ((~A)&Bin) | (B&Bin) | ((~A)&B);
endmodule