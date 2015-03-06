function dx=diff2(x)
% dx=diff2(x) differencial central dx(t)=x(t+1)-x(t-1);


a=size(x);

if a(1)>a(2)
    x=x';
end
x=[x(1) x x(end)];
dx=x(3:end)-x(1:end-2);
if a(1)>a(2)
    dx=dx';
end
end