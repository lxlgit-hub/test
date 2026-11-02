clc;close all;clear all;
N=64;
dt=0.001;
n=0:N-1;
Ts=1/256;
t=n*Ts;
xt=exp(-t);
xn=exp(-n*Ts);
figure;subplot(211)
stem(n*Ts,xn,'k','filled','Linewidth',1);
hold on
subplot(212)
plot(t,xt,'b','Linewidth',2.5);
axis([0 0.25 -0.1 1.1]);grid on;
xlabel('t in sec');ylabel('x(nTs)');
title('Sampling Signal');

k=0:N-1;
X=dft(xn,N);
magX = abs(X);phaX = angle(X)*180/pi;
realX=real(X);imagX=imag(X);
figure;
subplot(221)
stem(k,magX,'filled');grid on;
axis([0 N -0.1 45])
xlabel('k');ylabel('|X(k)|');
title('Magnitude of DFT')
subplot(222)
stem(n,phaX,'filled');grid on;
axis([0 N -180 180])
xlabel('k');ylabel('arg[X(k)]');
title('Angle of DFT')

subplot(223)
stem(n,realX,'filled');grid on;
axis([0 N -1 45])
xlabel('k');ylabel('X_{R}(k)');
title('Real part of DFT')
subplot(224)
stem(n,imagX,'filled');grid on;
axis([0 N -8 8])
xlabel('k');ylabel('X_{T}(k)');
title('Imaginary part of DFT');