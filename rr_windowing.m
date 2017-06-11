clc;
n=100;
h = hamming(n);
M2 = diag(h) * M;

a=M(:,1);
aa=a'
b=M2(:,1);
bb=b';

plot(h);
figure;
plot(aa);
figure;
plot(bb);
