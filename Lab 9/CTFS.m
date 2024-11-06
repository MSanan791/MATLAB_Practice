function [ak] = CTFS(x, T)
    syms t
    ak = zeros(1, 21);  % Preallocate for efficiency
    for k = -10:10
        ak(k+11) = (1/T)*(int(x * exp(1j * k * 2 * pi * t / T), t, 0, T));
    end
end

