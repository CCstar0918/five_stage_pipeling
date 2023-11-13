module Shifter( dataA, dataB, Signal, dataOut, reset);
input reset ;
input [31:0] dataA ;
input [31:0] dataB ;
input [2:0] Signal ;
output [31:0] dataOut ;
parameter SRL = 6'b000010;

wire [31:0] temp ;
wire [31:0] temp1;
wire [31:0] temp2;
wire [31:0] temp3;
wire [31:0] temp4;

ALU_shifter shifter001( .dataA(dataA[0]),  .dataB(dataA[1]),  .Signal( dataB[0]), .dataOut(temp[0])) ; 
ALU_shifter shifter002( .dataA(dataA[1]),  .dataB(dataA[2]),  .Signal( dataB[0]), .dataOut(temp[1])) ;
ALU_shifter shifter003( .dataA(dataA[2]),  .dataB(dataA[3]),  .Signal( dataB[0]), .dataOut(temp[2])) ;
ALU_shifter shifter004( .dataA(dataA[3]),  .dataB(dataA[4]),  .Signal( dataB[0]), .dataOut(temp[3])) ;
ALU_shifter shifter005( .dataA(dataA[4]),  .dataB(dataA[5]),  .Signal( dataB[0]), .dataOut(temp[4])) ;
ALU_shifter shifter006( .dataA(dataA[5]),  .dataB(dataA[6]),  .Signal( dataB[0]), .dataOut(temp[5])) ;
ALU_shifter shifter007( .dataA(dataA[6]),  .dataB(dataA[7]),  .Signal( dataB[0]), .dataOut(temp[6])) ;
ALU_shifter shifter008( .dataA(dataA[7]),  .dataB(dataA[8]),  .Signal( dataB[0]), .dataOut(temp[7])) ;
ALU_shifter shifter009( .dataA(dataA[8]),  .dataB(dataA[9]),  .Signal( dataB[0]), .dataOut(temp[8])) ;
ALU_shifter shifter010( .dataA(dataA[9]),  .dataB(dataA[10]), .Signal( dataB[0]), .dataOut(temp[9])) ;
ALU_shifter shifter011( .dataA(dataA[10]), .dataB(dataA[11]), .Signal( dataB[0]), .dataOut(temp[10])) ;
ALU_shifter shifter012( .dataA(dataA[11]), .dataB(dataA[12]), .Signal( dataB[0]), .dataOut(temp[11])) ;
ALU_shifter shifter013( .dataA(dataA[12]), .dataB(dataA[13]), .Signal( dataB[0]), .dataOut(temp[12])) ;
ALU_shifter shifter014( .dataA(dataA[13]), .dataB(dataA[14]), .Signal( dataB[0]), .dataOut(temp[13])) ;
ALU_shifter shifter015( .dataA(dataA[14]), .dataB(dataA[15]), .Signal( dataB[0]), .dataOut(temp[14])) ;
ALU_shifter shifter016( .dataA(dataA[15]), .dataB(dataA[16]), .Signal( dataB[0]), .dataOut(temp[15])) ;
ALU_shifter shifter017( .dataA(dataA[16]), .dataB(dataA[17]), .Signal( dataB[0]), .dataOut(temp[16])) ;
ALU_shifter shifter018( .dataA(dataA[17]), .dataB(dataA[18]), .Signal( dataB[0]), .dataOut(temp[17])) ;
ALU_shifter shifter019( .dataA(dataA[18]), .dataB(dataA[19]), .Signal( dataB[0]), .dataOut(temp[18])) ;
ALU_shifter shifter020( .dataA(dataA[19]), .dataB(dataA[20]), .Signal( dataB[0]), .dataOut(temp[19])) ;
ALU_shifter shifter021( .dataA(dataA[20]), .dataB(dataA[21]), .Signal( dataB[0]), .dataOut(temp[20])) ;
ALU_shifter shifter022( .dataA(dataA[21]), .dataB(dataA[22]), .Signal( dataB[0]), .dataOut(temp[21])) ;
ALU_shifter shifter023( .dataA(dataA[22]), .dataB(dataA[23]), .Signal( dataB[0]), .dataOut(temp[22])) ;
ALU_shifter shifter024( .dataA(dataA[23]), .dataB(dataA[24]), .Signal( dataB[0]), .dataOut(temp[23])) ;
ALU_shifter shifter025( .dataA(dataA[24]), .dataB(dataA[25]), .Signal( dataB[0]), .dataOut(temp[24])) ;
ALU_shifter shifter026( .dataA(dataA[25]), .dataB(dataA[26]), .Signal( dataB[0]), .dataOut(temp[25])) ;
ALU_shifter shifter027( .dataA(dataA[26]), .dataB(dataA[27]), .Signal( dataB[0]), .dataOut(temp[26])) ;
ALU_shifter shifter028( .dataA(dataA[27]), .dataB(dataA[28]), .Signal( dataB[0]), .dataOut(temp[27])) ;
ALU_shifter shifter029( .dataA(dataA[28]), .dataB(dataA[29]), .Signal( dataB[0]), .dataOut(temp[28])) ;
ALU_shifter shifter030( .dataA(dataA[29]), .dataB(dataA[30]), .Signal( dataB[0]), .dataOut(temp[29])) ;
ALU_shifter shifter031( .dataA(dataA[30]), .dataB(dataA[31]), .Signal( dataB[0]), .dataOut(temp[30])) ;
ALU_shifter shifter032( .dataA(dataA[31]), .dataB(1'b0),      .Signal( dataB[0]), .dataOut(temp[31])) ;
//********************************************* 2^0 ***************************************************
ALU_shifter shifter101( .dataA(temp[0]),  .dataB(temp[2]),  .Signal( dataB[1]), .dataOut(temp1[0])) ; 
ALU_shifter shifter102( .dataA(temp[1]),  .dataB(temp[3]),  .Signal( dataB[1]), .dataOut(temp1[1])) ;
ALU_shifter shifter103( .dataA(temp[2]),  .dataB(temp[4]),  .Signal( dataB[1]), .dataOut(temp1[2])) ;
ALU_shifter shifter104( .dataA(temp[3]),  .dataB(temp[5]),  .Signal( dataB[1]), .dataOut(temp1[3])) ;
ALU_shifter shifter105( .dataA(temp[4]),  .dataB(temp[6]),  .Signal( dataB[1]), .dataOut(temp1[4])) ;
ALU_shifter shifter106( .dataA(temp[5]),  .dataB(temp[7]),  .Signal( dataB[1]), .dataOut(temp1[5])) ;
ALU_shifter shifter107( .dataA(temp[6]),  .dataB(temp[8]),  .Signal( dataB[1]), .dataOut(temp1[6])) ;
ALU_shifter shifter108( .dataA(temp[7]),  .dataB(temp[9]),  .Signal( dataB[1]), .dataOut(temp1[7])) ;
ALU_shifter shifter109( .dataA(temp[8]),  .dataB(temp[10]), .Signal( dataB[1]), .dataOut(temp1[8])) ;
ALU_shifter shifter110( .dataA(temp[9]),  .dataB(temp[11]), .Signal( dataB[1]), .dataOut(temp1[9])) ;
ALU_shifter shifter111( .dataA(temp[10]), .dataB(temp[12]), .Signal( dataB[1]), .dataOut(temp1[10])) ;
ALU_shifter shifter112( .dataA(temp[11]), .dataB(temp[13]), .Signal( dataB[1]), .dataOut(temp1[11])) ;
ALU_shifter shifter113( .dataA(temp[12]), .dataB(temp[14]), .Signal( dataB[1]), .dataOut(temp1[12])) ;
ALU_shifter shifter114( .dataA(temp[13]), .dataB(temp[15]), .Signal( dataB[1]), .dataOut(temp1[13])) ;
ALU_shifter shifter115( .dataA(temp[14]), .dataB(temp[16]), .Signal( dataB[1]), .dataOut(temp1[14])) ;
ALU_shifter shifter116( .dataA(temp[15]), .dataB(temp[17]), .Signal( dataB[1]), .dataOut(temp1[15])) ;
ALU_shifter shifter117( .dataA(temp[16]), .dataB(temp[18]), .Signal( dataB[1]), .dataOut(temp1[16])) ;
ALU_shifter shifter118( .dataA(temp[17]), .dataB(temp[19]), .Signal( dataB[1]), .dataOut(temp1[17])) ;
ALU_shifter shifter119( .dataA(temp[18]), .dataB(temp[20]), .Signal( dataB[1]), .dataOut(temp1[18])) ;
ALU_shifter shifter120( .dataA(temp[19]), .dataB(temp[21]), .Signal( dataB[1]), .dataOut(temp1[19])) ;
ALU_shifter shifter121( .dataA(temp[20]), .dataB(temp[22]), .Signal( dataB[1]), .dataOut(temp1[20])) ;
ALU_shifter shifter122( .dataA(temp[21]), .dataB(temp[23]), .Signal( dataB[1]), .dataOut(temp1[21])) ;
ALU_shifter shifter123( .dataA(temp[22]), .dataB(temp[24]), .Signal( dataB[1]), .dataOut(temp1[22])) ;
ALU_shifter shifter124( .dataA(temp[23]), .dataB(temp[25]), .Signal( dataB[1]), .dataOut(temp1[23])) ;
ALU_shifter shifter125( .dataA(temp[24]), .dataB(temp[26]), .Signal( dataB[1]), .dataOut(temp1[24])) ;
ALU_shifter shifter126( .dataA(temp[25]), .dataB(temp[27]), .Signal( dataB[1]), .dataOut(temp1[25])) ;
ALU_shifter shifter127( .dataA(temp[26]), .dataB(temp[28]), .Signal( dataB[1]), .dataOut(temp1[26])) ;
ALU_shifter shifter128( .dataA(temp[27]), .dataB(temp[29]), .Signal( dataB[1]), .dataOut(temp1[27])) ;
ALU_shifter shifter129( .dataA(temp[28]), .dataB(temp[30]), .Signal( dataB[1]), .dataOut(temp1[28])) ;
ALU_shifter shifter130( .dataA(temp[29]), .dataB(temp[31]), .Signal( dataB[1]), .dataOut(temp1[29])) ;
ALU_shifter shifter131( .dataA(temp[30]), .dataB(1'b0),     .Signal( dataB[1]), .dataOut(temp1[30])) ;
ALU_shifter shifter132( .dataA(temp[31]), .dataB(1'b0),     .Signal( dataB[1]), .dataOut(temp1[31])) ;
//********************************************* 2^1 ***************************************************
ALU_shifter shifter201( .dataA(temp1[0]),  .dataB(temp1[4]),  .Signal( dataB[2]), .dataOut(temp2[0])) ; 
ALU_shifter shifter202( .dataA(temp1[1]),  .dataB(temp1[5]),  .Signal( dataB[2]), .dataOut(temp2[1])) ;
ALU_shifter shifter203( .dataA(temp1[2]),  .dataB(temp1[6]),  .Signal( dataB[2]), .dataOut(temp2[2])) ;
ALU_shifter shifter204( .dataA(temp1[3]),  .dataB(temp1[7]),  .Signal( dataB[2]), .dataOut(temp2[3])) ;
ALU_shifter shifter205( .dataA(temp1[4]),  .dataB(temp1[8]),  .Signal( dataB[2]), .dataOut(temp2[4])) ;
ALU_shifter shifter206( .dataA(temp1[5]),  .dataB(temp1[9]),  .Signal( dataB[2]), .dataOut(temp2[5])) ;
ALU_shifter shifter207( .dataA(temp1[6]),  .dataB(temp1[10]), .Signal( dataB[2]), .dataOut(temp2[6])) ;
ALU_shifter shifter208( .dataA(temp1[7]),  .dataB(temp1[11]), .Signal( dataB[2]), .dataOut(temp2[7])) ;
ALU_shifter shifter209( .dataA(temp1[8]),  .dataB(temp1[12]), .Signal( dataB[2]), .dataOut(temp2[8])) ;
ALU_shifter shifter210( .dataA(temp1[9]),  .dataB(temp1[13]), .Signal( dataB[2]), .dataOut(temp2[9])) ;
ALU_shifter shifter211( .dataA(temp1[10]), .dataB(temp1[14]), .Signal( dataB[2]), .dataOut(temp2[10])) ;
ALU_shifter shifter212( .dataA(temp1[11]), .dataB(temp1[15]), .Signal( dataB[2]), .dataOut(temp2[11])) ;
ALU_shifter shifter213( .dataA(temp1[12]), .dataB(temp1[16]), .Signal( dataB[2]), .dataOut(temp2[12])) ;
ALU_shifter shifter214( .dataA(temp1[13]), .dataB(temp1[17]), .Signal( dataB[2]), .dataOut(temp2[13])) ;
ALU_shifter shifter215( .dataA(temp1[14]), .dataB(temp1[18]), .Signal( dataB[2]), .dataOut(temp2[14])) ;
ALU_shifter shifter216( .dataA(temp1[15]), .dataB(temp1[19]), .Signal( dataB[2]), .dataOut(temp2[15])) ;
ALU_shifter shifter217( .dataA(temp1[16]), .dataB(temp1[20]), .Signal( dataB[2]), .dataOut(temp2[16])) ;
ALU_shifter shifter218( .dataA(temp1[17]), .dataB(temp1[21]), .Signal( dataB[2]), .dataOut(temp2[17])) ;
ALU_shifter shifter219( .dataA(temp1[18]), .dataB(temp1[22]), .Signal( dataB[2]), .dataOut(temp2[18])) ;
ALU_shifter shifter220( .dataA(temp1[19]), .dataB(temp1[23]), .Signal( dataB[2]), .dataOut(temp2[19])) ;
ALU_shifter shifter221( .dataA(temp1[20]), .dataB(temp1[24]), .Signal( dataB[2]), .dataOut(temp2[20])) ;
ALU_shifter shifter222( .dataA(temp1[21]), .dataB(temp1[25]), .Signal( dataB[2]), .dataOut(temp2[21])) ;
ALU_shifter shifter223( .dataA(temp1[22]), .dataB(temp1[26]), .Signal( dataB[2]), .dataOut(temp2[22])) ;
ALU_shifter shifter224( .dataA(temp1[23]), .dataB(temp1[27]), .Signal( dataB[2]), .dataOut(temp2[23])) ;
ALU_shifter shifter225( .dataA(temp1[24]), .dataB(temp1[28]), .Signal( dataB[2]), .dataOut(temp2[24])) ;
ALU_shifter shifter226( .dataA(temp1[25]), .dataB(temp1[29]), .Signal( dataB[2]), .dataOut(temp2[25])) ;
ALU_shifter shifter227( .dataA(temp1[26]), .dataB(temp1[30]), .Signal( dataB[2]), .dataOut(temp2[26])) ;
ALU_shifter shifter228( .dataA(temp1[27]), .dataB(temp1[31]), .Signal( dataB[2]), .dataOut(temp2[27])) ;
ALU_shifter shifter229( .dataA(temp1[28]), .dataB(1'b0),      .Signal( dataB[2]), .dataOut(temp2[28])) ;
ALU_shifter shifter230( .dataA(temp1[29]), .dataB(1'b0),      .Signal( dataB[2]), .dataOut(temp2[29])) ;
ALU_shifter shifter231( .dataA(temp1[30]), .dataB(1'b0),      .Signal( dataB[2]), .dataOut(temp2[30])) ;
ALU_shifter shifter232( .dataA(temp1[31]), .dataB(1'b0),      .Signal( dataB[2]), .dataOut(temp2[31])) ;
//********************************************* 2^2 ***************************************************
ALU_shifter shifter301( .dataA(temp2[0]),  .dataB(temp2[8]),  .Signal( dataB[3]), .dataOut(temp3[0])) ; 
ALU_shifter shifter302( .dataA(temp2[1]),  .dataB(temp2[9]),  .Signal( dataB[3]), .dataOut(temp3[1])) ;
ALU_shifter shifter303( .dataA(temp2[2]),  .dataB(temp2[10]), .Signal( dataB[3]), .dataOut(temp3[2])) ;
ALU_shifter shifter304( .dataA(temp2[3]),  .dataB(temp2[11]), .Signal( dataB[3]), .dataOut(temp3[3])) ;
ALU_shifter shifter305( .dataA(temp2[4]),  .dataB(temp2[12]), .Signal( dataB[3]), .dataOut(temp3[4])) ;
ALU_shifter shifter306( .dataA(temp2[5]),  .dataB(temp2[13]), .Signal( dataB[3]), .dataOut(temp3[5])) ;
ALU_shifter shifter307( .dataA(temp2[6]),  .dataB(temp2[14]), .Signal( dataB[3]), .dataOut(temp3[6])) ;
ALU_shifter shifter308( .dataA(temp2[7]),  .dataB(temp2[15]), .Signal( dataB[3]), .dataOut(temp3[7])) ;
ALU_shifter shifter309( .dataA(temp2[8]),  .dataB(temp2[16]), .Signal( dataB[3]), .dataOut(temp3[8])) ;
ALU_shifter shifter310( .dataA(temp2[9]),  .dataB(temp2[17]), .Signal( dataB[3]), .dataOut(temp3[9])) ;
ALU_shifter shifter311( .dataA(temp2[10]), .dataB(temp2[18]), .Signal( dataB[3]), .dataOut(temp3[10])) ;
ALU_shifter shifter312( .dataA(temp2[11]), .dataB(temp2[19]), .Signal( dataB[3]), .dataOut(temp3[11])) ;
ALU_shifter shifter313( .dataA(temp2[12]), .dataB(temp2[20]), .Signal( dataB[3]), .dataOut(temp3[12])) ;
ALU_shifter shifter314( .dataA(temp2[13]), .dataB(temp2[21]), .Signal( dataB[3]), .dataOut(temp3[13])) ;
ALU_shifter shifter315( .dataA(temp2[14]), .dataB(temp2[22]), .Signal( dataB[3]), .dataOut(temp3[14])) ;
ALU_shifter shifter316( .dataA(temp2[15]), .dataB(temp2[23]), .Signal( dataB[3]), .dataOut(temp3[15])) ;
ALU_shifter shifter317( .dataA(temp2[16]), .dataB(temp2[24]), .Signal( dataB[3]), .dataOut(temp3[16])) ;
ALU_shifter shifter318( .dataA(temp2[17]), .dataB(temp2[25]), .Signal( dataB[3]), .dataOut(temp3[17])) ;
ALU_shifter shifter319( .dataA(temp2[18]), .dataB(temp2[26]), .Signal( dataB[3]), .dataOut(temp3[18])) ;
ALU_shifter shifter320( .dataA(temp2[19]), .dataB(temp2[27]), .Signal( dataB[3]), .dataOut(temp3[19])) ;
ALU_shifter shifter321( .dataA(temp2[20]), .dataB(temp2[28]), .Signal( dataB[3]), .dataOut(temp3[20])) ;
ALU_shifter shifter322( .dataA(temp2[21]), .dataB(temp2[29]), .Signal( dataB[3]), .dataOut(temp3[21])) ;
ALU_shifter shifter323( .dataA(temp2[22]), .dataB(temp2[30]), .Signal( dataB[3]), .dataOut(temp3[22])) ;
ALU_shifter shifter324( .dataA(temp2[23]), .dataB(temp2[31]), .Signal( dataB[3]), .dataOut(temp3[23])) ;
ALU_shifter shifter325( .dataA(temp2[24]), .dataB(1'b0),      .Signal( dataB[3]), .dataOut(temp3[24])) ;
ALU_shifter shifter326( .dataA(temp2[25]), .dataB(1'b0),      .Signal( dataB[3]), .dataOut(temp3[25])) ;
ALU_shifter shifter327( .dataA(temp2[26]), .dataB(1'b0),      .Signal( dataB[3]), .dataOut(temp3[26])) ;
ALU_shifter shifter328( .dataA(temp2[27]), .dataB(1'b0),      .Signal( dataB[3]), .dataOut(temp3[27])) ;
ALU_shifter shifter329( .dataA(temp2[28]), .dataB(1'b0),      .Signal( dataB[3]), .dataOut(temp3[28])) ;
ALU_shifter shifter330( .dataA(temp2[29]), .dataB(1'b0),      .Signal( dataB[3]), .dataOut(temp3[29])) ;
ALU_shifter shifter331( .dataA(temp2[30]), .dataB(1'b0),      .Signal( dataB[3]), .dataOut(temp3[30])) ;
ALU_shifter shifter332( .dataA(temp2[31]), .dataB(1'b0),      .Signal( dataB[3]), .dataOut(temp3[31])) ;
//********************************************* 2^3 ***************************************************
ALU_shifter shifter401( .dataA(temp3[0]),  .dataB(temp3[16]), .Signal( dataB[4]), .dataOut(temp4[0])) ; 
ALU_shifter shifter402( .dataA(temp3[1]),  .dataB(temp3[17]), .Signal( dataB[4]), .dataOut(temp4[1])) ;
ALU_shifter shifter403( .dataA(temp3[2]),  .dataB(temp3[18]), .Signal( dataB[4]), .dataOut(temp4[2])) ;
ALU_shifter shifter404( .dataA(temp3[3]),  .dataB(temp3[19]), .Signal( dataB[4]), .dataOut(temp4[3])) ;
ALU_shifter shifter405( .dataA(temp3[4]),  .dataB(temp3[20]), .Signal( dataB[4]), .dataOut(temp4[4])) ;
ALU_shifter shifter406( .dataA(temp3[5]),  .dataB(temp3[21]), .Signal( dataB[4]), .dataOut(temp4[5])) ;
ALU_shifter shifter407( .dataA(temp3[6]),  .dataB(temp3[22]), .Signal( dataB[4]), .dataOut(temp4[6])) ;
ALU_shifter shifter408( .dataA(temp3[7]),  .dataB(temp3[23]), .Signal( dataB[4]), .dataOut(temp4[7])) ;
ALU_shifter shifter409( .dataA(temp3[8]),  .dataB(temp3[24]), .Signal( dataB[4]), .dataOut(temp4[8])) ;
ALU_shifter shifter410( .dataA(temp3[9]),  .dataB(temp3[25]), .Signal( dataB[4]), .dataOut(temp4[9])) ;
ALU_shifter shifter411( .dataA(temp3[10]), .dataB(temp3[26]), .Signal( dataB[4]), .dataOut(temp4[10])) ;
ALU_shifter shifter412( .dataA(temp3[11]), .dataB(temp3[27]), .Signal( dataB[4]), .dataOut(temp4[11])) ;
ALU_shifter shifter413( .dataA(temp3[12]), .dataB(temp3[28]), .Signal( dataB[4]), .dataOut(temp4[12])) ;
ALU_shifter shifter414( .dataA(temp3[13]), .dataB(temp3[29]), .Signal( dataB[4]), .dataOut(temp4[13])) ;
ALU_shifter shifter415( .dataA(temp3[14]), .dataB(temp3[20]), .Signal( dataB[4]), .dataOut(temp4[14])) ;
ALU_shifter shifter416( .dataA(temp3[15]), .dataB(temp3[31]), .Signal( dataB[4]), .dataOut(temp4[15])) ;
ALU_shifter shifter417( .dataA(temp3[16]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[16])) ;
ALU_shifter shifter418( .dataA(temp3[17]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[17])) ;
ALU_shifter shifter419( .dataA(temp3[18]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[18])) ;
ALU_shifter shifter420( .dataA(temp3[19]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[19])) ;
ALU_shifter shifter421( .dataA(temp3[20]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[20])) ;
ALU_shifter shifter422( .dataA(temp3[21]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[21])) ;
ALU_shifter shifter423( .dataA(temp3[22]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[22])) ;
ALU_shifter shifter424( .dataA(temp3[23]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[23])) ;
ALU_shifter shifter425( .dataA(temp3[24]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[24])) ;
ALU_shifter shifter426( .dataA(temp3[25]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[25])) ;
ALU_shifter shifter427( .dataA(temp3[26]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[26])) ;
ALU_shifter shifter428( .dataA(temp3[27]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[27])) ;
ALU_shifter shifter429( .dataA(temp3[28]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[28])) ;
ALU_shifter shifter430( .dataA(temp3[29]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[29])) ;
ALU_shifter shifter431( .dataA(temp3[30]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[30])) ;
ALU_shifter shifter432( .dataA(temp3[31]), .dataB(1'b0),      .Signal( dataB[4]), .dataOut(temp4[31])) ;
//********************************************* 2^4 ***************************************************
assign dataOut = (reset == 1)?32'b0:
				 (Signal == SRL)?temp4: 32'b0 ;





endmodule