function w = f_window(i,n)
%             i  = window number defined:
%             0 = rectangular
%             1 = Hanning
%             2 = Hamming
%             3 = Blackman
%             4 = Bartlett（三角窗） 
%     w = 1 by n vector contain values of window
p = (n-1)/2;
k = 0 : n-1;
w = ones(1,n); % 矩形窗
switch (i)
case 1,                                 
   w = 0.5 - 0.5*cos(pi*k/p); % Hanning汉宁窗
case 2, 
   w = 0.54 - 0.46*cos(pi*k/p); % Hamming汉明窗
case 3, 
   w = 0.42 - 0.5*cos(pi*k/p) + 0.08*cos(2*pi*k/p);   % Blackman（布莱科曼）
case 4, 
   w = 1-abs(k-p)/p; % Bartlett（三角窗）      
end
w=w';%转换成列向量
