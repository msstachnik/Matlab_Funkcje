function [P P2]=Reg_param2(X)
% Y=Reg_param(X)
% function caclculete regulation parameters from timeseries X
% t=X.time;
% x=X.signals(1).values;
% y=X.signals(2).values;
% u=X.signals(3).values;

t=X.time;
x=X.signals(1).values;
y=X.signals(2).values;
u=X.signals(3).values;


tstep=t(diff(x(:,1))~=0);
tstep(diff(tstep)<1e-2)=[];
tstep(length(tstep)+1)=t(end);
for i=1:length(tstep)-1
    ind1=find(t==tstep(i))+1;
    ind2=find(t==tstep(i+1));
    P.x(i)=x(ind1); % wartoœæ zadana
    y1=y(ind1:ind2,:);
    u1=u(ind1:ind2,:);
    t1=t(ind1:ind2)-t(ind1);
    for j=1:length(y(1,:))
        Tn(i,j)=min([min(t1 (abs (y1(:,j)-P.x(i)) <0.05*P.x(i) ) ) inf]);
        H(i,j)=przeregulowanie(P.x(i),y1(:,j));
        ind3=max([find(Tn(i,j)==t1) NaN]); 
        if 3*ind3>ind2-ind1 || isnan(ind3)
            OSC(i,j)=NaN;
             tr(i,j)=t1(find(abs(y1(:,j)-P.x(i)) >0.05*P.x(i),1,'last'));
        else
            y2=y1(3*ind3:end,:);
            OSC(i,j)=max(abs(y2(:,j)-P.x(i)));
            tr(i,j)=min([t1(find(abs(y1(:,j)-P.x(i)) >OSC(i,j),1,'last')) inf]);
        end
    end

end
P.tn=max(Tn);
P.H=max(H);
P.osc=max(OSC)*1000;
P.tr=max(tr);
tr=sort(tr);
Tn=sort(Tn);
H=sort(H);
OSC=sort(OSC);
n=max([round(length(tr)*0.9) 1]);
n2=max([round(length(tr)*0.8) 1]);

P2.tr=tr(n2);
P2.tn=Tn(n);
P2.H=H(n);
OSC=OSC(not(isnan(OSC)));
n2=max([round(length(OSC)*0.9) 1]);
if isempty(OSC)==1
    P2.osc=NaN;
else
    P2.osc=OSC(n2)*1000;
end
    


end