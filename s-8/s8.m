clc
clear
close all

%% Demonstrate Chirp Functionality
chirpPlot = figure("visible","off");
f = [0 5];
t = [0 5];
fs = 150;
[t,x] = chirp(f,t,fs);
plotspec( x, 1/fs), colorbar, grid on %-- with negative frequencie
saveas(chirpPlot,"chirp","png");

%% 