%% 8 to 1 Mux using 2 to 1
function [out_mux8121] = Mux81(S0,S1,S2,D0,D1,D2,D3,D4,D5,D6,D7)
A=Mux21(S0,D0,D1);
B=Mux21(S0,D2,D3);
C=Mux21(S0,D4,D5);
D=Mux21(S0,D6,D7);

E=Mux21(S1,A,B);
F=Mux21(S1,C,D);

G=Mux21(S2,E,F);
[out_mux8121]=G;
end