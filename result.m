clc;
st = strcat('test\arc',num2str(9),num2str(6),'.wav');

[s f n] = wavread(st);
sound(s,f);
a=  melcepst(s,f,'e0dD');
v=a';

distmin = Inf;
k1 = 0;
for ii=1:9;
    for jj=1:3;
    d = disteu(v, dte{ii,jj});
    dist = sum(min(d,[],2)) / size(d,1);
    if dist < distmin
        distmin = dist;
        k1 = ii;
    end
    end
end
min_index = k1;
disp('Recognized word is:');

if k1<8
    disp(k1)
end

if k1==8
    disp('nirma');
end
    if k1==9
        disp('linux');
    end
    
   