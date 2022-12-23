%% Half Adder
a=input("Enter the First input: ");
b=input("Enter the Second Input: ");
Carry=And1(a,b);
Sum=Xor10(a,b);
%% Full Adder
a=input("Enter the First input: ");
b=input("Enter the Second Input: ");
c=input("Enter the Carry: ");
%Half Adder
Carry1=And1(a,b);
Sum1=Xor10(a,b);
%Half Adder
Carry2=And1(c,Sum1);
Sum=Xor10(c,Sum1);

And1(Carry2,Carry1)
%%






















%And Gate
function [out_and]=And1(X,Y)
if X+Y==2 % the inputs are 1 and 1, so output is 1 for And Gate
    out_and=1;
else      % the inputs are other than 1 and 1, so output is 0 for And Gate
    out_and=0;
end
end
%Nand Gate
function [out_nand]=Nand1(X,Y)
if X+Y==2 % the inputs are 1 and 1, so output is 0 for Nand Gate
    out_nand=0;
else 
    out_nand=1; % the inputs are 0 and 1 / 1 and 0 / 0 and 0, so output is 1 for Nand Gate
end
end
%Nor Gate
function [out_nor]=Nor1(X,Y)
if X+Y==2 % the inputs are 1 and 1, so output is 0 for Nor Gate
    out_nor=0;
elseif X+Y==1 % the inputs are 0 and 1 / 1 and 0, so output is 0 for Nand Gate
    out_nor=0;
else  % the inputs are 0 and 0, so output is 1 for Nand Gate
    out_nor=1;%Not Gate
end
function [out_not]=Not1(X)
if X==1 % the input is 1, so output is 0 for Not Gate
    out_not=0;
elseif X==0
    out_not=1; % the input is 0, so output is 1 for Not Gate
end
end
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
end



