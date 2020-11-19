module b1_ demux _1_4_ case
(
	input din ,
	input [1:0] sel ,
	output reg dout 0,
	output reg dout 1,
	output reg dout 2,
	output reg dout 3
);
	always @ (*)
		case (sel)
		2’b 00:
		begin
			dout 0 = din ;
			dout 1 = 0;
			dout 2 = 0;
			dout 3 = 0;
		end
		2’b 01:
		begin
			dout 0 = 0;
			dout 1 = din ;
			dout 2 = 0;
			dout 3 = 0;
		end
		2’b 10:
		begin
			dout 0 = 0;
			dout 1 = 0;
			dout 2 = din ;
			dout 3 = 0;
		end
		2’b 11:
		begin
			dout 0 = 0;
			dout 1 = 0;
			dout 2 = 0;
			dout 3 = din ;
	end
	endcase
endmodule
