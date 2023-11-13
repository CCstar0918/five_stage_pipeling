module EX_MEM( clk, rst, b_tgt_in, MEM_b_tgt_out, alu_out_in, MEM_alu_out_out, Zero_in, MEM_Zero_out, rfile_wn_in, MEM_rfile_wn_out, 
				EX_RD2_in, MEM_RD2_out, EX_RegWrite_in, MEM_RegWrite_out, EX_Branch_in, MEM_Branch_out, EX_MemtoReg_in, MEM_MemtoReg_out, 
				EX_MemRead_in, MEM_MemRead_out, EX_MemWrite_in, MEM_MemWrite_out, EX_Jump_in, MEM_Jump_out, EX_jumpaddr_in, MEM_jumpaddr_out ) ;
	input clk, rst ;
	
	input Zero_in, EX_RegWrite_in, EX_Branch_in, EX_MemtoReg_in, EX_MemRead_in, EX_MemWrite_in, EX_Jump_in ;
	output MEM_Zero_out, MEM_RegWrite_out, MEM_Branch_out, MEM_MemtoReg_out, MEM_MemRead_out, MEM_MemWrite_out, MEM_Jump_out ;
	
	input [4:0] rfile_wn_in ;
	output [4:0] MEM_rfile_wn_out ;
	
	input [31:0] b_tgt_in, alu_out_in, EX_RD2_in, EX_jumpaddr_in ;
	output [31:0] MEM_b_tgt_out, MEM_alu_out_out, MEM_RD2_out, MEM_jumpaddr_out ;
	
	reg MEM_Zero_out, MEM_RegWrite_out, MEM_Branch_out, MEM_MemtoReg_out, MEM_MemRead_out, MEM_MemWrite_out, MEM_Jump_out ;
	reg [4:0] MEM_rfile_wn_out ;
	reg [31:0] MEM_b_tgt_out, MEM_alu_out_out, MEM_RD2_out, MEM_jumpaddr_out ;
	
	
	
	
	always @( posedge clk ) begin
		if ( rst ) begin
			MEM_b_tgt_out <= 32'd0 ;
			MEM_alu_out_out <= 32'd0 ;
			MEM_Zero_out <= 1'd0 ;
			MEM_rfile_wn_out <= 5'd0 ;
			MEM_RD2_out <= 32'd0 ;
			MEM_RegWrite_out <= 1'd0 ;
			MEM_Branch_out <= 1'd0 ;
			MEM_MemtoReg_out <= 1'd0 ;
			MEM_MemRead_out <= 1'd0 ;
			MEM_MemWrite_out <= 1'd0 ;
			MEM_Jump_out <= 1'd0 ;
			MEM_jumpaddr_out <= 32'd0 ;
		end
		
		else begin
			MEM_b_tgt_out <= b_tgt_in ;
			MEM_alu_out_out <= alu_out_in ;
			MEM_Zero_out <= Zero_in ;
			MEM_rfile_wn_out <= rfile_wn_in ;
			MEM_RD2_out <= EX_RD2_in ;
			MEM_RegWrite_out <= EX_RegWrite_in ;
			MEM_Branch_out <= EX_Branch_in ;
			MEM_MemtoReg_out <= EX_MemtoReg_in ;
			MEM_MemRead_out <= EX_MemRead_in ;
			MEM_MemWrite_out <= EX_MemWrite_in ;
			MEM_Jump_out <= EX_Jump_in ;
			MEM_jumpaddr_out <= EX_jumpaddr_in ;
		end
	end
						
endmodule

