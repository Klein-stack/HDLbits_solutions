//clock divider- divide by 2 counter

module clock_divide_by_2 (
    input D,
    input rst,
    input clk_in,
    output reg clk_out

);

always @(posedge clk_in or negedge rst) begin
   if (!rst) begin
        clk_out <= 0;
   end else begin
        clk_out <= !clk_in;
   end
end

endmodule

