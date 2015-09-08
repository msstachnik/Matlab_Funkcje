 function plot_sim_logout( logsout) 
%  Created by Mateusz Stachnik 2015-07-20 18:03 
%  2015-07-20 18:05 Revision notes: R1 - first version of function
% plot_sim_logout( logsout) makes plots for logs from simulink model
% to use this function you have to set in simulink:
% Simulation => Model Configuration Parameters
% open Data Import/Export
% match Signal loging and change Signal logging format to ModelDataLogs
% sigmals are ploted used TimeSeries.plot method
names = logsout.who;
set(figure,'color',[1 1 1]);
N = length(names);
Xlen = 2;
Ylen = ceil(N / 2);

for i = 1 : N;
    Log{i}=getfield(logsout, names{i}); %#ok<AGROW,GFLD>
    subplot(Ylen, Xlen, i)
    Log{i}.plot('r'); grid on;
end


