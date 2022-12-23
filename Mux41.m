%% 4 to 1 Mux using 2 to 1 Mux
function [out_4121] = Mux41(S0,S1,D0,D1,D2,D3)
A=Mux21(S0,D0,D1);
B=Mux21(S0,D2,D3);

C=Mux21(S1,A,B);
[out_4121]=C
end