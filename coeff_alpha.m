function Y=coeff_alpha(X,alpha)
% function calculate the confidence interval and median from X vector 
% (size(X) = [1 n]) with alpha coeeficient
% Y=coeff_alpha(X,alpha)
% Y= X([1-alpha 0.5 alhpa]*length(X))
%  Last Update 2015-04-24 01:34 Mateusz Stachnik
SizeOfX = size(X);
if size(SizeOfX) <=2
    
    if SizeOfX(1) == 1 || SizeOfX(2) == 1
        N=2/(1-alpha);
        if  sum(not(isnan(X)))<N
            Y=[NaN NaN NaN];
        else
            X2=sort(X(not(isnan(X))));
            Y(1)=X2(round(length(X2)*(1-alpha)));
            Y(2)=X2(round(length(X2)*0.5));
            Y(3)=X2(round(length(X2)*alpha));
        end
    else
        error('input should be one dimension array');
    end

else
    error('To bigg size of array');
end
end

%  2015-04-24 01:36 Revision notes: added exception handling





