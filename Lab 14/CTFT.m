function [X, w] = CTFT(x, t)
    % CTFT: Computes the Continuous-Time Fourier Transform of a numerical signal
    % Inputs:
    %   x - Signal (numerical array)
    %   t - Time vector (numerical array)
    % Outputs:
    %   X - Fourier Transform (complex array)
    %   w - Frequency vector (rad/s)

    dt = t(2) - t(1);         % Time step
    N = length(t);            % Number of time points
    fs = 1/dt;                % Sampling frequency
    w = linspace(-pi*fs, pi*fs, N); % Frequency vector in rad/s

    % Compute CTFT using numerical summation
    X = dt * sum(x .* exp(-1i * w' * t), 2); % Matrix multiplication for integration
end
