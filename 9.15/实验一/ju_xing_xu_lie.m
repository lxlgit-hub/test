x = stepseq(0,0,10)-stepseq(8,0,10);
n = 0:length(x)-1;
stem(n,x,'.'):axis([-0.5,11,-0.1,1.1])