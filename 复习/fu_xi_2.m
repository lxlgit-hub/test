n1=-2:5;x1=stepseq(0,-2,5);
n2=0:8;x2=stepseq(0,0,8)-stepseq(9,0,8);
[x3,n3]=sigfold(x1,n1);
[x4,n4]=sigshift(x3,n3,6);
[x5,n5] = sigshift(x2,n2,-5);
[x6,n6] = sigmult(x1,n1,x5,n5);
[y,n] = sigadd(4*x4,n4,-1*x6,n6);

N=128;
k=0:N-1;
wk=2*k/128;
y=[y, zeros(1,N-length(y))];
YK=dft(y,N);
mag=abs(YK);
pha=angle(YK);
figure;subplot(211)
stem(wk,mag,'.');
subplot(212)
stem(wk,pha,'.')
