nx = 0:8;
x = (1.5).^nx;
nh = 7:30;
h = ones(1,length(nh));
[y_conv,ny_conv] = dconv(x,nx,h,nh);

figure;
stem(ny_conv,y_conv,'filled');
grid on
xlabel('n');
ylabel('y(n)');
title('y(n)=x(n)*h(n)');



L = length(y_conv);
N_dft = 128;

% 调用你写的f_window，i=1汉宁窗，i=2汉明窗，转成行向量
win_hann = f_window(1, L).';
win_hamm = f_window(2, L).';

% 信号加窗
y_hann = y_conv .* win_hann;
y_hamm = y_conv .* win_hamm;

% 补零到128点，行向量适配dft
xn_hann = zeros(1, N_dft);
xn_hann(1:L) = y_hann;
xn_hamm = zeros(1, N_dft);
xn_hamm(1:L) = y_hamm;

% dft变换
Y_hann = dft(xn_hann, N_dft);
Y_hamm = dft(xn_hamm, N_dft);

mag_hann = abs(Y_hann);
pha_hann = angle(Y_hann);
mag_hamm = abs(Y_hamm);
pha_hamm = angle(Y_hamm);

k = 0:N_dft-1;
w = 2*pi*k / N_dft;

% 图1：汉宁窗 幅频
figure;
stem(w, mag_hann, 'r','filled');
grid on;
xlabel('\omega (rad)');
ylabel('|Y|');
title('汉宁窗(i=1) 幅频响应');

% 图2：汉宁窗 相频
figure;
stem(w, pha_hann/pi, 'r','filled');
grid on;
xlabel('\omega (rad)');
ylabel('\angle Y / \pi');
title('汉宁窗(i=1) 相频响应');

% 图3：汉明窗 幅频
figure;
stem(w, mag_hamm, 'b','filled');
grid on;
xlabel('\omega (rad)');
ylabel('|Y|');
title('汉明窗(i=2) 幅频响应');

% 图4：汉明窗 相频
figure;
stem(w, pha_hamm/pi, 'b','filled');
grid on;
xlabel('\omega (rad)');
ylabel('\angle Y / \pi');
title('汉明窗(i=2) 相频响应');