function plotREG(S,x,opis)
i=1;
    figure(i+5)
    subplot(3,2,1)
    indeks=find(not(isnan(S(i).t10(:,1))));
    ciplot(S(i).t10(indeks,1),S(i).t10(indeks,3),x(indeks),'c'); hold on; grid on;
    plot(x,S(i).t10(:,2),'r','linewidth',2);
    xlabel(opis);
    axis([x(1) x(end) 0 20])
%     title('Tr 10%')
    ylabel('Tr 10%[s]')
    legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
    
 
    subplot(3,2,2)
    indeks=find(not(isnan(S(i).t2(:,1))));
    ciplot(S(i).t2(indeks,1),S(i).t2(indeks,3),x(indeks),'c'); hold on;grid on;
    plot(x,S(i).t2(:,2),'r','linewidth',2);
    xlabel(opis);
%     title('Tr 2%')
    ylabel('Tr 2% [s]')
%     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
    axis([x(1) x(end) 0 20])
    
    subplot(3,2,3)
    indeks=find(not(isnan(S(i).H(:,1))));
    ciplot(S(i).H(indeks,1),S(i).H(indeks,3),x(indeks),'c'); hold on;grid on;
    plot(x,S(i).H(:,2),'r','linewidth',2);
    xlabel(opis);
%     title('Przeregulowanie')
    ylabel('Przeregulowanie [%]')
%     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
    axis([x(1) x(end) 0 40])
    
    subplot(3,2,4)
    indeks=find(not(isnan(S(i).es_proc(:,1))));
    ciplot(S(i).es_proc(indeks,1),S(i).es_proc(indeks,3),x(indeks),'c'); hold on;grid on;
    plot(x,S(i).es_proc(:,2),'r','linewidth',2);
    xlabel(opis);
%     title('Uchyb statyczny')
    ylabel('Uchyb statyczny [%]')
%     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
    axis([x(1) x(end) 0 10])
    
%     subplot(3,2,5)
%     indeks=find(not(isnan(S(i).estd(:,1))));
%     ciplot(S(i).estd(indeks,1),S(i).estd(indeks,3),x(indeks),'c'); hold on;grid on;
%     plot(x,S(i).estd(:,2),'r','linewidth',2);
%     xlabel(opis);
% %     title('sigma e')
%     ylabel('sigma e [-]')
% %     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
%     
%     subplot(3,2,6)
%     indeks=find(not(isnan(S(i).ustd(:,1))));
%     ciplot(S(i).ustd(indeks,1),S(i).ustd(indeks,3),x(indeks),'c'); hold on;grid on;
%     plot(x,S(i).ustd(:,2),'r','linewidth',2);
%     xlabel(opis);
% %     title('sigma u')
%     ylabel('sigma u [-]')
% %     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
    
    subplot(3,2,5)
    indeks=find(not(isnan(S(i).wsp_ed(:,1))));
    ciplot(S(i).wsp_ed(indeks,1),S(i).wsp_ed(indeks,3),x(indeks),'c'); hold on;grid on;
    plot(x,S(i).wsp_ed(:,2),'r','linewidth',2);
    xlabel(opis);
%     title('WraŸliwoœæ wyjœcia na zak³ócenie')
    ylabel('Ked[-]')
%     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
axis([x(1) x(end) 0 2])
    
    subplot(3,2,6)
    indeks=find(not(isnan(S(i).wsp_ud(:,1))));
    ciplot(S(i).wsp_ud(indeks,1),S(i).wsp_ud(indeks,3),x(indeks),'c'); hold on;grid on;
    plot(x,S(i).wsp_ud(:,2),'r','linewidth',2);
    xlabel(opis);
%     title('WraŸliwoœæ sterowania na zak³ócenie')
    ylabel('Kud[-]')
%     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
axis([x(1) x(end) 0 20])
    
    set(figure(i+5),'color',[1 1 1],'position',[100 100 700 650])
