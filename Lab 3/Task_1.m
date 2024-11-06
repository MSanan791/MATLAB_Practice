clc;
% clear all;

n = -12:12;
shift_value = 4;

% Define signals
unit_impulse = double(n == 0);
sinusoid = sin(n);
exponential = exp(n);

% Shifting and flipping operations
sinusoid_shifted_left = sin(n - shift_value);
sinusoid_shifted_right = sin(n + shift_value);
sinusoid_flipped = sin(-n);

exponential_shifted_left = exp(n - shift_value);
exponential_shifted_right = exp(n + shift_value);
exponential_flipped = exp(-n);

unit_impulse_shifted_left = double((n - shift_value) == 0);
unit_impulse_shifted_right = double((n + shift_value) == 0);
unit_impulse_flipped = double((-n) == 0);

% Plot the signals
figure;

% Sinusoid signals
subplot(3, 3, 1);
stem(n, sinusoid);
title('Original Sinusoid');
xlabel('n');
ylabel('Amplitude');

subplot(3, 3, 2);
stem(n, sinusoid_shifted_left);
title(['Sinusoid Shifted Left by ', num2str(shift_value)]);
xlabel('n');
ylabel('Amplitude');

subplot(3, 3, 3);
stem(n, sinusoid_shifted_right);
title(['Sinusoid Shifted Right by ', num2str(shift_value)]);
xlabel('n');
ylabel('Amplitude');

subplot(3, 3, 4);
stem(n, sinusoid_flipped);
title('Flipped Sinusoid');
xlabel('n');
ylabel('Amplitude');

% Exponential signals
subplot(3, 3, 5);
stem(n, exponential);
title('Original Exponential');
xlabel('n');
ylabel('Amplitude');

subplot(3, 3, 6);
stem(n, exponential_shifted_left);
title(['Exponential Shifted Left by ', num2str(shift_value)]);
xlabel('n');
ylabel('Amplitude');

subplot(3, 3, 7);
stem(n, exponential_shifted_right);
title(['Exponential Shifted Right by ', num2str(shift_value)]);
xlabel('n');
ylabel('Amplitude');

subplot(3, 3, 8);
stem(n, exponential_flipped);
title('Flipped Exponential');
xlabel('n');
ylabel('Amplitude');

% Unit Impulse signals
subplot(3, 3, 9);
stem(n, unit_impulse);
title('Original Unit Impulse');
xlabel('n');
ylabel('Amplitude');

figure;

subplot(3, 3, 1);
stem(n, unit_impulse_shifted_left);
title(['Unit Impulse Shifted Left by ', num2str(shift_value)]);
xlabel('n');
ylabel('Amplitude');

subplot(3, 3, 2);
stem(n, unit_impulse_shifted_right);
title(['Unit Impulse Shifted Right by ', num2str(shift_value)]);
xlabel('n');
ylabel('Amplitude');

subplot(3, 3, 3);
stem(n, unit_impulse_flipped);
title('Flipped Unit Impulse');
xlabel('n');
ylabel('Amplitude');
