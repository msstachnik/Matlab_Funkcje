function [S X]=stat_param(P,alpha)
% [S X]=stat_param(P,alpha) alhpa=0.9
%statistic parameter of P with aplha coeficient
for i=1:length(P)  % lenght of P
    for j=1:length(P(1).x)   %number of steps
        X(j).x=P(i).x(j);
        for k=1:length(P(1).tn(1,:)) %number of paramets
            X(j).tn(k,i)=P(i).tn(j,k);
            X(j).t10(k,i)=P(i).t10(j,k);
            X(j).t2(k,i)=P(i).t2(j,k);
            X(j).H(k,i)=P(i).H(j,k);
            X(j).es(k,i)=P(i).es(j,k);
            X(j).estd(k,i)=P(i).estd(j,k);
            X(j).ustd(k,i)=P(i).ustd(j,k);
            X(j).es_proc(k,i)=P(i).es_proc(j,k);
            X(j).wsp_ud(k,i)=P(i).wsp_ud(j,k);
            X(j).wsp_ed(k,i)=P(i).wsp_ed(j,k);

        end
    end
end

N=2/(1-alpha);  %minimalna liczba nie nanów
for i=1:length(X)    %number of steps
    for j=1:length(X(i).tn(:,1))  %number of paramets
       S(i).tn(j,:)=coeff_alpha(X(i).tn(j,:),alpha);
       S(i).t10(j,:)=coeff_alpha(X(i).t10(j,:),alpha);
       S(i).t2(j,:)=coeff_alpha(X(i).t2(j,:),alpha);
       S(i).H(j,:)=coeff_alpha(X(i).H(j,:),alpha);
       S(i).es(j,:)=coeff_alpha(X(i).es(j,:),alpha);
       S(i).estd(j,:)=coeff_alpha(X(i).estd(j,:),alpha);
       S(i).ustd(j,:)=coeff_alpha(X(i).ustd(j,:),alpha);
       S(i).es_proc(j,:)=coeff_alpha(X(i).es_proc(j,:),alpha);
       S(i).wsp_ud(j,:)=coeff_alpha(X(i).wsp_ud(j,:),alpha);
       S(i).wsp_ed(j,:)=coeff_alpha(X(i).wsp_ed(j,:),alpha);
    end
    S(i).alpha=alpha;
end

       
            
        
