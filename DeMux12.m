%% DeMux 12
function [a,b]= DeMux12(in,sel)
Notsel=Not1(sel);
a=And1(Notsel,in);
b=And1(sel,in);
end
