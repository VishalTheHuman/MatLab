%% Mux 2 to 1
function [out_Mux_2_to_1] = HalfAdder(S0,D0,D1)
NotS0=Not1(S0);
K=And(NotS0,D0);
L=And(S0,D1);
M=Or1(K,L)
end
