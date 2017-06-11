%Y Input signal
y=ste{1,2}
%M group in frames

m=100;
n=256;
s=y;

%framing

l = length(s);
nbFrame = floor((l - n) / m) + 1;
for i = 1:n
    for j = 1:nbFrame
        M(i, j) = s(((j - 1) * m) + i); %#ok<AGROW>
    end
end

%windowing

h = hamming(n);
M2 = diag(h) * M;

%convert in frequency domain

for i = 1:nbFrame
    M3(:, i) = fft(M2(:, i)); %#ok<AGROW>
end
