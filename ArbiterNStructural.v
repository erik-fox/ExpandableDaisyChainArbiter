//Erik Fox
//1/9/2021
//ECE571 - HW 1
//Scalable bit Arbiter

module ArbiterN(r,g);
parameter n=8;
input [0:n-1]r;
output[0:n-1]g;
wire [0:n-1]w;
genvar i;
generate
for(i=0; i <n; i=i+1)
begin:arbiter	
		if(i==0)
			ArbiterCell m (r[i], 1'b1, g[i],w[i]);
		else

			ArbiterCell m (r[i], w[i-1], g[i],w[i]);
end
endgenerate

endmodule
