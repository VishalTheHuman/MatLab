%Not Gate
function [out_not]=Not1(X)
if X==1 % the input is 1, so output is 0 for Not Gate
    out_not=0;
elseif X==0
    out_not=1; % the input is 0, so output is 1 for Not Gate
end
end