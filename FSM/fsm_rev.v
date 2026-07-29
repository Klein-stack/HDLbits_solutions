//This is a Moore state machine with two states, one input, and one output.
// Implement this state machine. Notice that the reset state is B.

//This exercise is the same as fsm1s, but using asynchronous reset.

module async_fsm1 (
    input clk,
    input areset,
    input in,
    output reg out
);

parameter A = 0, B = 1;
reg present_state, next_state;


//always present_State to next_state transition is sequential as it only occurs when clock is triggered
always @(posedge clk or posedge areset) begin
    if (areset) begin
        present_state <= B;
    end else begin
        present_state <= next_state;
    end
end


//logic for the next state is combinational
always @(*) begin
    case (present_state) 
    A : begin
        out <= 0;
        if (in == 1) begin
            next_state <= present_state;
        end else begin
            next_state <= B;
        end
    end

    B : begin
        out <= 1;
        if (in == 1) begin
            next_state <= present_state;
        end else begin
            next_state <= A;
        end
    end
    endcase
end

endmodule

