t = (0:8)*(1/8);             % Time vector

x = sin(2*pi*t);
figure, stem(t, x);
xlabel('Time (sec)');
ylabel('Amplitude');

t1 = (0:1000)*(1/1000);

x1 = sin(2*pi*1*t1);
figure, stem(t, x), hold on, plot(t1, x1);
xlabel('Time (sec)');
ylabel('Amplitude');

x2 = sin(2*pi*9*t1);
figure, stem(t, x), hold on, plot(t1, x2);
xlabel('Time (sec)');
ylabel('Amplitude');

x3 = 0.5*(x1+x2);
figure, stem(t, x), hold on, plot(t1, x3);
xlabel('Time (sec)');
ylabel('Amplitude');