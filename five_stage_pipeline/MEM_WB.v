module MEM_WB( clk, rst, MEM_RegWrite_in, WB_RegWrite_out, MEM_MemtoReg_in, WB_MemtoReg_out, MEM_RD_in, WB_RD_out, 
				MEM_alu_out_in, WB_alu_out_out, MEM_rfile_wn_in, WB_rfile_wn_out ) ;
	input clk, rst ;
	
	input MEM_RegWrite_in, MEM_MemtoReg_in ;
	output WB_RegWrite_out, WB_MemtoReg_out ;
	input [4:0] MEM_rfile_wn_in ;
	output [4:0] WB_rfile_wn_out ;
	input [31:0] MEM_RD_in, MEM_alu_out_in ;
	output [31:0] WB_RD_out, WB_alu_out_out ;
	
	reg WB_RegWrite_out, WB_MemtoReg_out ;
	reg [4:0] WB_rfile_wn_out ;
	reg [31:0] WB_RD_out, WB_alu_out_out ;
	
	
	
	
	always @( posedge clk ) begin
		if ( rst ) begin
			WB_RegWrite_out <= 1'd0 ;
			WB_MemtoReg_out <= 1'd0 ;
			WB_RD_out <= 32'd0 ;
			WB_alu_out_out <= 32'd0 ;
			WB_rfile_wn_out <= 5'd0 ;
		end
		
		else begin
			WB_RegWrite_out <= MEM_RegWrite_in ;
			WB_MemtoReg_out <= MEM_MemtoReg_in ;
			WB_RD_out <= MEM_RD_in ;
			WB_alu_out_out <= MEM_alu_out_in ;
			WB_rfile_wn_out <= MEM_rfile_wn_in ;
		end
	end
						
endmodule

