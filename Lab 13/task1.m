clc;


a = audiorecorder(8000,16,1);
recordblocking(a,5);
b = getaudiodata(a);
lps = filter(lowpass, b);
hps = filter(highpass, b);
bps = filter(Bandpass, b);

subplot(5,2,1)
plot(b)
title('Original Audio')
xlabel('t')
ylabel('A')
subplot(5,2,2)
plot(lps);
xlabel('t')
ylabel('A')
title('Lowpass Filter')
subplot(5,2,3)
plot(hps);
xlabel('t')
ylabel('A')
title('Highpass Filter')
subplot(5,2,4)
plot(bps);
xlabel('t')
ylabel('A')
title('Bandpass Filter')


flps = fft(lps);
fhps = fft(hps);
fbps = fft(bps);

subplot(5,2,5)
plot(abs(flps));
xlabel('f')
ylabel('A')
title('FFT Lowpass Filter')
subplot(5,2,6)
plot(abs(fhps));
xlabel('f')
ylabel('A')
title('FFT Highpass Filter')
subplot(5,2,7)
plot(abs(fbps));
xlabel('f')
ylabel('A')
title('FFT Bandpass Filter')

finalwave = flps + fhps + fbps
subplot(5,2,8)
plot(abs(finalwave));
xlabel('f')
ylabel('A')
title('FFT final')

subplot(5,2,9)
plot(abs(fft(b)));
xlabel('f')
ylabel('A')
title('FFT audio')



