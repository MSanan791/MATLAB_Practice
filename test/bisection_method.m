clc;
clear all;
close all;


f=@(x) exp(-x).*(3.25*sin(x)-0.5*cos(x));

a = 3;
b =4;
n=100;
tol = exp(-6);
A = [1 2 3 ; 4 5 6; 7 8 9];

for i=1:1:100
c = (a+b)/2;
table(i,:)=[a , b, c , f(a), f(b), f(c)];
if (abs(f(c))<tol)
    break;
end
    if ((f(a)*f(c))>0)
        a = c;
   
    else
        b = c;
    end

end

display(table);



x= [-5:8];
y = f(x);

plot(x,y,'y');
% plot(table, 'r')
