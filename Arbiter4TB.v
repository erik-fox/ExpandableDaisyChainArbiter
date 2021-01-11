//Erik Fox
//1/8/2021
//ECE571 - HW 1
//Four bit arbiter Testbench

module top;
reg [0:3]r=0;
wire [0:3]g;
parameter SIMTIME=1000;

Arbiter4 A0(r,g);
initial
begin
$display("R0 R1 R2 R3 G0 G1 G3 G3");
$monitor("%b  %b  %b  %b  %b  %b  %b  %b",r[0],r[1],r[2], r[3],g[0],g[1],g[2],g[3]);
end
always
begin
#6
	r=$urandom();
end
always
begin
	#SIMTIME
	$stop;
end

endmodule
