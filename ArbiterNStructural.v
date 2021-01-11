//Erik Fox
//1/9/2021
//Scalable bit Arbiter

module ArbiterN(r,g);
parameter n=8;//sets default n value at 8
input [0:n-1]r;
output[0:n-1]g;
wire [0:n-1]w;//connects instances of Cell
genvar i;
generate//generates the correct number of instances
for(i=0; i <n; i=i+1)
begin:arbiter	
		if(i==0)
			ArbiterCell m (r[i], 1'b1, g[i],w[i]);//need to give first instance the carry in of 1
		else

			ArbiterCell m (r[i], w[i-1], g[i],w[i]);
end
endgenerate

endmodule
