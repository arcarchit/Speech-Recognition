clc;
os=ste{1,2}
y=filter(a,1,os);
figure;
plot(os);
figure;
plot(y);

%Now in frequency domain


figure;
[h,w]=freqz(os);
subplot(211);
plot(w/pi,abs(h));
xlabel('Normalized Frequency \omega/\pi ');
ylabel('Amplitude');
title('Original spectrum')
[h,w]=freqz(y);
subplot(212);
plot(w/pi,abs(h));
xlabel('Normalized Frequency \omega/\pi ');
ylabel('Amplitude');
title('After pre-emphasis');