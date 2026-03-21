module tri_state_buffer(
    input x,y,sel,
    output tri f
);
    bufif0(f,x,sel);
    bufif1(f,y,sel);
endmodule