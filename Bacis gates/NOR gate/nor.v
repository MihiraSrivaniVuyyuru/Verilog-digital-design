module nor_gate(f,a,b);
    input a,b;
    output f;
    wire f_bar;
    assign f_bar = a | b;
    assign f = ~f_bar;
endmodule