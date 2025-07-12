module comp1bit(a,b,gt,eq,lt);
input a,b;
output reg gt,eq,lt;
always @ (*) begin
gt=0;
eq=0;
lt=0;
if(a>b)gt=1;
if(a==b) eq=1;
if(a<b) lt=1;
end 
endmodule
