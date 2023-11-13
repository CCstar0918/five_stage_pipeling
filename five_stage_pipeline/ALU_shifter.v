module ALU_shifter(dataA, dataB, Signal, dataOut);
input dataA ;
input dataB ;
input Signal ;
output dataOut ;

assign dataOut = Signal?dataB:dataA ;

endmodule