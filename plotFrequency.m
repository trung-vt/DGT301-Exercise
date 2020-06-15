function plotFrequency(Fs, y, name)
    L = size(y, 2);
    NFFT = 2^nextpow2(L); 
    F = linspace(0,Fs/2,NFFT/2+1);
    Y = fft(y,NFFT)/L;
    Y = abs(Y(1:NFFT/2+1));
    figure, plot(F, Y);
    ylim([0 0.5]);
    t = strcat('Single-Sided Amplitude Spectrum of ', name);
    title(t);
    xlabel('Frequency (Hz)');
    ylabel('Amplitude');