function [y,ny] = dconv (x,nx,h,nh)
nyb = nx(1)+nh(1);
nye = nyb+length(x) + length(h)-2;
ny = [nyb:nye];
y = conv(x,h);
