clc;
clear all;

syms u v x y z;

% Define the equations
eq1 = 8*u^5 + 4*u^4 + 3*u^3 + 2*u^2 + 3*u;
eq2 = 6*v^5 + 2*v^4 + 18*v^3 + 4*v^2 + v;
eq3 = 4*x^5 + 43*x^4 + 54*x^3 + 4*x^2 + 34*x;
eq4 = y^5 + 9*y^4 + 3*y^3 + 6*y^2 + 3*y;
eq5 = 3*z^5 + 4*z^4 + 1*z^3 + 4*z^2 + 8*z;

% Find the derivatives for eq1
d1_eq1 = diff(eq1, u, 1);
d2_eq1 = diff(eq1, u, 2);
d3_eq1 = diff(eq1, u, 3);
d4_eq1 = diff(eq1, u, 4);
d5_eq1 = diff(eq1, u, 5);

% Display the derivatives for eq1
disp('Derivatives of eq1:');
disp(d1_eq1);
disp(d2_eq1);
disp(d3_eq1);
disp(d4_eq1);
disp(d5_eq1);

% Find the derivatives for eq2
d1_eq2 = diff(eq2, v, 1);
d2_eq2 = diff(eq2, v, 2);
d3_eq2 = diff(eq2, v, 3);
d4_eq2 = diff(eq2, v, 4);
d5_eq2 = diff(eq2, v, 5);

% Display the derivatives for eq2
disp('Derivatives of eq2:');
disp(d1_eq2);
disp(d2_eq2);
disp(d3_eq2);
disp(d4_eq2);
disp(d5_eq2);

% Find the derivatives for eq3
d1_eq3 = diff(eq3, x, 1);
d2_eq3 = diff(eq3, x, 2);
d3_eq3 = diff(eq3, x, 3);
d4_eq3 = diff(eq3, x, 4);
d5_eq3 = diff(eq3, x, 5);

% Display the derivatives for eq3
disp('Derivatives of eq3:');
disp(d1_eq3);
disp(d2_eq3);
disp(d3_eq3);
disp(d4_eq3);
disp(d5_eq3);

% Find the derivatives for eq4
d1_eq4 = diff(eq4, y, 1);
d2_eq4 = diff(eq4, y, 2);
d3_eq4 = diff(eq4, y, 3);
d4_eq4 = diff(eq4, y, 4);
d5_eq4 = diff(eq4, y, 5);

% Display the derivatives for eq4
disp('Derivatives of eq4:');
disp(d1_eq4);
disp(d2_eq4);
disp(d3_eq4);
disp(d4_eq4);
disp(d5_eq4);

% Find the derivatives for eq5
d1_eq5 = diff(eq5, z, 1);
d2_eq5 = diff(eq5, z, 2);
d3_eq5 = diff(eq5, z, 3);
d4_eq5 = diff(eq5, z, 4);
d5_eq5 = diff(eq5, z, 5);

% Display the derivatives for eq5
disp('Derivatives of eq5:');
disp(d1_eq5);
disp(d2_eq5);
disp(d3_eq5);
disp(d4_eq5);
disp(d5_eq5);
