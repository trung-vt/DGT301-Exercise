function Hd = Hd_rectangular(Fs, N, Fc1, Fc2)
    flag = 'scale';  % Sampling Flag
    win = rectwin(N+1);
    b  = fir1(N, [Fc1 Fc2]/(Fs/2), 'stop', win, flag);
    Hd = dfilt.dffir(b);