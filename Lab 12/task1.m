clear all;
clc;

syms t
x = exp(-(t)^2);
xc = CTFT(x);
xic = ICTFT(xc);


subplot(3,1,1);
fplot(x);
title('Input Signal');
xlabel('t')
ylabel('x(t)')
subplot(3,1,2);
fplot(xc);
xlabel('jw')
ylabel('X(jw)')
title('CTFT Output');
subplot(3,1,3);
fplot(xic);
title('ICTFT Output');
xlabel('t')
ylabel('x(t)')

