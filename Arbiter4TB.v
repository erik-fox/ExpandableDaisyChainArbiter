//Erik Fox
//1/8/2021
//ECE571 - HW 1
//Four bit arbiter Testbench

module top;
reg [0:3]r=0;
wire [0:3]g;

Arbiter4 A0(r,g);
initial
begin
$display("G0 G1 G3 G3");
$monitor("%b %b %b %b",g[0],g[1],g[2],g[3]);
end
always
begin
#6;
if(r==15)
	$stop;
r=r+4'b0001;
end


endmodule
