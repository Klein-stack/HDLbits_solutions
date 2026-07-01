//This is a Moore state machine with two states, one input, and one output. Implement this state machine.
// Notice that the reset state is B.

//This exercise is the same as fsm1, but using synchronous reset.


module top_module(
    input clk,
    input reset,    // synchronous reset to state B
    input in,
    output out
    );
    

parameter A = 0, B = 1;

reg present_state, next_state;

//we will write the sequential logic of present state transisitoning to next state
always @(posedge clk) begin
   if (reset) begin
    present_state <= B;
   end else begin
    present_state <= next_state;
    //I feel like something is missing here
   end
end


//next is the combinational logic of the next state
always @(*) begin
    case (present_state) 
        A : 
            if (in == 1) begin
                next_state <= present_state;
            end else begin
                next_state <= B;
            end
        
        B : 
            if (in == 1) begin
                next_state <= present_state;

            end else begin
                next_state <= A;
            end

        default : 
            next_state <= present_state;
  
    endcase


end
    

