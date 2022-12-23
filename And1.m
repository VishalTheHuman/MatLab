%And Gate
function [out_and]=And1(X,Y)
if X+Y==2 % the inputs are 1 and 1, so output is 1 for And Gate
    out_and=1;
else      % the inputs are other than 1 and 1, so output is 0 for And Gate
    out_and=0;
end
end
