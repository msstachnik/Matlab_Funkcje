function [C G]=PID_PP(l,m,Tz1,Tz2,Zeta1,Zeta2)
% [PID G]=PID_PP(l,m,Tz1,Tz2,Zeta1,Zeta2)
% olny for second order objects with no zeros
%           K 
%   G = ---------
%       m1s^2+m2s+1
if and(length(l)==1,length(m)==3)
    load POLE_PLACE
    m1=m(1);
    m2=m(2);
    K=l;
    a1=eval(a1);
    a2=eval(a2);
    b1=eval(b1);
    b2=eval(b2);
    C.I=1./a2;
    C.N=a1.*C.I;
    C.P=b2.*C.I-C.N.*C.I;
    C.D=b1.*C.I-C.P.*C.N;
    C.Kp=C.P;
    C.Ti=C.P./C.I;
    C.Td=C.D./C.P;

    C.l=sym2poly(eval(R.lw));
    C.m=sym2poly(eval(R.mw));
    G.rl=C.l;
    G.rm=C.m;
    G.lo=sym2poly(eval(S.lo));
    G.mo=sym2poly(eval(S.mo));
    G.lz=sym2poly(eval(S.lz));
    G.mz=sym2poly(eval(S.mz));
    
%     C=PID(PID.Kp,PID.I,PID.D,PID.N);
    
else
    disp('wrong input arguments for PID_PP')
    C={};
    G={};
    C={};
end
