N = 32;          
k = 0:N-1;

R6 = [ones(1,6), zeros(1,N-6)];
X6 = fft(R6, N);
mag6 = abs(X6);
pha6 = angle(X6)*180/pi;

R8 = [ones(1,8), zeros(1,N-8)];
X8 = fft(R8, N);
mag8 = abs(X8);
pha8 = angle(X8)*180/pi;

subplot(4,1,1);
stem(k, mag6, 'filled');
grid on;
xlabel('k');
ylabel('|X_6(k)|');
title('R_6[n] 32点DFT 幅度谱');

subplot(4,1,2);
stem(k, pha6, 'filled');
grid on;
axis([0 N -180 180]);
xlabel('k');
ylabel('相位(°)');
title('R_6[n] 32点DFT 相位谱');

subplot(4,1,3);
stem(k, mag8, 'filled');
grid on;
xlabel('k');
ylabel('|X_8(k)|');
title('R_8[n] 32点DFT 幅度谱');

subplot(4,1,4);
stem(k, pha8, 'filled');
grid on;
axis([0 N -180 180]);
xlabel('k');
ylabel('相位(°)');
title('R_8[n] 32点DFT 相位谱');