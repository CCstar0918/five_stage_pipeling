module bit_ALU(a, b, c, sel, inv, cout, sum);

    input a, b, c;
	input [2:0] sel ;
	input inv ;
    output cout, sum;
	wire b1 ;
    wire e1, e2, e3;
	wire sAND, sOR, sADD ;
	wire sCOUT ;

	parameter AND = 3'b000;
	parameter OR  = 3'b001;
	parameter ADD = 3'b010;
	parameter SUB = 3'b110;

	// AND
	and ( sAND, a, b ) ;
	// OR
	or ( sOR, a, b ) ;
	// 加減法
	xor (b1, b, inv) ;
    and (e1, a, b1);
    and (e2, a, c);
    and (e3, b1, c);
    or  (cout, e1,e2, e3);
    xor (sADD, a, b1, c);
	
	assign sum = (sel == AND) 	? sAND:
		     (sel == OR ) 	? sOR:
		     (sel == ADD ) 	? sADD:
		     (sel == SUB )	? sADD:
					  32'hzzzzzzzz;
						
endmodule

