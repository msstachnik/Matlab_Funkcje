function bode4G_ex_01()
P = tf (1, [1 1])
C = pid (1, 0.1, 0)
bode4G(P,C)