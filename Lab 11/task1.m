clc;
clear all;

x = -5:5;
X1 = abs(x) >2
X2 = abs(x) > -2
X = X2 - X1

subplot(3,1,1)
stem(-5:5, X, 'g')
title('Input Signal')
xlabel('N')
ylabel('X[n]')


subplot(3,1,2)
a = DTFT(X, length(X))
ezplot( abs(a));
title('Magnitude of DTFT');
xlabel('Frequency (\omega)');
ylabel('|X(e^{j\omega})|');

subplot(3,1,3)
b = IDTFT(a, length(X))
stem(x, abs(b), 'g');
title('Magnitude of IDTFT');
xlabel('N')
ylabel('X[n]')
