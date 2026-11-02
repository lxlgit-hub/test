N1 = 64;
k1 = 0:N1-1;
R5_64 = [ones(1,5), zeros(1,N1-5)];
X64 = fft(R5_64, N1);
mag64 = abs(X64);
pha64 = angle(X64)*180/pi;

N2 = 128;
k2 = 0:N2-1;
R5_128 = [ones(1,5), zeros(1,N2-5)];
X128 = fft(R5_128, N2);
mag128 = abs(X128);
pha128 = angle(X128)*180/pi;

N3 = 256;
k3 = 0:N3-1;
R5_256 = [ones(1,5), zeros(1,N3-5)];
X256 = fft(R5_256, N3);
mag256 = abs(X256);
pha256 = angle(X256)*180/pi;

subplot(2,3,1);
stem(k1,mag64,'filled');grid on;
xlabel('k');ylabel('|X(k)|');title('R_5[n] 64点DFT幅度');

subplot(2,3,2);
stem(k2,mag128,'filled');grid on;
xlabel('k');ylabel('|X(k)|');title('R_5[n] 128点DFT幅度');

subplot(2,3,3);
stem(k3,mag256,'filled');grid on;
xlabel('k');ylabel('|X(k)|');title('R_5[n] 256点DFT幅度');

subplot(2,3,4);
stem(k1,pha64,'filled');grid on;axis([0 N1 -180 180]);
xlabel('k');ylabel('相位(°)');title('R_5[n] 64点DFT相位');

subplot(2,3,5);
stem(k2,pha128,'filled');grid on;axis([0 N2 -180 180]);
xlabel('k');ylabel('相位(°)');title('R_5[n] 128点DFT相位');

subplot(2,3,6);
stem(k3,pha256,'filled');grid on;axis([0 N3 -180 180]);
xlabel('k');ylabel('相位(°)');title('R_5[n] 256点DFT相位');