n = -2:2;x = [1 2 3 2 1];
[y,ny] = sigshift(x,n,5)
figure; stem(ny,y);