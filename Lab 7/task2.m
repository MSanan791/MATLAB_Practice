clc 
clear all
Fs = 44100
aud = audiorecorder(Fs, 8,  1)
info = audiodevinfo
l = 5
audiorecorder
recordblocking(aud,l)
mid = l/2
aud_data = getaudiodata(aud)
play(aud)
b = getaudiodata(aud)
audiowrite('audiotest.wav', aud_data, Fs)
[Y Fs] = audioread('audiotest.wav')


plot(Y)
figure
plot(Y(0:mid))
figure
plot(Y(mid:Fs))


