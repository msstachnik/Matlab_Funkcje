function delay_ex_01()
x=[0.8147    0.9058    0.1270    0.9134    0.6324    0.0975    0.2785    0.5469    0.9575    0.9649];
delay_vector=[0 2 6];
y = delay(x,delay_vector)
y = delay(x',delay_vector)
end