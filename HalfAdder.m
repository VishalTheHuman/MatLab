%% Half Adder
function [out_sum,out_carry]=HalfAdder(a,b)
Carry=And1(a,b);
Sum=Xor10(a,b);
out_sum=Sum;
out_carry=Carry;
end
