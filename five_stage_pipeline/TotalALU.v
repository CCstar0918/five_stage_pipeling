module TotalALU( clk, dataA, dataB, Signal, Output, reset, zero, immediate, beq, ori );
input reset ;
input clk, beq, ori  ;
input [31:0] dataA ;
input [31:0] dataB ;
input [2:0] Signal ;
output [31:0] Output ;
output zero ;

input [15:0] immediate ;

wire [5:0] funct;
assign funct = immediate[5:0];

//   Signal ( 6-bits)?
//   AND  : 36
//   OR   : 37
//   ADD  : 32
//   SUB  : 34
//   SRL  : 2
//   SLT  : 42
//   DIVU : 27

wire [31:0] temp ;
/*
定義各種訊號
*/
//============================
wire [2:0]  SignaltoALU ;
wire [2:0]  SignaltoSHT ;
wire [5:0]  SignaltoDIV ;
wire [5:0]  SignaltoMUX ;
wire [31:0] ALUOut, HiOut, LoOut, ShifterOut ;
wire [31:0] dataOut ;
/*
定義各種接線
*/
//============================


//ALUControl ALUControl( .clk(clk), .Signal(Signal), .SignaltoALU(SignaltoALU), .SignaltoSHT(SignaltoSHT), .SignaltoDIV(SignaltoDIV), .SignaltoMUX(SignaltoMUX), .Dreset(Dreset));
ALU ALU( .dataA(dataA), .dataB(dataB), .Signal(Signal), .dataOut(ALUOut), .reset(reset), .zero(zero), .beq(beq) );
//Divider Divider( .clk(clk), .dataA(dataA), .dataB(dataB), .Signal(SignaltoDIV), .dataOut(DivAns), .reset(Dreset) );
//Shifter Shifter( .dataA(dataA), .dataB(dataB), .Signal(funct), .dataOut(ShifterOut), .reset(reset) );
//HiLo HiLo( .clk(clk), .DivAns(DivAns), .HiOut(HiOut), .LoOut(LoOut), .reset(reset) );
//MUX MUX( .ALUOut(ALUOut), .HiOut(HiOut), .LoOut(LoOut), .Shifter(ShifterOut), .Signal(SignaltoMUX), .dataOut(dataOut) );
/*
建立各種module
*/

assign Output = (ori == 1'b0 ) ? ALUOut : dataA | dataB ;

endmodule