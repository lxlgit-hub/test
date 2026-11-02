clear all;close all;clc;
omega=pi; 
N=256;            
n=0:N-1;
Ts=1/64; 
t=n*Ts;%t=0:Ts:(N-1)*Ts;
xt=square(2*pi*0.5*t);
xn=xt;
subplot(311)
plot(t,xt)
grid on
axis([0 4 -1.1 1.1]) 
xlabel('t/s');
ylabel('x(t)');
title('余弦信号x(t)=cos(\pi t)');

subplot(312)
stem(n*Ts,xt,'filled')
grid on
axis([0 4 -1.1 1.1])
xlabel('nT');
ylabel('x(nT)');
title('采样信号x(nt)');



%三角窗
w_Bartlett = f_window(4,N);
yn=xn.*w_Bartlett';
Y=fft(yn,256)/N;
Y_Mag=abs(Y);
Y_pha=angle(Y);
k=0:255;

figure
subplot(311)
stem(n,yn,'filled')
grid on 
axis([0 250 -1.1 1.1])
xlabel('n');
ylabel('y(n)');
title('采样序列x(n)加三角窗后的序列y(n)');

subplot(312)
stem(k,Y_Mag,'filled');
grid on
axis([0 254 0 0.55])
xlabel('k');
ylabel('|Y(k)|');
title('Magnitude of Y(k) 三角窗 256点FFT');

subplot(313)
stem(k,Y_pha/pi,'filled');
grid on
axis([0 254 -1.1 1.1])
xlabel('k');
ylabel('arg{Y(k)}/\pi');
title('Phase of Y(k) 三角窗');

%汉宁窗
w_Hanning = f_window(1,N);
yn=xn.*w_Hanning';
Y=fft(yn,256)/N;
Y_Mag=abs(Y);
Y_pha=angle(Y);
k=0:255;

figure
subplot(311)
stem(n,yn,'filled')
grid on 
axis([0 250 -1.1 1.1])
xlabel('n');
ylabel('y(n)');
title('采样序列x(n)加汉宁窗后的序列y(n)');

subplot(312)
stem(k,Y_Mag,'filled');
grid on
axis([0 254 0 0.55])
xlabel('k');
ylabel('|Y(k)|');
title('Magnitude of Y(k) 汉宁窗 256点FFT');

subplot(313)
stem(k,Y_pha/pi,'filled');
grid on
axis([0 254 -1.1 1.1])
xlabel('k');
ylabel('arg{Y(k)}/\pi');
title('Phase of Y(k) 汉宁窗');

%布莱克曼窗
w_Blackman = f_window(3,N);
yn=xn.*w_Blackman';
Y=fft(yn,256)/N;
Y_Mag=abs(Y);
Y_pha=angle(Y);
k=0:255;

figure
subplot(311)
stem(n,yn,'filled')
grid on 
axis([0 250 -1.1 1.1])
xlabel('n');
ylabel('y(n)');
title('采样序列x(n)加布莱克曼窗后的序列y(n)');

subplot(312)
stem(k,Y_Mag,'filled');
grid on
axis([0 254 0 0.55])
xlabel('k');
ylabel('|Y(k)|');
title('Magnitude of Y(k) 布莱克曼窗 256点FFT');

subplot(313)
stem(k,Y_pha/pi,'filled');
grid on
axis([0 254 -1.1 1.1])
xlabel('k');
ylabel('arg{Y(k)}/\pi');
title('Phase of Y(k) 布莱克曼窗');
