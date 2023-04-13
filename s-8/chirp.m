function [t,psi] = chirp(f,t,fs)
  % f = [f_0, f_end]
  % t = [t_0, t_end]
  % fs = sample frequency
  t = t(1):1/fs:t(end);
  mu = (f(1) - f(end))/(t(end)-t(1));
  phi = 2*pi*rand;

  psi = real(exp(1i*(pi*mu*t.*t + 2*pi*f(1)*t + phi)));