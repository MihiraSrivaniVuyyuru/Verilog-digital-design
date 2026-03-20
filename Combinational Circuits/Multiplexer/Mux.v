module mux(
    input sel,
    input [3:0] a,
    input [3:0] b,
    output reg [3:0] out
);
    always @(*) begin
        if(sel) 
            out = b;
        else
            out = a;
    end
endmodule