//	Title: MIPS Single-Cycle Processor
//	Editor: Selene (Computer System and Architecture Lab, ICE, CYCU)
module mips_single( clk, rst );
	input clk, rst;
	
	// instruction bus
	wire[31:0] instr;
	
	// break out important fields from instruction
	wire [5:0] opcode, funct;
    wire [4:0] rs, rt, rd, shamt;
    wire [15:0] immed;
    wire [31:0] extend_immed, b_offset;
    wire [25:0] jumpoffset;
	
	// datapath signals
    wire [4:0] rfile_wn;
    wire [31:0] rfile_rd1, rfile_rd2, rfile_wd, alu_b, alu_out, b_tgt, pc_next,
                pc, pc_incr, dmem_rdata, jump_addr, branch_addr;

	// control signals
    wire RegWrite, Branch, PCSrc, RegDst, MemtoReg, MemRead, MemWrite, ALUSrc, Zero, Jump, beq, ori;
    wire [1:0] ALUOp;
    wire [2:0] Operation;
	
	// pipeline signals
	// ID OUT wire
	wire [31:0] ID_pc_out, ID_instr_out;
	// EX OUT wire
	wire [31:0] EX_pc_out, EX_RD1_out, EX_RD2_out, EX_extend_immed_out, EX_jumpaddr_out ;
	wire [4:0] EX_rt_out, EX_rd_out ;
	wire [1:0] EX_ALUOp_out ;
	wire [5:0] EX_funct_out ;
	wire EX_RegDst_out, EX_ALUSrc_out, EX_MemtoReg_out, EX_RegWrite_out, EX_MemRead_out, EX_MemWrite_out, EX_Branch_out, EX_Jump_out ;
	// MEM OUT wire
	wire [31:0] MEM_b_tgt_out, MEM_alu_out_out, MEM_RD2_out, MEM_jumpaddr_out ;
	wire [4:0] MEM_rfile_wn_out ;
	wire MEM_Zero_out, MEM_RegWrite_out, MEM_Branch_out, MEM_MemtoReg_out, MEM_MemRead_out, MEM_MemWrite_out, MEM_Jump_out, EX_beq_out, EX_ori_out ;
	// WB  OUT wire
	wire WB_RegWrite_out, WB_MemtoReg_out ;
	wire [31:0] WB_RD_out, WB_alu_out_out ;
	wire [4:0] WB_rfile_wn_out ;
	
    assign opcode = ID_instr_out[31:26];
    assign rs = ID_instr_out[25:21];
    assign rt = ID_instr_out[20:16];
    assign rd = ID_instr_out[15:11];
    assign shamt = ID_instr_out[10:6];
    assign funct = ID_instr_out[5:0];
    assign immed = ID_instr_out[15:0];
    assign jumpoffset = ID_instr_out[25:0];
	
	// module instantiations
	
	reg32 PC( .clk(clk), .rst(rst), .en_reg(1'b1), .d_in(pc_next), .d_out(pc) );
	add32 PCADD( .a(pc), .b(32'd4), .result(pc_incr) );
	memory InstrMem( .clk(clk), .MemRead(1'b1), .MemWrite(1'b0), .wd(32'd0), .addr(pc), .rd(instr) );
	IF_ID if_id( .clk(clk), .rst(rst), .pc_in(pc_incr), .pc_out(ID_pc_out), .instr_in(instr), .instr_out(ID_instr_out) ) ;
	// *****************************************************************************************************************************
	
	// jump offset shifter & concatenation
	assign jump_addr = { ID_pc_out[31:28], jumpoffset <<2 };
	control_single CTL(.opcode(opcode), .RegDst(RegDst), .ALUSrc(ALUSrc), .MemtoReg(MemtoReg), 
                       .RegWrite(RegWrite), .MemRead(MemRead), .MemWrite(MemWrite), .Branch(Branch), 
                       .Jump(Jump), .ALUOp(ALUOp), .beq(beq), .ori(ori));
					   
	reg_file RegFile( .clk(clk), .RegWrite(WB_RegWrite_out), .RN1(rs), .RN2(rt), .WN(WB_rfile_wn_out), 
					  .WD(rfile_wd), .RD1(rfile_rd1), .RD2(rfile_rd2) );
	
	// sign-extender
	sign_extend SignExt( .immed_in(immed), .ext_immed_out(extend_immed) );
	
	ID_EX id_ex( .clk(clk), .rst(rst), .ID_pc_in(ID_pc_out), .EX_pc_out(EX_pc_out), .RD1(rfile_rd1), .EX_RD1_out(EX_RD1_out), .RD2(rfile_rd2), .EX_RD2_out(EX_RD2_out),
					.extend_immed_in(extend_immed), .EX_extend_immed_out(EX_extend_immed_out), .jumpaddr_in(jump_addr), .EX_jumpaddr_out(EX_jumpaddr_out), 
					.rt_in(rt), .EX_rt_out(EX_rt_out), .rd_in(rd), .EX_rd_out(EX_rd_out), .RegDst_in(RegDst), .EX_RegDst_out(EX_RegDst_out), 
					.ALUOp_in(ALUOp), .EX_ALUOp_out(EX_ALUOp_out), .ALUSrc_in(ALUSrc), .EX_ALUSrc_out(EX_ALUSrc_out), .MemtoReg_in(MemtoReg), .EX_MemtoReg_out(EX_MemtoReg_out),
					.RegWrite_in(RegWrite), .EX_RegWrite_out(EX_RegWrite_out), .MemRead_in(MemRead), .EX_MemRead_out(EX_MemRead_out), .MemWrite_in(MemWrite), 
					.EX_MemWrite_out(EX_MemWrite_out), .Branch_in(Branch), .EX_Branch_out(EX_Branch_out), .Jump_in(Jump), .EX_Jump_out(EX_Jump_out),
					.funct_in(funct), .EX_funct_out(EX_funct_out), .beq_in(beq), .EX_beq_out(EX_beq_out), .ori_in(ori), .EX_ori_out(EX_ori_out)) ;
	//*********************************************************************************************************************************
	
	
	// branch offset shifter
    assign b_offset = EX_extend_immed_out << 2;
    add32 BRADD( .a(pc_incr), .b(b_offset), .result(b_tgt) );
	
	alu_ctl ALUCTL( .ALUOp(EX_ALUOp_out), .Funct(EX_funct_out), .ALUOperation(Operation) );
	mux2 #(32) ALUMUX( .sel(EX_ALUSrc_out), .a(EX_RD2_out), .b(EX_extend_immed_out), .y(alu_b) );
	TotalALU TotalALU(.clk(clk), .dataA(EX_RD1_out), .dataB(alu_b), .Signal(Operation), .Output(alu_out), .reset(rst),.immediate(EX_extend_immed_out[15:0]), .zero(Zero), .beq(EX_beq_out), .ori(EX_ori_out) ) ;
	
	mux2 #(5) RFMUX( .sel(EX_RegDst_out), .a(EX_rt_out), .b(EX_rd_out), .y(rfile_wn) );


	EX_MEM ex_mem( .clk(clk), .rst(rst), .b_tgt_in(b_tgt), .MEM_b_tgt_out(MEM_b_tgt_out), .alu_out_in(alu_out), .MEM_alu_out_out(MEM_alu_out_out), .Zero_in(Zero), 
				   .MEM_Zero_out(MEM_Zero_out), .rfile_wn_in(rfile_wn), .MEM_rfile_wn_out(MEM_rfile_wn_out), .EX_RD2_in(EX_RD2_out), .MEM_RD2_out(MEM_RD2_out), 
				   .EX_RegWrite_in(EX_RegWrite_out), .MEM_RegWrite_out(MEM_RegWrite_out), .EX_Branch_in(EX_Branch_out), .MEM_Branch_out(MEM_Branch_out), 
				   .EX_MemtoReg_in(EX_MemtoReg_out), .MEM_MemtoReg_out(MEM_MemtoReg_out), .EX_MemRead_in(EX_MemRead_out), .MEM_MemRead_out(MEM_MemRead_out), 
				   .EX_MemWrite_in(EX_MemWrite_out), .MEM_MemWrite_out(MEM_MemWrite_out), .EX_Jump_in(EX_Jump_out), .MEM_Jump_out(MEM_Jump_out), 
				   .EX_jumpaddr_in(EX_jumpaddr_out), .MEM_jumpaddr_out(MEM_jumpaddr_out) ) ;
				   
	//*********************************************************************************************************************************
	mux2 #(32) PCMUX( .sel(PCSrc), .a(pc_incr), .b(MEM_b_tgt_out), .y(branch_addr) );
	mux2 #(32) JMUX( .sel(MEM_Jump_out), .a(branch_addr), .b(MEM_jumpaddr_out), .y(pc_next) );
	
	and BR_AND(PCSrc, MEM_Branch_out, MEM_Zero_out);
	
	
	memory DatMem( .clk(clk), .MemRead(MEM_MemRead_out), .MemWrite(MEM_MemWrite_out), .wd(rfile_rd2), 
				   .addr(MEM_alu_out_out), .rd(dmem_rdata) );
	MEM_WB mem_wb( .clk(clk), .rst(rst), .MEM_RegWrite_in(MEM_RegWrite_out), .WB_RegWrite_out(WB_RegWrite_out), .MEM_MemtoReg_in(MEM_MemtoReg_out), .WB_MemtoReg_out(WB_MemtoReg_out), 
				   .MEM_RD_in(dmem_rdata), .WB_RD_out(WB_RD_out), .MEM_alu_out_in(MEM_alu_out_out), .WB_alu_out_out(WB_alu_out_out), .MEM_rfile_wn_in(MEM_rfile_wn_out), 
				   .WB_rfile_wn_out(WB_rfile_wn_out)) ;
	
	//*********************************************************************************************************************************
	
	mux2 #(32) WRMUX( .sel(WB_MemtoReg_out), .a(WB_alu_out_out), .b(WB_RD_out), .y(rfile_wd) );
    				   
endmodule
