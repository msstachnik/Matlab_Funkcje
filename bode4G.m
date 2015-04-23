function Param=bode4G(P, C, w, i)
% Param=bode4G(P, C, w, i)
% function publishing bode plots of control system with plant - 'P' and
% controler - 'C', with frequency 'w', and in figure numer 'i', 
% default values:
% C = 1
% w = NULL
% i = NULL
% there are  5 plot published: G, T, S, SP, SC
%  Last Update 2015-04-24 01:21 Mateusz Stachnik

if nargin == 1
    
    C = 1;
    
end

if nargin == 2 || nargin == 1
    
    figure;
    G=control4G(P, C);
    [Param.Pmag, Param.Pphase]=bode(P); grid on; hold on;
    [Param.Gmag, Param.Gphase]=bode(P * C);
    [Param.GZmag, Param.GZphase]=bode(G.T);
    [Param.Smag, Param.Sphase]=bode(G.S);
    [Param.SPmag, Param.Pphase]=bode(G.SP);
    [Param.SCmag, Param.Pphase]=bode(G.SC);
    bodeplot(P,'r',G.T,'b',G.S,'g',G.SP,'m',G.SC,'k')
    legend('G','Gyy_Z(T)','Gyn (S)','Gyd (SP)','Guy_Z (SC)')
    Param.G=G;
    
end


if nargin >= 3
    
    if nargin == 4
        
        figure(i);
    else
        figure;
    end        

    G=control4G(P, C);
    [Param.Pmag, Param.Pphase]=bode(P, w ); grid on; hold on;
    [Param.Gmag, Param.Gphase]=bode(P * C, w);
    [Param.GZmag, Param.GZphase]=bode(G.T, w);
    [Param.Smag, Param.Sphase]=bode(G.S, w);
    [Param.SPmag, Param.Pphase]=bode(G.SP, w);
    [Param.SCmag, Param.Pphase]=bode(G.SC, w);
    bodeplot(P,'r',G.T,'b',G.S,'g',G.SP,'m',G.SC,'k')
    legend('G','Gyy_Z(T)','Gyn (S)','Gyd (SP)','Guy_Z (SC)')
    Param.G=G;
    
end


end