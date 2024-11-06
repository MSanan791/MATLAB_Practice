clc;
clear all;

syms x1 y1 x2 y2 x3 y3 x4 y4 x5 y5;

% Set 1
eq1_1 = 2*x1^3 + 3*x1^2*y1 + y1^4 == 0;
eq1_2 = x1^2 + 9*y1 + 7*y1^3 == 0;
[Rx1, Ry1] = solve([eq1_1, eq1_2], [x1, y1]);
disp('Solutions for Set 1:');
disp(vpa(Rx1, 3));
disp(vpa(Ry1, 3));

% Set 2
eq2_1 = 4*x2^4 - 5*x2*y2^2 + 6*y2^3 == 0;
eq2_2 = 3*x2^3 + 2*x2^2*y2 - y2^4 == 0;
[Rx2, Ry2] = solve([eq2_1, eq2_2], [x2, y2]);
disp('Solutions for Set 2:');
disp(vpa(Rx2, 3));
disp(vpa(Ry2, 3));

% Set 3
eq3_1 = x3^3 + 4*x3*y3^2 + 4*y3^3 == 0;
eq3_2 = 2*x3^4 - 3*x3^2*y3 + y3^3 == 0;
[Rx3, Ry3] = solve([eq3_1, eq3_2], [x3, y3]);
disp('Solutions for Set 3:');
disp(vpa(Rx3, 3));
disp(vpa(Ry3, 3));

% Set 4
eq4_1 = 5*x4^2 + 2*x4^3*y4 - 3*y4^4 == 0;
eq4_2 = x4^3 - 6*x4*y4^2 + 8*y4^3 == 0;
[Rx4, Ry4] = solve([eq4_1, eq4_2], [x4, y4]);
disp('Solutions for Set 4:');
disp(vpa(Rx4, 3));
disp(vpa(Ry4, 3));

% Set 5
eq5_1 = 3*x5^4 + 7*x5^2*y5 + 2*y5^3 == 0;
eq5_2 = 4*x5^3 - x5^2*y5 + 5*y5^4 == 0;
[Rx5, Ry5] = solve([eq5_1, eq5_2], [x5, y5]);
disp('Solutions for Set 5:');
disp(vpa(Rx5, 3));
disp(vpa(Ry5, 3));
