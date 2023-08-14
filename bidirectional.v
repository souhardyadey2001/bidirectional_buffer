module bidirectional ( a,b,ctrl);
inout a,b;
input ctrl;
bufif1(b,a,ctrl);
bufif1(a,b,ctrl);
endmodule
