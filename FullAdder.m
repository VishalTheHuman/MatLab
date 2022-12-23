%% Full Adder
function [out_sum,out_carry]=FullAdder(a,b,c)
%Half Adder
Carry1=And1(a,b);
Sum1=Xor10(a,b);
%Half Adder
Carry2=And1(c,Sum1);
Sum=Xor10(c,Sum1);
Carry= And1(Carry2,Carry1);
out_sum=Sum;
out_carry=Carry;
end

