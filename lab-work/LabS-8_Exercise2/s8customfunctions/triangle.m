function y = triangle(fs,amp,T,tstop)
%fs - Sample rate
%amp - Amplitude of wave
%T - Period of wave
%tstop - Duration of signal
    x = 0:(1/fs):tstop;

    % Formula for a triangle wave
    y=((4*amp)/T)*(abs(mod(x-(.25*T),T)-0.5*T))-amp;
end