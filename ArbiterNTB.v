//Erik Fox
//1/9/2021
//ECE571 - HW 1
//Test bench for Nbit Arbiter

module top();
parameter n=8;
parameter SIMTIME=10000;
reg [0:n-1]r=0;
wire [0:n-1]g;
reg [0:n]ubound;
ArbiterN #(n) A0(r,g);
/*
initial
begin
$monitor("%b  -  %b",r,g);
end
*/
always
begin
#10
	ubound=g<<1;
	if( g==0)
	begin
		if(r)
		begin
		$display("Failure");
		$stop;
		end
	end
		
	else
	begin
		if(!(r<(ubound)&&r>=g))
		begin
			$display("Failure\n");
			$stop;
		end
	end
	r=$urandom();
end
always
begin
	#SIMTIME
	$display("No Error\n");
	$stop;
end
endmodule
