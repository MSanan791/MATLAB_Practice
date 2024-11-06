%% 1
clc;

n = -5:5;


% Define function f as the difference between two unit steps
f = @(n) (n>=0) - (n>=4);

% Evaluate the function over the range n
f_values = f(n);

% Plot the function
stem(n, f_values);
title('Plot of function f(n) = u(n) - u(n-4)');
xlabel('n');
ylabel('f(n)');
grid on;

%% 2

clc;
clear all;
n = -10:10;


% Define function f as the difference between two unit steps
f = @(n) (n.*(n>=0)) - (2.*(n-4).*(n>=4)) + (n-8).*(n>=8) ;

% Evaluate the function over the range n
f_values = f(n);

% Plot the function
stem(n, f_values);
title('Plot of function f(n) = (n.*(n>=0)) - (2.*(n-4).*(n>=4)) + (n-8).*(n>=8)');
xlabel('n');
ylabel('f(n)');
grid on;

%% 3
clc;
clear all;
n = -10:10;


% Define function f as the difference between two unit steps
f = @(n) (n == 0) - 2.*((n == 4)) ;

% Evaluate the function over the range n
f_values = f(n);

% Plot the function
stem(n, f_values);
title('Plot of function f = @(n) (n == 0) - 2.*((n == 4))');
xlabel('n');
ylabel('f(n)');
grid on;

%% 4

clc;
% clear all;
n = -10:10;


% Define function f as the difference between two unit steps
f = @(n) (0.9.*n.*((n>=0) - (n >= 20))) ;

% Evaluate the function over the range n
f_values = f(n);

% Plot the function
stem(n, f_values);
title('Plot of function f = @(n) (0.9.*n.*((n>=0) - (n >= 20)))');
xlabel('n');
ylabel('f(n)');
grid on;

%% 5

clc;
% clear all;
n = -10:10;


% Define function f as the difference between two unit steps
f = @(n) cos(0.12.*pi.*n).*(n>=0) ;

% Evaluate the function over the range n
f_values = f(n);

% Plot the function
stem(n, f_values);
title('Plot of function v = @(n) cos(0.12.*pi.*n).*(n>=0)');
xlabel('n');
ylabel('v(n)');
grid on;
