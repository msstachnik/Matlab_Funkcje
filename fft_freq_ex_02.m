clc;
clear all;
close all;
f = 1;  % frequency of sampling
n = 2*3*4*5*6*7+1; % number of samples
t = linspace(0, (n-1)/f, n); %time dimension
Asin = 1; %amplitude of sinus signal
Fsin = 0.05; %frequency of sinus
delta = 9;
Const_Value = 0;

%% signal bulding
Ysin =Const_Value + Asin * sin(2 * pi  * Fsin * t + delta);

figure(1)
subplot(3,1,1);
plot(t, Ysin, 'r'); grid on; hold on;
[Y,F,fft_RAW] = fft_freq(Ysin,f);
Y2 = 2*abs(fft(Ysin,n)/n);
F2 = f/2*linspace(0,1,n/2+1);
subplot(3,1,2);
plot(F,Y); grid on; hold on;
plot(F2,Y2(1:length(F2)),'r');


subplot(3,1,3);
plot(real(fft_RAW), 'r'); grid on; hold on;
plot(imag(fft_RAW), 'b')
plot(abs(fft_RAW), 'k')

T1=1./F;
T2=1./F2;