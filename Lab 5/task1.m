clc;
clear all;

syms u;

n = -5:5;
n2 = -4:4;

impulse = (n==0);
step = (n2>=0);

lx = length(impulse);
lh = length(step);

ly = lx+lh-1;

y = zeros (1,ly);

for i = 1:ly
    for j = 1:lx
        if ((i-j + 1) > 0 ) && ((i-j) < lh)
            y(i) = y(i) + impulse(j)*step(i-j+1);
        end
    end
end

y2 = conv ( impulse, step);
stem(0:ly-1, y, 'r');
hold on;
stem(n, impulse, 'g')
hold off;
disp("Y (manual)")
display('y')
disp(y2)



