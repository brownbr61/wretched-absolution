clear;
clc;
clf;
close all;
%% 2
% Parameters to adjust the triangle wave
fs = 10000;
Amp = 0.5;
tStop = 3;
T = .01;

% Generate a triangle wave
y = triangle(fs,Amp,T,tStop);

M = 500;
L = 10;
g = hamming(M);
nfft = 512;

figure("Name", "Spec");
[S,F,T] = spectrogram(y,g,L,nfft);
waterplot(S,F,T);