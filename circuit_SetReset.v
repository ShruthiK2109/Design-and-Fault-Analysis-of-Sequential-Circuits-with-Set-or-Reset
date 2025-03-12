module circuit1_SetReset(clk,x1,x2,x3,cd,sd,z); 
input x1,x2,x3,clk,cd,sd; 
output z;
wire y1,c1,c2,y1flipflop;

GTECH_NOR3 G1(x2,x3,y1,c1);
GTECH_FD3 ff(c1,clk,cd,sd,y1,y1flipflop); 
GTECH_OR2 G2(c1,x1,z);
endmodule

