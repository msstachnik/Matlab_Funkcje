function G=control4G(P,C)
% G structure of 4 transer functions %P - plant C-controler
%
% G.T=feedback(P*C,1);
% G.S=feedback(1,P*C);
% G.SP=P*G.S;
% G.SC=C*G.S;
%  Last Update 2015-04-24 01:37 Mateusz Stachnik
G.T=feedback(P*C,1);
G.S=feedback(1,P*C);
G.SP=P*G.S;
G.SC=C*G.S;
end

