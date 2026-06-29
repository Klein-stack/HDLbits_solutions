/*Build a combinational circuit that splits an input half-word (16 bits, [15:0] ) into lower [7:0] and upper [15:8] bytes.*/

`default_nettype none

module top (
    input wire [15:0] in,
    output wire [7:0] out_1,
    output wire [7:0] out_2
);

assign out_1 = in[15:8];
assign out_2 = in[7:0];

endmodule