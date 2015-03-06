function sigma=stdC(t,x)
% function return sigma of continius proces (t,x)
sigma=sqrt(  trapz(t,(x-mean(x)).^2)  /(t(end)-t(1)) );
end