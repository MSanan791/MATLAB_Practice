function [x] = IDTFT(X,len)
    %IDTFT Summary of this function goes here
    %   Detailed explanation goes here
    x = zeros(1,len)
    syms w
    for k = 1:len

    x(k) = (1/2*pi) * int(X * exp(1i*w*k), w,0,2*pi)
    end
end