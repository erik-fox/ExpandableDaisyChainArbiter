//Erik Fox
//1/7/2021
//ECE571 - HW1
//Structural Description of single bit cell of arbiter

module ArbiterCell(r,cin,g,cout);
input r, cin;
output g, cout;
wire W0;
//Gates needed AND x2 Not
not N0(W0,r);
and A0(g,cin,r);
and A1(cout,cin,W0);

endmodule

