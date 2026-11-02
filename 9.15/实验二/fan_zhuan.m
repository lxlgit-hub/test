n = -2:1;x = [1 2 3 2 ];
figure;stem(n,x);
[y3,n3] = sigshift(x,n,-3);
[y4,n4] = sigfold(y3,n3);
figure;stem(n4,y4);