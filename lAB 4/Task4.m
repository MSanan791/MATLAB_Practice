clc;
clear all;

syms u v x y z;

% Define the equations
eq1 = 8*u^5 + 4*u^4 + 3*u^3 + 2*u^2 + 3*u;
eq2 = 6*v^5 + 2*v^4 + 18*v^3 + 4*v^2 + v;
eq3 = 4*x^5 + 43*x^4 + 54*x^3 + 4*x^2 + 34*x;
eq4 = y^5 + 9*y^4 + 3*y^3 + 6*y^2 + 3*y;
eq5 = 3*z^5 + 4*z^4 + 1*z^3 + 4*z^2 + 8*z;

% finding definite integrals

ans1 = diff(eq1, u, 0,1)