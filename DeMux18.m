%% DeMux18
function [d0,d1,d2,d3,d4,d5,d6,d7]=DeMux18(in,s0,s1,s2)
[a,b]=DeMux12(in,s2);
[d0,d1,d2,d3]=DeMux14(a,s1,s0);
[d4,d5,d6,d7]=DeMux14(b,s1,s0);
end