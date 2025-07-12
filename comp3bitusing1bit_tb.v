`include "comp3bitusing1bit.v"
module tb;
reg [2:0]a,b;
wire gt,eq,lt;
comp3bitusing1bit dut(a,b,gt,eq,lt);
initial begin
repeat (10) begin
{a,b}=$random;
#5;
$monitor("a=%b,b=%b,gt=%b,eq=%b,lt=%b",a,b,gt,eq,lt);
end
end
endmodule
