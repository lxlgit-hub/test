n1 = -2:10;
x1 = [1,2,3,4,5,6,7,6,5,4,3,2,1];

n_rev = -fliplr(n1);
x_rev = fliplr(x1);
[x1n2,nn] = sigshift(x_rev,n_rev,2);

[xL,nL] = sigshift(x1,n1,-1);
[xprod,nprod] = sigmult(xL,nL,x1,n1);
[x4,n4] = sigadd(x1n2,nn,xprod,nprod);

subplot(211);stem(n1,x1,'filled');title('x_1(n)');grid on;
subplot(212);stem(n4,x4,'filled');title('x_4(n)=x_1(-n+2)+x_1(n+1)x_1(n)');
grid on;