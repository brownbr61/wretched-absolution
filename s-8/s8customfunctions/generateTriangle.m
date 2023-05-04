function [t,x] = generateTriangle(f,t,fs)
% f = fundamental period
% t = [t_0, t_end]
% fs = sample frequency
    t = t(1):1/fs:t(end);
    q = rem(t,1/f);
    x = 10*(abs(q - (0.5/f))-0.25/f);
end