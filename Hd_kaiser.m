function Hd = Hd_kaiser(Fs, N, Fc1, Fc2, Beta)
    flag = 'scale';  % Sampling Flag
    win = kaiser(N+1, Beta);
    b  = fir1(N, [Fc1 Fc2]/(Fs/2), 'stop', win, flag);
    Hd = dfilt.dffir(b);