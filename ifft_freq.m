function Y = ifft_freq(fft_Raw, n)
% Y = ifft_freq(fft_Raw, n)
% function computate Y=ifft from fft_Raw with n probes
% Y = ifft(Yfft, 2^nextpow2(n))*n;
%  Last Update 2015-03-15 12:9 Mateusz Stachnik
Y = ifft(fft_Raw, 2^nextpow2(n))*n;
Y = Y(1:n);

 