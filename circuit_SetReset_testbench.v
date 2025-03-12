module circuit1_SetReset_tb(); 
reg x1,x2,x3,clk,cd,sd; 
wire z;
circuit1_SetReset uut(.clk(clk),.x1(x1),.x2(x2),.x3(x3),.cd(cd),.sd(sd),.z(z)); 
always #25 clk = ~clk;
initial begin
clk <= 0;
sd <= 0;
cd <= 1;
#10
x1 <= 0; x2 <= 0; x3 <= 0;
#100
cd <= 0;
#10
sd <= 1;
cd <= 0;
#10
x1 <= 0; x2 <= 0; x3 <=0;
#100
x1 <= 1; x2 <= 1; x3 <= 0;
#100
x1 <= 1; x2 <= 1; x3 <= 1;
#100
x1 <= 1; x2 <= 0; x3 <= 1;
#100
x1 <= 1; x2 <= 1; x3 <= 0;
#100
$finish;
end 
endmodule
config cf_circuit1_SetReset;
 design WORK.circuit1_SetReset_tb;
 default liblist WORK;
endconfig
