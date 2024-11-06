clc;
clear all;
syms t;
x = sin(pi * t);
y = cos(pi * t);
T = 2 * pi;

% Call the CTFS function
ak = CTFS(x, T);
bk = CTFS(y, T);
z = x * y;
zk = CTFS(z, T);

LHS = zk;
RHS = conv(ak, bk);

% Plotting the results
subplot(3, 4, 1);
stem(-10:10, abs(ak));
title('Magnitude of CTFS ak');

subplot(3, 4, 2);
stem(-10:10, angle(ak));
title('Angle of CTFS ak')

subplot(3,4, 3);
stem(-10:10, abs(bk));
title('Magnitude of CTFS bk');

subplot(3, 4, 4);
stem(-10:10, angle(bk));
title('Angle of CTFS bk')

r_x =ICTFS(ak,T)
subplot(3,4,5)
fplot(r_x)
title('ICTFS of ak')

subplot(3, 4, 5);
stem(-10:10, abs(LHS));
title('Magnitude of CTFS Zk');

subplot(3, 4, 6);
stem(-10:10, angle(LHS));
title('Angle of CTFS zk ')

subplot(3, 4, 7);
stem(-20:20, abs(RHS));
title('Magnitude of CTFS Zk CONV');

subplot(3, 4, 8);
stem(-20:20, angle(RHS));
title('Angle of CTFS zk CONV')


% Differetiation

xt = diff(x, t)

axt = CTFS(xt, T)

w = (2*pi)/ T

for k = -10:10
    yt = 1j* k* w *ak
end


subplot(3, 4, 9);
stem(-10:10, abs(axt));
title('Differentiation RHS');

subplot(3, 4, 10);
stem(-10:10, abs(yt));
title('Differentiation LHS')

