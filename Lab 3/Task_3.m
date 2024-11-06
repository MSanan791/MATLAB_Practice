clc;
clear all;

n = -10:10; % Time index for signals

% Define sampled versions of f and g over n
f = @(n) (n >= 0) - (n >= 4);
g = @(n) n.*(n >= 0) - 2.*(n - 4).*(n >= 4) + (n - 8).*(n >= 8);



% Sample the signals
f_values = f(n);
g_values = g(n);

conv_funct = f_values .* f_values
conv_funct1 = f_values .* g_values
conv_funct2 = g_values .* g_values
% conv_funct3 = f_values .* g_values

% Compute the convolution of the sampled signals
y = conv(f_values, g_values);

% New time index for the convolution result
n_y = -20:20;  % The range of the convolution output is from -20 to 20

% Plot the original signals and the convolution result
figure;
subplot(3,2,1);
stem(n, f_values);
title('Signal f[n]');
xlabel('n');
ylabel('f[n]');

subplot(3,2,2);
stem(n, g_values);
title('Signal g[n]');
xlabel('n');
ylabel('g[n]');

subplot(3,2,3);
stem(n_y, y);
title('Convolution y[n] = f[n] * g[n]');
xlabel('n');
ylabel('y[n]');

% remaining functions

subplot(3,2,4);
stem(n, conv_funct);
title('Signal y[n] = f[n] * f[n]');
xlabel('n');
ylabel('f[n]');

subplot(3,2,5);
stem(n, conv_funct1);
title('Signal y[n] = f[n] * g[n]');
xlabel('n');
ylabel('g[n]');

subplot(3,2,6);
stem(n, conv_funct2);
title('Convolution y[n] = g[n] * g[n]');
xlabel('n');
ylabel('y[n]');
