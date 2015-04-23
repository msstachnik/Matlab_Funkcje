function dx=diff2(x)
% dx=diff2(x) differencial central dx(t)=x(t+1)-x(t-1);
%  Last Update 2015-04-24 01:51 Mateusz Stachnik

SizeOfX= size(X);
if size(SizeOfX) <=2
    
    if SizeOfX(1) == 1 
        
        x=[x(1) x x(end)];
        dx=x(3:end)-x(1:end-2);
        
    elseif  SizeOfX(2) == 1
        
        x=x';
        dx=x(3:end)-x(1:end-2);
        dx=dx';
        
    else
        
        error('input should be one dimension array');
        
    end
    
else
    error('To bigg size of array');
end




end
%  2015-04-24 01:51 Revision notes: added exception handling