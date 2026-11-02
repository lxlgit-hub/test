nx=-4:8;
x=[ones(1,13)];
subplot(311)
stem(nx,x,'filled')
grid on 
xlabel('nx');
ylabel('x');
axis([-11,10,-0.1,1.1])

ny=4:16;
y=ny/4;
subplot(312)
stem(ny,y,'filled')
grid on 
xlabel('ny')
ylabel('y')
axis([2,25,-0.1,5.1])

[h,nh]=conv_m(x,nx,y,ny)
subplot(313)
stem(nh,h,'filled')
xlabel('nh');
ylabel('h')
grid on
suptitle('x[n]*y[n]')