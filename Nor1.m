%Nor Gate
function [out_nor]=Nor1(X,Y)
if X+Y==2 % the inputs are 1 and 1, so output is 0 for Nor Gate
    out_nor=0;
elseif X+Y==1 % the inputs are 0 and 1 / 1 and 0, so output is 0 for Nand Gate
    out_nor=0;
else  % the inputs are 0 and 0, so output is 1 for Nand Gate
    out_nor=1;
end
end
