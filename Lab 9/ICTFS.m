function [x] = ICTFS(ak, T)
    syms t
    x = 0;  % Initialize x to zero
    for k = -10:10
        x = x + (ak(k + 11) * exp(1j * k * 2 * pi * t / T));
    end
end
