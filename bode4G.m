function Param=bode4G(P,C,w,i)
figure(i);
G=control4G(P,C);
[Param.Pmag Param.Pphase]=bode(P,w); grid on; hold on;
[Param.Gmag Param.Gphase]=bode(P*C,w);
[Param.GZmag Param.GZphase]=bode(G.T,w);
[Param.Smag Param.Sphase]=bode(G.S,w);
[Param.SPmag Param.Pphase]=bode(G.SP,w);
[Param.SCmag Param.Pphase]=bode(G.SC,w);
bodeplot(P,'r',G.T,'b',G.S,'g',G.SP,'m',G.SC,'k')
legend('G','Gyy_Z(T)','Gyn (S)','Gyd (SP)','Guy_Z (SC)')
Param.G=G;