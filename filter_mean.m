function Y = filter_mean(X,n)
% Y = filter_mean(X,n)
% Y = filter(ones(1, n) / n, [1 zeros(1, n - 1)], X);
%  Last Update 2015-03-09 23:6 Mateusz Stachnik
Y = filter(ones(1, n) / n, [1 zeros(1, n - 1)], X);
end