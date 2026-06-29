//This is a Moore state machine with two states, one input, and one output.
// Implement this state machine. Notice that the reset state is B.

//This exercise is the same as fsm1s, but using asynchronous reset.

module top_module (
    input clk,
    input areset, //Asynchronous reset to state B
    input in,
    output out
);
    parameter A = 0, B = 1;
    reg state;
    reg next_state;
    
    always @(posedge clk or posedge areset) begin
        if (areset) begin
            state <= B;
        end else begin
            state <= next_state; //next state is wire from combinational logic and is fed back to output of the flip flop
        end
    end
    
    //next we will write the combinational logic of next state
    
    always @(*) begin
        case (state) 
            A : begin
                if (in == 1) begin
                    next_state = state;
                end else begin
                    next_state = B;
                end
            end
            
            B: begin
                if (in == 1) begin
                    next_state = state;
                end else begin
                    next_state = A;
                end 
            end
            
        endcase
    end
        
        assign out = (state == A) ? 0 : 1;
      
endmodule