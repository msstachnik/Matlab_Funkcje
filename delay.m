function Y=delay(X,n)
%function create delay matrix from vector X, from vector 'n',
%there there are delays of vector. length(n)=numbers of delays
% 
% X=delay(X,n)
% 
%  Last Update 2015-04-24 01:41 Mateusz Stachnik
SizeOfX= size(X);
if size(SizeOfX) <=2
    
    if SizeOfX(1) == 1 

        for i=1:length(n)
            X(i+1,:)=circshift(X(1,:),[0 n(i)]);
            X(i+1,1:n(i))=0; 
        end
        Y=X(2:end,:);
        
    elseif  SizeOfX(2) == 1
        
        X = X';
        for i=1:length(n)
            X(i+1,:)=circshift(X(1,:),[0 n(i)]);
            X(i+1,1:n(i))=0; 
        end
        X=X(2:end,:);
        Y = X';   
        
    else
        error('input should be one dimension array');
    end

else
    error('To bigg size of array');
end

end
%  2015-04-24 01:47 Revision notes: added exception handling and both
%  transposition handling
