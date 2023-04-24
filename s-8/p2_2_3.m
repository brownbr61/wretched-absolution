clear;
clc;
clf;
close all;
%% a & b
% Parameters for 10ms triangle wave
fs = 10000;
Amp = 0.5;
tStop = 3;
T = .01;

% Generate a triangle wave
y = triangle(fs,Amp,T,tStop);

figure("Name","10ms Triangle Wave");
spectrogram(y,'power','yaxis');
saveas(gcf, "spectrogram_p_2_3_a.jpg");

% Parameters for 20ms triangle wave
T = .02;

y = triangle(fs,Amp,T,tStop);

figure("Name","20ms Triangle Wave");
spectrogram(y,'power','yaxis');
saveas(gcf, "spectrogram_p_2_3_b.jpg");

% Parameters for 4ms triangle wave
T = .004;

y = triangle(fs,Amp,T,tStop);

figure("Name","4ms Triangle Wave");
spectrogram(y,'power','yaxis');
saveas(gcf, "spectrogram_p_2_3_d.jpg");