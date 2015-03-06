function Y=coeff_alpha(X,alpha)
%Y=coeff_alpha(X,alpha)
%Y= X([1-alpha 0.5 alhpa]*length(X))
N=2/(1-alpha);
if  sum(not(isnan(X)))<N
    Y=[NaN NaN NaN];
else
    X2=sort(X(not(isnan(X))));
    Y(1)=X2(round(length(X2)*(1-alpha)));
    Y(2)=X2(round(length(X2)*0.5));
    Y(3)=X2(round(length(X2)*alpha));
end

