clc;
clear all;


n = -5:5;
n2 = -4:4;

impulse = (n>=0);
step = (n2>=0);

lx = length(impulse);
lh = length(step);

ly = lx+lh-1;

y = zeros(1,ly);

for i = 1:ly
    for j = 1:lx
        if ((i-j + 1) > 0 ) && ((i-j) < lh)
            y(i) = y(i) + impulse(j)*step(i-j+1);
        end
    end
end

inty = min(n)+min(n2):max(n)+max(n2);

y2 = conv ( impulse, step);

subplot(3,1,1);
stem(inty, y, 'r');
subplot(3,1,2);
stem(n, impulse, 'g');
subplot(3,1,3);
stem(inty, y2, 'y');



