//Erik Fox
//1/7/2021
//ECE571 - HW1
//Structural Description of single bit cell of arbiter

module ArbiterCell(r,cin,g,cout);
input r, cin;
output g, cout;
wire W0;//connects inverter to cout and gate

not N0(W0,r);//Inverter of request signal
and A0(g,cin,r);//And request signal and carry in for grant signal
and A1(cout,cin,W0);//and inverted request signal and carry in signal for carry out

endmodule

