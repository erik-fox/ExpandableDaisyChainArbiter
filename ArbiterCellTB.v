//Erik Fox
//1/7/2021
//ECE571 - HW1
//Test Bench for 1 bit slice of Arbiter
//Truth Table
//Cin R G Cout
//0   0 0 0
//0   1 0 0
//1   0 0 1
//1   1 1 0
module top;
reg r=0, cin=0;
wire g, cout;
parameter SIMTIME=100;

ArbiterCell A0(r,cin,g,cout);


initial
begin
$display("Cin R G Cout");
$monitor("%b   %b %b %b",cin, r, g, cout);
end

always
begin
#6;
{cin,r}=$urandom();
end

always
begin

	#SIMTIME
	$stop;
end

endmodule
