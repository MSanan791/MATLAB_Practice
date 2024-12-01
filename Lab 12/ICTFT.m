function [x] = ICTFT(X)
    %ICTFT Summary of this function goes here
    %   Detailed explanation goes here
    syms w t;
    T = 2*pi;

    x = (1/T)*int(X*exp(1i*w*t),w,-inf,inf)
end