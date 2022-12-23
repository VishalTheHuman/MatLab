%% Demux 14
function [a,b,c,d]=DeMux14(in,sel0,sel1)
Ns0=Not1(sel0);
Ns1=Not1(sel1);
a=And3(Ns0,Ns1,in);
b=And3(sel0,Ns1,in);
c=And3(Ns0,sel1,in);
d=And3(sel0,sel1,in);
end

