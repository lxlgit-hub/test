clc
clear all
close all

[x,nx] = stepseq(0,0,49)
subplot(311)
stem(nx,x,'.');
grid on;
xlabel('nx')
ylabel('x');
axis([0,50,-0.2,1.2]);

ny=0:49;
y=40*exp(-0.5*ny);
subplot(312);
stem(ny,y,'.');
xlabel('ny');
ylabel('y');
grid on

[h,nh] = dconv(x,nx,y,ny);
subplot(313);
stem(nh,h,'.');
xlabel('nh');
ylabel('h');
grid on

suptitle('x[n]*y[n]')