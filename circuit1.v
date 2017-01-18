module circuit1_structural (A, B, Cin, S, Cout); //1 bit adder
	input A, B, Cin;
	output S, Cout;
	wire w,ab,w1;
	
	xor xor1(w,A,B);
	xor xor2(S,w,Cin);
	and and1(ab,A,B);
	and and2(w1,w,Cin);
	or or1(Cout,w1,ab);

endmodule

module mux_4_1 (A, B, C, D,X,Y,Z); //4:1 mux
	input A,B,C,D,X,Y;
	output Z;
	wire Xn,Yn, zero, one, two, three;
not n1(Xn,X);
not n2(Yn,Y);
and an1(zero,  A, Xn, Yn);
and an2(one,   B, X, Yn );
and an3(two,   C, Xn , Y);
and an4(three, D, X , Y );
or or1 (Z, zero, one, two, three);

endmodule



module adder_2bit (X0,X1,Y0,Y1, Cin, Sum0,Sum1, Cout); //2bit adder 
	input X0,X1,Y0,Y1, Cin;
	output Sum0,Sum1, Cout;
	wire Cout1, X1n,Y2n;
not n1(X1n,X1);
not n2(Y1n,Y1);
not n3(Cout1n,Cout1);

circuit1_structural a0 (X0, Y0, Cin, Sum0,     Cout1);
mux_4_1 a1 (Y1, Y1n, Y1n, Y1,Cout1,X1, Sum1);
mux_4_1 a2 (1'b0,   Y1, Y1,   1'b1,Cout1,X1, Cout);

endmodule






