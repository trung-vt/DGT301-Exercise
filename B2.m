Fs = 1000;                 % Sampling frequency
T = 1/Fs;                  % Sample time
L = 100;                   % Length of signal
t = (0:L-1)*T;             % Time vector
 
x1 = sin(2*pi*30*t);
x2 = sin(2*pi*50*t);
x3 = sin(2*pi*120*t);

x = x1 + x2 + x3;
figure, plot(t, x);
xlabel('Time (sec)');
ylabel('Amplitude');
legend('Original Signal');

y = x1 + x3;
figure, plot(t, x, t, y);
xlabel('Time (sec)');
ylabel('Amplitude');
legend('Original Signal', 'Desired Output');

plotFrequency(Fs, x, ' Original Signal');

plotFrequency(Fs, y, ' Desired Output');

Hd1 = Hd_rectangular(Fs, 20, 40, 110);
y1 = filter(Hd1, x);
plotFrequency(Fs, y1, ' Filtered Output using Rectangular Window (M = 20, Fc1 = 40, Fc2 = 110)');

Hd2 = Hd_kaiser(Fs, 20, 40, 110, 3);
y2 = filter(Hd2, x);
plotFrequency(Fs, y2, ' Filtered Output using Kaiser Window (M = 20, beta = 3, Fc1 = 40, Fc2 = 110)');

Hd3 = Hd_rectangular(Fs, 20, 45, 75);
y3 = filter(Hd3, x);
plotFrequency(Fs, y3, ' Filtered Output using Rectangular Window (M = 20, Fc1 = 45, Fc2 = 75)');

Hd4 = Hd_kaiser(Fs, 20, 45, 75, 3);
y4 = filter(Hd4, x);
plotFrequency(Fs, y4, ' Filtered Output using Kaiser Window (M = 20, beta = 3, Fc1 = 45, Fc2 = 75)');

