//Erik Fox
//1/9/2021
//ECE571 - HW 1
//Test bench for Nbit Arbiter

module top();
parameter n=8;//parameter for setting the number of bits
parameter SIMTIME=10000;//sets length of simulation
reg [0:n-1]r=0;
wire [0:n-1]g;
reg [0:n]ubound;//value that is one greater than the upper bound of the r's that produce a certain g ie ubound =10 for r= 00 and r= 01
ArbiterN #(n) A0(r,g);
/*// uncomment to review input and outputs
initial
begin
$monitor("%b  -  %b",r,g);
end
*/
always
begin
#10
	ubound=g<<1;
	if( g==0)//if g is 0 check if r is also zero, if not error and end sim
	begin
		if(r)
		begin
		$display("Failure");
		$stop;
		end
	end
		
	else
	begin// check if r is less than the u bound and greater or equal to g. If not failure and stop simulation
		if(!(r<(ubound)&&r>=g))
		begin
			$display("Failure\n");
			$stop;
		end
	end
	r=$urandom();//Assign random value to r
end
always
begin
	#SIMTIME// run simulation for set time
	$display("No Error\n");//if simulation wasn't stopped previously. no error 
	$stop;//end sim
end
endmodule
