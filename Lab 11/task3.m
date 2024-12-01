clc;
clear all;

x = [1 2 3 1 3]
y = [3 4 3 3 2]

xy = x.*y

N = length(x)
syms w T
Dx = DTFT(x, N)
qx = subs(Dx,w,T)
Dy = DTFT(y, N)
qy = subs(Dy,w,w-T)
Dxy = qx * qy
k = int(Dxy,T,0,2*pi)

X = IDTFT(k, length(xy))

subplot(3,1,1)
stem(xy)

subplot(3,1,2)
stem(X)