n=-3:12;
x=exp(-0.3+j*(pi/9))*n;
figure(1)
subplot(211)
stem(n,real(x),'.');
grid on
axis([--3,12,min(real(x))-0.2,1.2*max(real(x))])
xlabel('n');
ylabel('realpart');
title('xR[n]')

subplot(212)
stem(n,imag(x),'.');
grid on
axis([-3,12,min(imag(x))-0.2,1.2*max(imag(x))])
xlabel('n');
ylabel('imagpart');
title('xI[n]')

figure(2)
subplot(211)
stem(n,abs(x),'.');
grid on
axis([-3,12,min(abs(x))-0.2,1.2*max(abs(x))])
xlabel('n');
ylabel('abspart');
title('|x[n]|')

subplot(212)
stem(n,angle(x),'.');
grid on
axis([-3,12,min(angle(x))-0.2,1.2*max(angle(x))])
xlabel('n');
ylabel('anglepart');
title('arg[x[n]]')
