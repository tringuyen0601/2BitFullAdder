

module circuit1 ;
	reg A1, B1, C1, D1,Xa,Ya;
    reg  A;
    reg  B;
	reg Cin,Cina;
	reg X0, X1,Y0,Y1;
	reg Y;
    wire S, Sum0, Sum1;
wire Cout,Couta;
	wire Za; 

   circuit1_structural u_add(A, B, Cin, S, Cout);
	adder_2bit adder_u (X0,X1,Y0,Y1, Cina, Sum0,Sum1, Couta);
	mux_4_1 mux_u (A1, B1, C1, D1,Xa,Ya,Za);
 initial begin
 	$dumpfile("circuit1.vcd");
 	$dumpvars;

	$display("\n===========  Simulation output begins =====\n");
$monitor(" MONITOR_1  At %0d ns A=1'h%h  B=1'h%h Cin=1'h%h  S=1'h%h  Cout=1'h%h", $time, A, B, Cin, S, Cout);
	#0 A = 1'h0;
	   B = 1'h0;
		Cin = 1'h0;	
	#5 A = 1'h0;
	   B = 1'h0;
	Cin = 1'h1;
	#5 A = 1'h0;
	   B = 1'h1;
	Cin = 1'h1;
	#5 A = 1'h0;
	   B = 1'h1;
	Cin = 1'h1;
	#5 A = 1'h1;
	   B = 1'h0;
	Cin = 1'h0;
	#5 A = 1'h1;
	   B = 1'h0;
	Cin = 1'h1;
	#5 A = 1'h1;
	   B = 1'h1;
	Cin = 1'h0;
	#5 A = 1'h1;
	   B = 1'h1;
	Cin = 1'h1;
	#5 A = 1'h1;
	   B = 1'h1;
	Cin = 1'h1;
	
$monitor(" MONITOR_2  At %0d ns A1=1'h%h B1=1'h%h C1=1'h%h  D1=1'h%h  control=2'h%h%h signal=1'b%h", $time, A1, B1, C1, D1,Ya,Xa,Za);
	#0 A1 = 1'h1;
	   B1 = 1'h0;
		C1 = 1'h0;
	D1=1'h0;
	Xa= 1'h0;
	Ya=1'h0;

	#5 A1 = 1'h0;
	   B1 = 1'h1;
		C1 = 1'h0;
	D1=1'h0;
	Xa= 1'h1;
	Ya=1'h0;

	#5 A1 = 1'h0;
	   B1 = 1'h0;
		C1 = 1'h1;
	D1=1'h0;
	Xa= 1'h0;
	Ya=1'h1;
#5 A1 = 1'h0;
	   B1 = 1'h0;
		C1 = 1'h0;
	D1=1'h1;
	Xa= 1'h1;
	Ya=1'h1;
#5 A1 = 1'h0;
	   B1 = 1'h0;
		C1 = 1'h0;
	D1=1'h1;
	Xa= 1'h1;
	Ya=1'h1;

$monitor("MONITOR_3 At %0d ns X=2'h%h%h Y=2'h%h%h Cina=1'h%h Sum=2'h%h%h  Couta=1'h%h", $time,X1,X0,Y1,Y0, Cina, Sum1,Sum0, Couta);
	#0 X1 = 1'h0;
	   X0 = 1'h0;
		Y1 = 1'h0;
	Y0 = 1'h0;
	Cina= 1'h0;
	
	#5 X1 = 1'h0;
	   X0 = 1'h0;
	Y1 = 1'h0;
	Y0 = 1'h0;
	Cina= 1'h1;

	#5 X1 = 1'h0;
	   X0 = 1'h0;
	Y1 = 1'h0;
	Y0 = 1'h1;
	Cina= 1'h1;

	#5 X1 = 1'h0;
	   X0 = 1'h0;
	Y1 = 1'h1;
	Y0 = 1'h0;
	Cina= 1'h0;

	#5 X1 = 1'h0;
	   X0 = 1'h0;
	Y1 = 1'h1;
	Y0 = 1'h0;
	Cina= 1'h1;
#5 X1 = 1'h0;
	   X0 = 1'h0;
	Y1 = 1'h1;
	Y0 = 1'h1;
	Cina= 1'h1;
#5 X1 = 1'h0;
	   X0 = 1'h1;
	Y1 = 1'h0;
	Y0 = 1'h0;
	Cina= 1'h0;

	#5 X1 = 1'h0;
	   X0 = 1'h1;
	Y1 = 1'h0;
	Y0 = 1'h0;
	Cina= 1'h1;

	#5 X1 = 1'h0;
	   X0 = 1'h1;
	Y1 = 1'h0;
	Y0 = 1'h1;
	Cina= 1'h1;

	#5 X1 = 1'h1;
	   X0 = 1'h1;
	Y1 = 1'h1;
	Y0 = 1'h1;
	Cina= 1'h1;


$display("\n===========  Simulation output ends     =====\n");
	$finish;
	end
endmodule

