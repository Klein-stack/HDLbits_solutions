//When you have multiple assign statements, 
//the order in which they appear in the code does not matter.
// Unlike a programming language, assign statements ("continuous assignments") describe connections between things, 
//not the action of copying a value from one thing to another.

//Create a module with 3 inputs and 4 outputs that behaves like wires that makes these connections:

/*a -> w
b -> x
b -> y
c -> z*/

module top {
    input a,b,c,
    output w,x,y,z
};

assign w = a;
assign x = b;
assign y = b;
assign z = c;

endmodule
