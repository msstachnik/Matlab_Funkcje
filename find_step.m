function indeks=find_step(x,nstep)
%indeks=find_step(x,nstep)
%function find indeks of the same valve in vector x of length nstep
indeksA=find((x(1:end-nstep)-x(1+nstep:end))==0);
indeks=indeksA(1):indeksA(1)+nstep;
for i=2:length(indeksA)
    indeks=[indeks indeksA(i):indeksA(i)+nstep];
end
end
        
    

