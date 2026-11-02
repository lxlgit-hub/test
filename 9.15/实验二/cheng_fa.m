n = -2:2;x = [1 2 3 2 1];
[y,ny] = sigshift(x,n,5)
[y0,n0] = sigshift(x,n,-4)
subplot(221);stem(ny,y);
subplot(222);stem(n0,y0);
[y1,n1] = sigadd(3*y,ny,-2*y,n0);
subplot(223);stem(n1,y1);
[y2,n2] = sigmult(y,ny,y1,n1)
subplot(224);stem(n2,y2);
