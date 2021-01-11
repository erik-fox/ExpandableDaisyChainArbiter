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
module top();
reg r=0, cin=0;//initialize request and carry in
wire g, cout;//output signals
parameter SIMTIME=100;//set length of simulation

ArbiterCell A0(r,cin,g,cout);//instantiate cell


initial
begin
$display("Cin R G Cout");
$monitor("%b   %b %b %b",cin, r, g, cout);//monitors for changes to these varialbes and displays when changed
end

always
begin
#10;
{cin,r}=$urandom();//concatenate inputs and assign random number
end

always
begin

	#SIMTIME//run simulation for set time then stop
	$stop;
end

endmodule
