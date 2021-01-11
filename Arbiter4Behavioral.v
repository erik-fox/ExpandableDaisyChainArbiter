//Erik Fox
//1/8/2021
//Four Bit Arbiter, Behavioral model


module Arbiter4(r,g);
input [0:3]r;
output reg[0:3]g;
always @ (r)//Aways run when r changes
begin
	if (r==0)//when r is 0000 output 0000
		g=4'b0000;
	else if(r<2)//when r is less than 0010 output 0001
		g=4'b0001;		
	else if (r<4)//when r is less than 0100 output 0010
		g=4'b0010;
	else if (r<8)//when r is less than 1000 output 0100
		g=4'b0100;
	else// when r is 1000 or greater output 1000
		g=4'b1000;
end

endmodule