i=2;        
        figure(i+5)
    subplot(3,2,1)
    indeks=find(not(isnan(S(i).t10(:,1))));
    ciplot(S(i).t10(indeks,1),S(i).t10(indeks,3),x(indeks),'c'); hold on; grid on;
    plot(x,S(i).t10(:,2),'r','linewidth',2);
    xlabel(opis);
    axis([x(1) x(end) 0 20])
%     title('Tr 10%')
    ylabel('Tr 10%[s]')
    legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
    
 
    subplot(3,2,2)
    indeks=find(not(isnan(S(i).t2(:,1))));
    ciplot(S(i).t2(indeks,1),S(i).t2(indeks,3),x(indeks),'c'); hold on;grid on;
    plot(x,S(i).t2(:,2),'r','linewidth',2);
    xlabel(opis);
%     title('Tr 2%')
    ylabel('Tr 2% [s]')
%     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
    axis([x(1) x(end) 0 20])
    
    subplot(3,2,3)
    indeks=find(not(isnan(S(i).H(:,1))));
    ciplot(S(i).H(indeks,1),S(i).H(indeks,3),x(indeks),'c'); hold on;grid on;
    plot(x,S(i).H(:,2),'r','linewidth',2);
    xlabel(opis);
%     title('Przeregulowanie')
    ylabel('Przeregulowanie [%]')
%     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
    axis([x(1) x(end) 0 80])
    
    subplot(3,2,4)
    indeks=find(not(isnan(S(i).es_proc(:,1))));
    ciplot(S(i).es_proc(indeks,1),S(i).es_proc(indeks,3),x(indeks),'c'); hold on;grid on;
    plot(x,S(i).es_proc(:,2),'r','linewidth',2);
    xlabel(opis);
%     title('Uchyb statyczny')
    ylabel('Uchyb statyczny [%]')
%     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
    axis([x(1) x(end) 0 10])
    
%     subplot(3,2,5)
%     indeks=find(not(isnan(S(i).estd(:,1))));
%     ciplot(S(i).estd(indeks,1),S(i).estd(indeks,3),x(indeks),'c'); hold on;grid on;
%     plot(x,S(i).estd(:,2),'r','linewidth',2);
%     xlabel(opis);
% %     title('sigma e')
%     ylabel('sigma e [-]')
% %     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
%     
%     subplot(3,2,6)
%     indeks=find(not(isnan(S(i).ustd(:,1))));
%     ciplot(S(i).ustd(indeks,1),S(i).ustd(indeks,3),x(indeks),'c'); hold on;grid on;
%     plot(x,S(i).ustd(:,2),'r','linewidth',2);
%     xlabel(opis);
% %     title('sigma u')
%     ylabel('sigma u [-]')
% %     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
    
    subplot(3,2,5)
    indeks=find(not(isnan(S(i).wsp_ed(:,1))));
    ciplot(S(i).wsp_ed(indeks,1),S(i).wsp_ed(indeks,3),x(indeks),'c'); hold on;grid on;
    plot(x,S(i).wsp_ed(:,2),'r','linewidth',2);
    xlabel(opis);
%     title('WraŸliwoœæ wyjœcia na zak³ócenie')
    ylabel('Ked[-]')
%     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
axis([x(1) x(end) 0 2])
    
    subplot(3,2,6)
    indeks=find(not(isnan(S(i).wsp_ud(:,1))));
    ciplot(S(i).wsp_ud(indeks,1),S(i).wsp_ud(indeks,3),x(indeks),'c'); hold on;grid on;
    plot(x,S(i).wsp_ud(:,2),'r','linewidth',2);
    xlabel(opis);
%     title('WraŸliwoœæ sterowania na zak³ócenie')
    ylabel('Kud[-]')
%     legend([mat2str(S(i).alpha*100) '% interval'],'nominal')
axis([x(1) x(end) 0 20])
    
    set(figure(i+5),'color',[1 1 1],'position',[100 100 700 650])
    
    
    
    