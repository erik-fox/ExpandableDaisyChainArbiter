//Erik Fox
//1/9/2021
//ECE571 - HW 1
//Test bench for Nbit Arbiter

module top();
parameter n=8;
reg [0:n-1]r=0;
wire [0:n-1]g;
reg [0:n]test=1;
ArbiterN #(n) A0(r,g);
/*
initial
begin
$monitor("%b  -  %d",r,g);
end
*/
always
begin
#6
	test=g<<1;
	if( r==((1<<n)-1))
	begin
		$display("no error\n");
		$stop;
	end
	if( g!=0)
	begin
		if(!(r<(test)&&r>=g))
		begin
			$display("Failure\n");
			$stop;
		end
	end
	r=r+1;
end
endmodule
