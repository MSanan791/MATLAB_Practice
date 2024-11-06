clc;
clear all;
    
syms u v x y z;

eq1 = 8*u^5 + 4*u^4 + 3*u^3 + 2*u^2 + 3*u;
eq2 = 6*v^5 + 2*v^4 + 18*v^3 + 4*v^2 + v;
eq3 = 4*x^5 + 43*x^4 + 54*x^3 + 4*x^2 + 34*x;
eq4 = y^5 + 9*y^4 + 3*y^3 + 6*y^2 + 3*y;
eq5 = 3*z^5 + 4*z^4 + 1*z^3 + 4*z^2 + 8*z;

sol_eq1 = solve(eq1, u);
sol_eq1 = vpa(sol_eq1, 5);

sol_eq2 = solve(eq2, v);
sol_eq2 = vpa(sol_eq2, 5);

sol_eq3 = solve(eq3, x);
sol_eq3 = vpa(sol_eq3, 5);

sol_eq4 = solve(eq4, y);
sol_eq4 = vpa(sol_eq4, 5);

sol_eq5 = solve(eq5, z);
sol_eq5 = vpa(sol_eq5, 5);

disp("Solution for U:");
disp(sol_eq1)
disp("Solution for V:");
disp(sol_eq2)
disp("Solution for x:");
disp(sol_eq3)
disp("Solution for y:");
disp(sol_eq4)
disp("Solution for z:");
disp(sol_eq5)