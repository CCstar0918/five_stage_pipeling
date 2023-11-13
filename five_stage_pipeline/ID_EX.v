module ID_EX(clk, rst, ID_pc_in, EX_pc_out, RD1, EX_RD1_out, RD2, EX_RD2_out, extend_immed_in, EX_extend_immed_out, jumpaddr_in, EX_jumpaddr_out,
				rt_in, EX_rt_out, rd_in, EX_rd_out, RegDst_in, EX_RegDst_out, ALUOp_in, EX_ALUOp_out, ALUSrc_in, EX_ALUSrc_out, MemtoReg_in, EX_MemtoReg_out,
				RegWrite_in, EX_RegWrite_out, MemRead_in, EX_MemRead_out, MemWrite_in, EX_MemWrite_out, Branch_in, EX_Branch_out, Jump_in, EX_Jump_out, 
				funct_in, EX_funct_out, beq_in, EX_beq_out, ori_in, EX_ori_out);
	input clk, rst ;
	input RegDst_in, ALUSrc_in, MemtoReg_in, RegWrite_in, MemRead_in, MemWrite_in, Branch_in, Jump_in, beq_in, ori_in ;
	output EX_RegDst_out, EX_ALUSrc_out, EX_MemtoReg_out, EX_RegWrite_out, EX_MemRead_out, EX_MemWrite_out, EX_Branch_out, EX_Jump_out, EX_beq_out, EX_ori_out ;
	input [1:0] ALUOp_in ;
	output [1:0] EX_ALUOp_out ;
	input [4:0] rt_in, rd_in;
	output [4:0] EX_rt_out, EX_rd_out ;
	input [5:0] funct_in ;
	output [5:0] EX_funct_out ;
	input [31:0] ID_pc_in, RD1, RD2, extend_immed_in, jumpaddr_in ;
	output [31:0] EX_pc_out, EX_RD1_out, EX_RD2_out, EX_extend_immed_out, EX_jumpaddr_out ;
	
	
	
	reg [31:0] EX_pc_out, EX_RD1_out, EX_RD2_out, EX_extend_immed_out, EX_jumpaddr_out ;
	reg [4:0] EX_rt_out, EX_rd_out ;
	reg [1:0] EX_ALUOp_out ;
	reg [5:0] EX_funct_out ;
	reg EX_RegDst_out, EX_ALUSrc_out, EX_MemtoReg_out, EX_RegWrite_out, EX_MemRead_out, EX_MemWrite_out, EX_Branch_out, EX_Jump_out, EX_beq_out, EX_ori_out ;
	
	always @( posedge clk ) begin
		if ( rst ) begin
			EX_pc_out <= 32'd0 ;
			EX_RD1_out <= 32'd0 ;
			EX_RD2_out <= 32'd0 ;
			EX_extend_immed_out <= 32'd0 ;
			EX_jumpaddr_out <= 32'd0 ;
			EX_rt_out <= 5'd0 ;
			EX_rd_out <= 5'd0 ;
			EX_RegDst_out <= 1'd0 ;
			EX_ALUOp_out <= 2'd0 ;
			EX_ALUSrc_out <= 1'd0 ;
			EX_MemtoReg_out <= 1'd0 ;
			EX_RegWrite_out <= 1'd0 ;
			EX_MemRead_out <= 1'd0 ;
			EX_MemWrite_out <= 1'd0 ;
			EX_Branch_out <= 1'd0 ;
			EX_Jump_out <= 1'd0 ;
			EX_funct_out <= 6'd0 ;
			EX_beq_out <= 1'd0 ;
			EX_ori_out <= 1'd0 ;
		end
		
		else begin
			EX_pc_out <= ID_pc_in ;
			EX_RD1_out <= RD1 ;
			EX_RD2_out <= RD2 ;
			EX_extend_immed_out <= extend_immed_in ;
			EX_jumpaddr_out <= jumpaddr_in ;
			EX_rt_out <= rt_in ;
			EX_rd_out <= rd_in ;
			EX_RegDst_out <= RegDst_in ;
			EX_ALUOp_out <= ALUOp_in ;
			EX_ALUSrc_out <= ALUSrc_in ;
			EX_MemtoReg_out <= MemtoReg_in ;
			EX_RegWrite_out <= RegWrite_in ;
			EX_MemRead_out <= MemRead_in ;
			EX_MemWrite_out <= MemWrite_in ;
			EX_Branch_out <= Branch_in ;
			EX_Jump_out <= Jump_in ;
			EX_funct_out <= funct_in ;
			EX_beq_out <= beq_in ;
			EX_ori_out <= ori_in ;
		end
	end
						
endmodule

