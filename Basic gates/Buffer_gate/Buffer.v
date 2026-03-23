module Buffer(
    input A,
    output reg Y
);
    always @(*) begin
        Y=A;
    end
endmodule