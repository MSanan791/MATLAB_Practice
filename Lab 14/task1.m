
%Signal Generation

fs = 10000;
f1 = 1000;
f2 = 500;

t = 0:1/fs:0.01;


sin_signal = 2*sin(2*pi*f1*t);
sq_signal = square(2*pi*f2*t);

comp_signal = sin_signal .* sq_signal;

subplot(4,2,1)
plot(sin_signal)
title("Sin Signal")
xlabel("time")
ylabel('Amplitude')

subplot(4,2,2)
plot(sq_signal)
title("Square Signal")
xlabel("time")
ylabel('Amplitude')

subplot(4,2,3)
plot(comp_signal)
title("comp Signal")
xlabel("time")
ylabel('Amplitude')

% System Analysis and Filtering

T = -0.01:1/fs:0.01
h = exp(-2.*T).*(T>=0) ;
subplot(4,2,4)
plot(T,h);

conv_signal = conv(comp_signal, h, 'same');
subplot(4,2,5)
plot(t, conv_signal)
title("Conv Signal")
xlabel("time")
ylabel('Amplitude')

[X, w] = CTFT(comp_signal, t)
subplot(4,2,6)
plot(w/(2*pi), abs(X))
title("CTFT comp Signal")
xlabel("time")
ylabel('frequency')

%Part 3 Transmission through a Noisy Channel

noisySignal = awgn(conv_signal, 10, 'measured')
subplot(4,2,7)
plot(noisySignal)
title("Noisy Signal")
xlabel("time")
ylabel('Amplitude')


[Y,w2] = CTFT(noisySignal, t)
subplot(4,2,8)
plot(w2/(2*pi), abs(Y))
title("CTFT noisy Signal")
xlabel("frequency")
ylabel('Amplitude')


% Reconatruction and Exploration

lp_noisy_signal = filter(new_Lowpass, noisySignal)
figure;
subplot(4,2,1)
plot(lp_noisy_signal)
title("filtered noisy Signal")
xlabel("time")
ylabel('Amplitude')

[Y,w2] = CTFT(lp_noisy_signal, t)
subplot(4,2,2)
plot(w2/(2*pi), abs(Y))
title("filtered CTFT noisy Signal")
xlabel("frequency")
ylabel('Amplitude')

lp_noisy_signal = filter(new_Lowpass2, noisySignal)

subplot(4,2,3)
plot(lp_noisy_signal)
title("filtered noisy Signal")
xlabel("time")
ylabel('Amplitude')



[Y,w2] = CTFT(lp_noisy_signal, t)
subplot(4,2,4)
plot(w2/(2*pi), abs(Y))
title("filtered CTFT noisy Signal")
xlabel("frequency")
ylabel('Amplitude')


lp_noisy_signal = filter(new_Lowpass3, noisySignal)

subplot(4,2,5)
plot(lp_noisy_signal)
title("filtered noisy Signal")
xlabel("time")
ylabel('Amplitude')

[Y,w2] = CTFT(lp_noisy_signal, t)
subplot(4,2,6)
plot(w2/(2*pi), abs(Y))
title("filtered CTFT noisy Signal")
xlabel("frequency")
ylabel('Amplitude')

% Step 4 Reconstruction

sig_power = mean(conv_signal.^2)
mse = (mean ((conv_signal - lp_noisy_signal).^2))/ sig_power







