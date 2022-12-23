%Nand Gate
function [out_nand]=Nand1(X,Y)
if X+Y==2 % the inputs are 1 and 1, so output is 0 for Nand Gate
    out_nand=0;
else 
    out_nand=1; % the inputs are 0 and 1 / 1 and 0 / 0 and 0, so output is 1 for Nand Gate
end
end