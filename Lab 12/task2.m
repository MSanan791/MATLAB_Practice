clear vars;
clc;

syms t w;



y = exp(-(t)^2);
dy = diff(y,t);
Cy = 1j*w*CTFT(y);
ICy = ICTFT(Cy)

subplot(2,1,1);
fplot(dyx);
title('Left Hand Side CTFT(dy/dt)');
subplot(2,1,2);


fplot(ICy);
title('Right Hand Side X(jw)');

