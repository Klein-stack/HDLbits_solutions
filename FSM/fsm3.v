module top_module(
    input in,
    input [1:0] state,
    output reg [1:0] next_state,
    output reg out); //

    parameter A=0, B=1, C=2, D=3;
    
    
    
    always @(*) begin
        case (state) 
            A : 
                begin
                    out = 0;
                    if (in == 0) begin
                        next_state = A;
                    end else begin
                        next_state = B;
                    end 
                end
            B : 
                begin
                    out = 0;
                    if (in == 0) begin
                        next_state = C;
                    end else begin
                        next_state = B;
                    end 
                end 
            C : 
                begin
                    out = 0;
                    if (in == 0) begin
                        next_state = A;
                    end else begin
                        next_state = D;
                    end 
                end
            D : 
                begin
                    out = 1;
                    if (in == 0) begin
                        next_state = C;
                    end else begin
                        next_state = B;
                    end 
                end 
            
            default : next_state = A; 
        endcase
    end
            
                

    // State transition logic: next_state = f(state, in)

    // Output logic:  out = f(state) for a Moore state machine

endmodule
