n1=-2:5;x1=stepseq(0,-2,5);
n2=0:8;x2=stepseq(0,0,8)-stepseq(9,0,8);
[x3,n3]=sigfold(x1,n1);
[x4,n4]=sigshift(x3,n3,6);
[x5,n5] = sigshift(x2,n2,-5);
[x6,n6] = sigmult(x1,n1,x5,n5);
[y,n] = sigadd(4*x4,n4,-1*x6,n6);
figure;
n=0:length(y)-1; %控制长度相等
stem(n,y,'.')
