<<<<<<< HEAD
module ex2 (
	output [7:0] HEX0,
	output [7:0] HEX1,
	output [7:0] HEX2,
	output [7:0] HEX3,
	output [7:0] HEX4,
	output [7:0] HEX5,
	input [1:0] KEY
);
assign HEX0 = KEY[0] ? 8'b11111100 : 8'b00000000;
assign HEX1 = KEY[0] ? 8'b11100001 : 8'b00000000;
assign HEX2 = KEY[0] ? 8'b01100000 : 8'b00000000;
assign HEX3 = KEY[0] ? 8'b11111101 : 8'b00000000;
assign HEX4 = KEY[0] ? 8'b11111100 : 8'b00000000;
assign HEX5 = KEY[0] ? 8'b11011010 : 8'b00000000;

=======
module ex2 (
	output [7:0] HEX0,
	output [7:0] HEX1,
	output [7:0] HEX2,
	output [7:0] HEX3,
	output [7:0] HEX4,
	output [7:0] HEX5,
	input [1:0] KEY
);
assign HEX0 = KEY[0] ? 8'b11111100 : 8'b00000000;
assign HEX1 = KEY[0] ? 8'b11100001 : 8'b00000000;
assign HEX2 = KEY[0] ? 8'b01100000 : 8'b00000000;
assign HEX3 = KEY[0] ? 8'b11111101 : 8'b00000000;
assign HEX4 = KEY[0] ? 8'b11111100 : 8'b00000000;
assign HEX5 = KEY[0] ? 8'b11011010 : 8'b00000000;

>>>>>>> 4dcf63ba51e4d922f9c1cc83d9d3efef3a8f546f
endmodule