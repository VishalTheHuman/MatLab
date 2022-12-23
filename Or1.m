%Or Gate
function [out_or]=Or1(X,Y)
if X+Y==2 % the inputs are 1 and 1, so output is 1 for Or Gate
    out_or=1;
elseif X+Y==1 % the inputs are 0 and 1 / 0 and 1, so output is 1 for Or Gate
    out_or=1;
else   % the inputs are 0 and 0, so output is 0 for Or Gate
    out_or=0;
end
end