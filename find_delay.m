function D=find_delay(y,indeks,treshold)
%D=find_delay(y,indeks,treshold)
%
% function returns vector of delays form y vector.
%delays of input signal is defined as indeks
%treshold define dirative level when delay is detected.
dY=diff(y);
for i=1:length(indeks)
    D(i)=find(abs(dY(indeks(i):end))>treshold,1);
end
end

