n1 = -2:10;
x1 = [1,2,3,4,5,6,7,6,5,4,3,2,1];
[xL,nL] = sigshift(x1,n1,-5); %◊Û“∆5
[xR,nR] = sigshift(x1,n1,2);  %”““∆2
[x6,n6] = sigadd(2*xL,nL,-5*xR,nR);

subplot(211);stem(n1,x1,'filled');title('x1(n)');
subplot(212);stem(n6,x6,'filled');title('x6(n)');