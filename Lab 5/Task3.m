clc
clear all
close all

n1 = -4:4;
n2 = -5:5;
u = n1>=0;
x = (0.5).^n1.*u;
h = n2>=0;

lx = length(x);
lh = length(h);
ly = lx+lh-1;

y = zeros(1,ly);
int_out = min(n1)+min(n2):max(n1)+max(n2);

for n = 1:ly
    for k = 1:lx
        if (n-k+1)>0 && (n-k+1)<=lh
            y(n) = y(n) + x(k)*h(n-k+1);
        end
    end
end

y2 = conv(x,h);

subplot(4,1,1);
stem(n1,x);
title("x[n]");
subplot(4,1,2);
stem(n2,h);
title("h[n]");
subplot(4,1,3);
stem(int_out,y);
title("Manual y[n]");
subplot(4,1,4);
stem(int_out,y2);
title("Conv y[n]");