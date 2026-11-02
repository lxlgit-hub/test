n=0:127;
N=length(n);
xn=cos(0.1*pi*n);
whn=f_window(1,N);
yn=xn.*whn';
YK=fft(yn,N);
magYK=abs(YK);
phaseYK=angle(YK);
XK=fft(xn,N);
magXK=abs(XK);
phaseXK=angle(XK)
k=0:N-1;

subplot(321)
stem(n,xn)
grid on
xlabel('n');
ylabel('x[n]');
title('cos(0.1\pin)128点')

subplot(322)
stem(n,yn)
grid on
xlabel('n');
ylabel('y[n]');
title('加128点Hanning窗')

subplot(323)
stem(k,magYK)
grid on
xlabel('k');
ylabel('|Y(k)|');
title('加128点Hanning窗的余弦序列的DFT幅度谱')

subplot(324)
stem(k,phaseYK)
grid on
xlabel('k')
ylabel('\varphi(yk)');
title('加128点Hanning窗的yk余弦序列的DFT相位谱')

subplot(325)
stem(k,magXK)
grid on
xlabel('k');
ylabel('|X(k)|');
title('加128点Hanning窗的余弦序列的DFT幅度谱')

subplot(326)
stem(k,phaseXK)
grid on
xlabel('k')
ylabel('\varphi(xk)');
title('加128点Hanning窗的xk余弦序列的DFT相位谱')