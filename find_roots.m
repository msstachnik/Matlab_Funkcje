function r=find_roots(x,y)
% function is linearly approximate roots of the equation from the vector 'x' and 'y'
% 
% r=find_roots(x,y)

indeks=find_zero(y);
r=find_zero2(x(indeks),x(indeks+1),y(indeks),y(indeks+1));
end
