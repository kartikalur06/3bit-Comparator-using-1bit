`include "comp1bit.v"
module comp3bitusing1bit(a,b,gt,eq,lt);
input [2:0]a,b;
output gt,eq,lt;
comp1bit u0(a[0],b[0],gt0,eq0,lt0);
comp1bit u1(a[1],b[1],gt1,eq1,lt1);
comp1bit u2(a[2],b[2],gt2,eq2,lt2);
assign gt= gt2 || (eq2 && gt1) || (eq2 && eq1 && gt0);
assign eq= eq2 && eq1 && eq0;
assign lt= lt2 || (eq2 && lt1) || (eq2 && eq1 && lt0);
endmodule
