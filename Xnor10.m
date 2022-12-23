%Xnor Gate
function [out_xnor] = Xnor10(X,Y)
% Taking Complement for X Input
if X==1 % the input is 1, so output is 0 for Not Gate
    X1=0;
elseif X==0
    X1=1; % the input is 0, so output is 1 for Not Gate
end

% Taking Complement for Y Input
if Y==1 % the input is 1, so output is 0 for Not Gate
    Y1=0;
elseif Y==0
    Y1=1; % the input is 0, so output is 1 for Not Gate
end
% Main Code
X1=Not1(X); % Taking Complement for X input
Y1=Not1(Y); % Taking Complement for Y input
if (X1*Y)==(X*Y1) % If inputs are 1 and 1, the output is 1 for Xnor Gate
    out_xnor=1;
else 
    out_xnor=0; % If inputs are other than 1 and 1, the output is 0 for Xor Gate
end
end