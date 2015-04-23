function bode4G_ex_02()
P = tf (1, [1 1])
C = pid (1, 0.1, 0)
bode4G(P, C, [], 1)
C = pid (10, 0.1, 0)
bode4G(P, C, [], 2)
C = pid (10, 1, 0)
bode4G(P, C, [], 3)

