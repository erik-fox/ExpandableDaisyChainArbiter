//Erik Fox
//1/8/2021
//ECE571-HW 1
//Four Bit Arbiter, Behavioral model


module Arbiter4(r,g);
input [0:3]r;
output reg[0:3]g;
always @ (r)
begin
	if (r==0)
		g=4'b0000;
	else if(r<2)
		g=4'b0001;		
	else if (r<4)
		g=4'b0010;
	else if (r<8)
		g=4'b0100;
	else
		g=4'b1000;
end

endmodule
