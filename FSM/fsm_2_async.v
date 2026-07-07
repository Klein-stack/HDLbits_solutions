module top_module(
    input clk,
    input areset,    // Asynchronous reset to OFF
    input j,
    input k,
    output reg out); //  

    parameter OFF=0, ON=1; 
    reg state, next_state;

    always @(*) begin
        // State transition logic
        case (state) 
            OFF : 
                begin
                    out = 0;
                    if (j == 0) begin
                        next_state = OFF;
                    end else begin
                        next_state = ON;
                    end 
                end
            
            ON : 
                begin
                    out = 1;
                    if (k == 0) begin
                        next_state = ON;
                    end else begin
                        next_state = OFF;
                    end 
                end
        endcase
                        
        
    end

    always @(posedge clk, posedge areset) begin
        // State flip-flops with asynchronous reset
        if (areset) begin
            state <= OFF;
        end else begin
            state <= next_state;
            
    end
    end

    // Output logic
    // assign out = (state == ...);

endmodule
