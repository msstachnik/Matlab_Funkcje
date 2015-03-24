function [Y, f, Yraw] = fft_freq(X, F, ster, color)
% [Y, f, Yraw] = fft_freq(X, F, ster) 
% function computate fft from X with frequency F, and return y = FFT and 
% f = frequency vector 
% Yraw - raw fft value
% if there is no output argument there is fft plot returned
% ster can be eqaul to 'log', 'loglog', 'mag', 'lin'
%  Last Update 2015-03-09 22:2 Mateusz Stachnik
if (~exist('ster', 'var'))
    ster = 'lin';
end
if (~exist('color', 'var'))
    color = 'b';
end    
    
L = length(X);
NFFT = 2^nextpow2(L); % Next power of 2 from length of X
Yraw = fft(X, NFFT)/L; % this is better idea but i don't know why
% Yraw = fft(X, L)/L; 
f = F/2*linspace(0,1,NFFT/2+1);
Y = 2*abs(Yraw(1:NFFT/2+1));

if nargout == 0
    if nargin < 3
        plot(f,Y,color) 
        title('Single-Sided Amplitude Spectrum of y(t)')
        xlabel('Frequency (Hz)')
        ylabel('|Y(f)|')
    end

    switch ster
        case 'log'
            semilogy(f,Y,color) 
            title('Single-Sided Amplitude Spectrum of y(t)')
            xlabel('Frequency (Hz)')
            ylabel('|Y(f)|')

        case 'loglog'
            loglog(f,Y,color) 
            title('Single-Sided Amplitude Spectrum of y(t)')
            xlabel('Frequency (Hz)')
            ylabel('|Y(f)|')  

        case 'mag'
            semilogx(f,20*log(Y),color)
            title('Single-Sided Amplitude Spectrum of y(t)')
            xlabel('Frequency (Hz)')
            ylabel('dB')          
        case 'lin'
            plot(f,Y,color) 
            title('Single-Sided Amplitude Spectrum of y(t)')
            xlabel('Frequency (Hz)')
            ylabel('|Y(f)|')

    end
end


end
%  2015-03-09 22:2 Revision notes: added switch ster
