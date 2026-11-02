N=32;
k=0:N-1;
x=[1,1,1,1];
x=[x,zeros(1,N-4)];
X=dft(x,N);
magX=abs(X);
phaX=angle(X)*180/pi;

subplot(211);
stem(k,magX,'filled');
grid on 
axis([0 N 0.1 5])
xlabel('k')
ylabel('|X(k)|');
title('Magnitude of the DFT:N=8')

subplot(212)
stem(k,phaX,'filled')
grid on
axis([0 N -180 180])
xlabel('K');
ylabel('Degrees');
title('Angle of the DFT:N=8');