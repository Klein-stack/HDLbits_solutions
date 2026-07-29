//dividing clock by N

module clock_divider #(parameter N = 10) (
    input clk_in,
    input rst,
    output reg clk_out
);

reg [3:0] count;

always @(posedge clk_in or negedge rst) begin
    if (!rst) begin
        clk_out <= 0;
    end else if (count == N/2 - 1) begin
        clk_out <= !clk_in;
    end else begin
        count = count + 1; 
        

    end
end
endmodule