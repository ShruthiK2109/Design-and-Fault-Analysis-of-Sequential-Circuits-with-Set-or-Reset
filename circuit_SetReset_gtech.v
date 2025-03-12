module circuit1_SetReset_gtech ( clk, x1, x2, x3, cd, sd, z ); 
input clk, x1, x2, x3, cd, sd;
output z; 
wire y1, c1;
GTECH_NOR3 G1 ( .A(x2), .B(x3), .C(y1), .Z(c1) );
GTECH_FD3 ff ( .D(c1), .CP(clk), .CD(cd), .SD(sd), .Q(y1) ); 
GTECH_OR2 G2 ( .A(c1), .B(x1), .Z(z) );
endmodule

