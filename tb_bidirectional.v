module tb_bidirectional();
wire a,b;
reg ctrl;
reg t1;
reg t2;

bidirectional tb(a,b,ctrl);

initial
begin
t1 = 1'b0;
t2 = 1'b1;
ctrl = 1'b0;
end

always #10 t1 = ~t1;
always #30 t2 = ~t2;
always #60 ctrl = ~ctrl;

assign a=(ctrl==1)?t1:1'bz;
assign b=(ctrl==0)?t2:1'bz;

initial 
begin
#1000;
$finish;
end
initial
$monitor ("values of a=%b,b=%b,ctrl=%b",a,b,ctrl);
endmodule
