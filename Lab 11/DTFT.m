function [a] = DTFT(x,len)
    %DTFT Summary of this function goes here
    %   Detailed explanation goes here
    syms w
    a = 0

    for k = 1:len
      a = a + (x(k)*exp(-1i.*w.*k));
    end
    
end

