xn=[1 1 1 1];
Xk16=fft(xn,16);
Xk32=fft(xn,32);
k=0:15;wk=2*k/16;
subplot(2,2,1);stem(wk,abs(Xk16),'.');
title('16点DFT的幅频特性图');xlabel('w/pai');ylabel('幅度');
subplot(2,2,3);stem(wk,angle(Xk16),'.');
line([0,2],[0,0]);title('16点DFT的相频特性图')
xlabel('w/pai');ylabel('相位');axis([0,2,-3.5,3.5])
k=0:31;wk=2*k/32;
subplot(2,2,2);stem(wk,abs(Xk32),'.');
title('32点DFT的幅频特性图');xlabel('w/pai');ylabel('幅度')
subplot(2,2,4);stem(wk,angle(Xk32),'.');
line([0,2],[0,0]);title('32点DFT的相频特性图');
xlabel('w/pai');ylabel('相位');axis([0,2,-3.5,3.5])