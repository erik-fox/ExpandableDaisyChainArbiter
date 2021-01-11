//Erik Fox
//1/8/2021
//Four bit arbiter Testbench

module top();
reg [0:3]r=0;//initialize input to 4'b0000
wire [0:3]g;
parameter SIMTIME=1000;//dictates length of simulation

Arbiter4 A0(r,g);//instantiate 4 bit arbiter
initial
begin
$display("R0 R1 R2 R3 G0 G1 G3 G3");
$monitor("%b  %b  %b  %b  %b  %b  %b  %b",r[0],r[1],r[2], r[3],g[0],g[1],g[2],g[3]);//monitors for changes in these variables then displays when changed
end
always
begin
#10
	r=$urandom();// assigns r a random number
end
always
begin
	#SIMTIME//runs for a set amount of time then stops
	$stop;
end

endmodule
