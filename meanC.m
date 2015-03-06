function sigma=meanC(t,x)
% function return sigma of continius proces (t,x)
sigma= trapz(t,(x)  /(t(end)-t(1)));
end