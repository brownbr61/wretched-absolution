clear;
clc;
clf;
close all;
%% a & b
% Parameters to adjust the triangle wave
fs = 10000;
Amp = 0.5;
tStop = 3;
T = .01;
x = 0:(1/fs):tStop;

%Formula for a triangle wave
y=((4*Amp)/T)*(abs(mod(x-(.25*T),T)-0.5*T))-Amp;

yprime=zeros(1,(.03/(1/fs)));

for i = 0:(.03/(1/fs))
    yprime(i+1) = y(i+1);
end

figure("Name","triangle wave");
stem(0:1/fs:.03,yprime);

%% c
M = 100;
L = 10;
g = bartlett(M);
nfft = 1024;

figure("Name", "Spec");
[S,F,T] = spectrogram(y,'yaxis');
waterplot(S,F,T);

function waterplot(s,f,t)
% Waterfall plot of spectrogram
    waterfall(f,t,abs(s)'.^2)
    set(gca,XDir="reverse",View=[30 50])
    xlabel("Frequency (Hz)")
    ylabel("Time (s)")
end