clc
clear all
t=0:0.2:2*pi
title('Line Plot of Sine and Cosine Between -2\pi and 2\pi')
subplot(2,1,1)

plot(t, sin(t), "r ", t, sin(2*t), "y ." )

t=0:0.2:2*pi;
subplot(2,1,2)
plot (t, sin(t), t, sin(t),'r.')


