clc
clear
close all

%% Chirp Beyond Nyquist Rate
f = [1000 11000];
t = [0 4];
fs = [4000];
[t,x] = generateChirp(f,t,fs);

%% Plot the Chirp
plotspec( x, 1/fs), colorbar, grid on %-- with negative frequencies
