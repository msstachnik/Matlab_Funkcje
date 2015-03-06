function [ld,md]=PID_D(Reg)
%[ld,md]=PID_D(Reg)
%discrite l and m of PID controler
[ld md]=c2dm([Reg.Ti*(Reg.Td+Reg.N) Reg.Ti+Reg.N 1],[Reg.Ti*Reg.N/Reg.Kp Reg.Ti/Reg.Kp 0],Reg.tp);
