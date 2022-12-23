%Xor Gate
function [out_xor]=Xor10(X,Y)

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
if (X1*Y)==(X*Y1) % If inputs are 1 and 1, the output is 0 for Xor Gate
    out_xor=0;
else  % If inputs are other than 1 and 1, the output is 1 for Xor Gate
    out_xor=1;
end
end