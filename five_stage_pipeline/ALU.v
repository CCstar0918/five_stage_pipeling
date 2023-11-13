module ALU( Signal, dataA, dataB, dataOut, zero, reset, beq );

input reset, beq ;
input [31:0] dataA ; 
input [31:0] dataB ;
input [2:0] Signal ;
output [31:0] dataOut ;
output zero;



  wire [31:0] c ;
  wire [31:0] temp ;

  parameter SLT = 3'b111;
  
  bit_ALU	ALU0( .a(dataA[0]),  .b(dataB[0]),  .c(Signal[2]),  .sel(Signal), .inv(Signal[2]), .cout(c[0]),  .sum(temp[0])) ;
  bit_ALU	ALU1( .a(dataA[1]),  .b(dataB[1]),  .c(c[0]),   .sel(Signal), .inv(Signal[2]),   .cout(c[1]),  .sum(temp[1])) ;
  bit_ALU	ALU2( .a(dataA[2]),  .b(dataB[2]),  .c(c[1]),   .sel(Signal), .inv(Signal[2]),   .cout(c[2]),  .sum(temp[2])) ;
  bit_ALU	ALU3( .a(dataA[3]),  .b(dataB[3]),  .c(c[2]),   .sel(Signal), .inv(Signal[2]),   .cout(c[3]),  .sum(temp[3])) ;
  bit_ALU	ALU4( .a(dataA[4]),  .b(dataB[4]),  .c(c[3]),   .sel(Signal), .inv(Signal[2]),   .cout(c[4]),  .sum(temp[4])) ;
  bit_ALU	ALU5( .a(dataA[5]),  .b(dataB[5]),  .c(c[4]),   .sel(Signal), .inv(Signal[2]),   .cout(c[5]),  .sum(temp[5])) ;
  bit_ALU	ALU6( .a(dataA[6]),  .b(dataB[6]),  .c(c[5]),   .sel(Signal), .inv(Signal[2]),   .cout(c[6]),  .sum(temp[6])) ;
  bit_ALU	ALU7( .a(dataA[7]),  .b(dataB[7]),  .c(c[6]),   .sel(Signal), .inv(Signal[2]),   .cout(c[7]),  .sum(temp[7])) ;
  bit_ALU	ALU8( .a(dataA[8]),  .b(dataB[8]),  .c(c[7]),   .sel(Signal), .inv(Signal[2]),   .cout(c[8]),  .sum(temp[8])) ;
  bit_ALU	ALU9( .a(dataA[9]),  .b(dataB[9]),  .c(c[8]),   .sel(Signal), .inv(Signal[2]),   .cout(c[9]),  .sum(temp[9])) ;
  bit_ALU	ALU10(.a(dataA[10]), .b(dataB[10]), .c(c[9]),   .sel(Signal), .inv(Signal[2]),   .cout(c[10]), .sum(temp[10])) ;
  bit_ALU	ALU11(.a(dataA[11]), .b(dataB[11]), .c(c[10]),  .sel(Signal), .inv(Signal[2]),   .cout(c[11]), .sum(temp[11])) ;
  bit_ALU	ALU12(.a(dataA[12]), .b(dataB[12]), .c(c[11]),  .sel(Signal), .inv(Signal[2]),   .cout(c[12]), .sum(temp[12])) ;
  bit_ALU	ALU13(.a(dataA[13]), .b(dataB[13]), .c(c[12]),  .sel(Signal), .inv(Signal[2]),   .cout(c[13]), .sum(temp[13])) ;
  bit_ALU	ALU14(.a(dataA[14]), .b(dataB[14]), .c(c[13]),  .sel(Signal), .inv(Signal[2]),   .cout(c[14]), .sum(temp[14])) ;
  bit_ALU	ALU15(.a(dataA[15]), .b(dataB[15]), .c(c[14]),  .sel(Signal), .inv(Signal[2]),   .cout(c[15]), .sum(temp[15])) ;
  bit_ALU	ALU16(.a(dataA[16]), .b(dataB[16]), .c(c[15]),  .sel(Signal), .inv(Signal[2]),   .cout(c[16]), .sum(temp[16])) ;
  bit_ALU	ALU17(.a(dataA[17]), .b(dataB[17]), .c(c[16]),  .sel(Signal), .inv(Signal[2]),   .cout(c[17]), .sum(temp[17])) ;
  bit_ALU	ALU18(.a(dataA[18]), .b(dataB[18]), .c(c[17]),  .sel(Signal), .inv(Signal[2]),   .cout(c[18]), .sum(temp[18])) ;
  bit_ALU	ALU19(.a(dataA[19]), .b(dataB[19]), .c(c[18]),  .sel(Signal), .inv(Signal[2]),   .cout(c[19]), .sum(temp[19])) ;
  bit_ALU	ALU20(.a(dataA[20]), .b(dataB[20]), .c(c[19]),  .sel(Signal), .inv(Signal[2]),   .cout(c[20]), .sum(temp[20])) ;
  bit_ALU	ALU21(.a(dataA[21]), .b(dataB[21]), .c(c[20]),  .sel(Signal), .inv(Signal[2]),   .cout(c[21]), .sum(temp[21])) ;
  bit_ALU	ALU22(.a(dataA[22]), .b(dataB[22]), .c(c[21]),  .sel(Signal), .inv(Signal[2]),   .cout(c[22]), .sum(temp[22])) ;
  bit_ALU	ALU23(.a(dataA[23]), .b(dataB[23]), .c(c[22]),  .sel(Signal), .inv(Signal[2]),   .cout(c[23]), .sum(temp[23])) ;
  bit_ALU	ALU24(.a(dataA[24]), .b(dataB[24]), .c(c[23]),  .sel(Signal), .inv(Signal[2]),   .cout(c[24]), .sum(temp[24])) ;
  bit_ALU	ALU25(.a(dataA[25]), .b(dataB[25]), .c(c[24]),  .sel(Signal), .inv(Signal[2]),   .cout(c[25]), .sum(temp[25])) ;
  bit_ALU	ALU26(.a(dataA[26]), .b(dataB[26]), .c(c[25]),  .sel(Signal), .inv(Signal[2]),   .cout(c[26]), .sum(temp[26])) ;
  bit_ALU	ALU27(.a(dataA[27]), .b(dataB[27]), .c(c[26]),  .sel(Signal), .inv(Signal[2]),   .cout(c[27]), .sum(temp[27])) ;
  bit_ALU	ALU28(.a(dataA[28]), .b(dataB[28]), .c(c[27]),  .sel(Signal), .inv(Signal[2]),   .cout(c[28]), .sum(temp[28])) ;
  bit_ALU	ALU29(.a(dataA[29]), .b(dataB[29]), .c(c[28]),  .sel(Signal), .inv(Signal[2]),   .cout(c[29]), .sum(temp[29])) ;
  bit_ALU	ALU30(.a(dataA[30]), .b(dataB[30]), .c(c[29]),  .sel(Signal), .inv(Signal[2]),   .cout(c[30]), .sum(temp[30])) ;
  bit_ALU	ALU31(.a(dataA[31]), .b(dataB[31]), .c(c[30]),  .sel(Signal), .inv(Signal[2]),   .cout(c[31]), .sum(temp[31])) ;

  assign dataOut = (Signal == SLT) ? {30'b0, temp[31]}:
				     		  temp;

  assign zero = (dataOut == 32'd0 && beq == 1'b1 ) ? 1'b1 :
													 1'b0;
				  

endmodule


