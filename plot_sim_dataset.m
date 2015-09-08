 function plot_sim_dataset( logsout, Fig_Title, color) 
%  Created by Mateusz Stachnik 2015-07-20 18:03 
%  2015-07-20 18:05 Revision notes: R1 - first version of function
%  2015-08-06 22:31 Revision notes: R2 - Add Fig_Title s
% plot_sim_logout( logsout) makes plots for logs from simulink model
% to use this function you have to set in simulink:
% Simulation => Model Configuration Parameters
% open Data Import/Export
% match Signal loging and change Signal logging format to Dataset
% sigmals are ploted used TimeSeries.plot method
names = logsout.getElementNames;

if nargin < 3
    
    if nargin == 2
        set(figure,'color',[1 1 1],'name',Fig_Title,'numbertitle','off')
    else
        set(figure,'color',[1 1 1]);
    end

    N = length(names);
    Xlen = 2;
    Ylen = ceil(N / 2);

    for i = 1 : N;
        Log{i}=logsout.get( names{i} ); %#ok<AGROW>
        subplot(Ylen, Xlen, i)
        Log{i}.Values.plot('r'); grid on;
    end

else
    
    N = length(names);
    Xlen = 2;
    Ylen = ceil(N / 2);

    for i = 1 : N;
        Log{i}=logsout.get( names{i} ); %#ok<AGROW>
        subplot(Ylen, Xlen, i)
        hold on;
        Log{i}.Values.plot(color,'DisplayName', Fig_Title); grid on;
        hold off;
        legend('off')
        legend('-DynamicLegend')
    end    
    
    
end
    

