function sigma=rmsC(t,x)
% function return sigma of continius proces (t,x)
sigma= trapz(t,(x.^2)  /(t(end)-t(1)));
end