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

% Generate a triangle wave
y = triangle(fs,Amp,T,tStop);

% Allocate the space for the data set to show only 3 periods of the wave
yprime=zeros(1,(.03/(1/fs)));

% Grab the samples that we want
for i = 0:(.03/(1/fs))
    yprime(i+1) = y(i+1);
end

figure("Name","triangle wave");
stem(0:1/fs:.03,yprime);
xlabel("Sample");
ylabel("Amplitude");
title("3 Periods Of Triangle Wave");
saveas(gcf,"3periodtriangle.jpg");

%% c
figure("Name","Triangle Wave Spectrogram");
spectrogram(y,'power','yaxis');
saveas(gcf, "spectrogram_p_2_1_a.jpg");

norm_fundamental_freq = (((1/T)*2*pi)/fs)/pi;
disp("Normalized fundamental frequency:");
disp(norm_fundamental_freq);