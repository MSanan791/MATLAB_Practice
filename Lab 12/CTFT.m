function [X] = CTFT(x)
    %CTFT Summary of this function goes here
    %   Detailed explanation goes here
    syms w t;
    X = int(x*exp(-1i*w*t), t, -inf, inf)
    
end