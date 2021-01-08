//Erik Fox
//1/8/2021
//ECE571 - HW1
//Four bit Arbiter (hierarchical/structural)

module Arbiter4(r,g);
input [0:3]r;
output[0:3]g;
wire [0:2] c;
reg cout;
ArbiterCell C0(r[0],1'b1,g[0],c[0]);
ArbiterCell C1(r[1],c[0],g[1],c[1]);
ArbiterCell C2(r[2],c[1],g[2],c[2]);
ArbiterCell C3(r[3],c[2],g[3],cout);

endmodule
