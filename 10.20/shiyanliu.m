clear all;close all;clc;
omega=4*pi;
N=256;
n=0:N-1;
Ts=1/53;
t=n*Ts;%t=0:Ts:(N-1)*Ts;
xt=cos(omega*t);
xn=xt;
subplot(311)
plot(t,xt)
grid on
axis([0 2.5 -1.1 1.1])
xlabel('t/s');
ylabel('x(t)');
title('余弦信号x(t)');

subplot(312)
stem(n*Ts,xt,'filled')
grid on
axis([0 2.5 -1.1 1.1])
xlabel('nT');
ylabel('x(nT)');
title('采样信号x(nt)');

w_Rectangular = f_window(0,N);
yn=xn.*w_Rectangular';
Y=fft(yn)/N;
Y_Mag=abs(Y);
Y_pha=angle(Y);
k=0:N-1;

figure
subplot(311)
stem(n,yn,'filled')
grid on 
axis([0 132 -1.1 1.1])
xlabel('n');
ylabel('y(n)');
title('采样序列x(n)加矩形窗后的序列y(n)');

subplot(312)
stem(k,Y_Mag,'filled');
grid on
axis([0 130 0 0.55])
xlabel('k');
ylabel('|Y(k)|');
title('Magnitude of Y(k)');

subplot(313)
stem(k,Y_pha/pi,'filled');
grid on
axis([0 130 -1.1 1.1])
xlabel('k');
ylabel('arg{Y(k)}/\pi');
title('Phase of Y(k)');

w_Bartlett = f_window(4,N);
yn=xn.*w_Bartlett';
Y=fft(yn)/N;
Y_Mag=abs(Y);
Y_pha=angle(Y);
k=0:N-1;

figure
subplot(311)
stem(n,yn,'filled')
grid on 
axis([0 132 -1.1 1.1])
xlabel('n');
ylabel('y(n)');
title('采样序列x(n)加三角窗后的序列y(n)');

subplot(312)
stem(k,Y_Mag,'filled');
grid on
axis([0 130 0 0.55])
xlabel('k');
ylabel('|Y(k)|');
title('Magnitude of Y(k)');

subplot(313)
stem(k,Y_pha/pi,'filled');
grid on
axis([0 130 -1.1 1.1])
xlabel('k');
ylabel('arg{Y(k)}/\pi');
title('Phase of Y(k)');




























