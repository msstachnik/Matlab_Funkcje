function [H k]=przeregulowanie(x,y)
% H=przeregulowanie(x,y)
% H [%] x-setpoint y-output
if y(1)<x
    [H,k]=max((y-x)/x*100);   
elseif y(1)>x
    [H,k]=max((x-y)/x*100);   
else
    H=NaN;
    k=NaN;
end
if H<0
    H=0;
end
    