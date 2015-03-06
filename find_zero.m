function indeks=find_zero(x)
% funkction find indeks from vector x when x is zero-crossing
% 
%indeks=find_zero(x)
% 
%example:
% x=[-1 -2 2 3 -1 2];
% indeks=find_zero(x);
% indeks =
% 
%      2     4     5

indeks=find(x(1:end-1).*x(2:end)<0);
end
