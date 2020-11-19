module ex1
(
   	 input      [31:0] rs, rt, 
	 input	    [4:0] shamt, 
	 input	    [5:0] funct,
		 output     [31:0] rd
);
	always@(funct or rs or rt or shamt) begin
		case(funct) 
			100000: begin
				assign rd = rs + rt
				end
			100010: begin
				assign rd = rs - rt
				end
			000010: begin
				assign rd = rt >> shampt
				end
			default: begin
				end
		endcase
	end
	
	
endmodule
