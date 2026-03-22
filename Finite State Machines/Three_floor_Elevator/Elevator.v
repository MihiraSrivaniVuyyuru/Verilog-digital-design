module Elevator(
    input clk,
    input rst,
    input ra,
    input rb,
    input rc,
    output reg [1:0] floor
);
parameter A  = 2'b00,
          BU = 2'b01,
          BD = 2'b10,
          C  = 2'b11;

reg [1:0] state;

always @(posedge clk) begin
    if (rst)
        state <= A;
    else begin
        case (state)

            A: begin
                if (ra)
                    state <= A;
                else if (rb)
                    state <= BU;
                else if (rc)
                    state <= C;
                else
                    state <= A;
            end

            BU: begin
                if (rb)
                    state <= BU;
                else if (rc)
                    state <= C;
                else if (ra)
                    state <= A;
                else
                    state <= BU;
            end

            BD: begin
                if (rb)
                    state <= BD;
                else if (rc)
                    state <= C;
                else if (ra)
                    state <= A;
                else
                    state <= BD;
            end

            C: begin
                if (rc)
                    state <= C;
                else if (rb)
                    state <= BD;
                else if (ra)
                    state <= A;
                else
                    state <= C;
            end

            default: state <= A;

        endcase
    end
end

always @(*) begin
    case (state)
        A: floor = 2'b00;
        BU, BD: floor = 2'b01;
        C: floor = 2'b10;
        default: floor = 2'b00;
    endcase
end
endmodule