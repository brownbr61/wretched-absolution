clc
clear
close all

%% Demonstrate Chirp Functionality
chirpPlot = figure("visible","off");
f = [0 5];
t = [0 5];
fs = 150;
[t,x] = generateChirp(f,t,fs);
plotspec( x, 1/fs), colorbar, grid on %-- with negative frequencie
print("demo_chirp","-dpng",'-r600');

%% Demonstrate Triangle Wave Functionality
trianglePlot = figure("visible","off");
f = 5;
t = [0 1];
fs = 150;
[t,x] = generateTriangle(f,t,fs);
plotspec( x, 1/fs), colorbar, grid on %-- with negative frequencie
print("demo_triangle","-dpng",'-r600');

%% Fourier Series of a Triangle Wave
k = (0:7)*2 + 1; % Get odds
i = 1:length(k);
disp("The coefficients for k = [1,3, ..., 13, 15] are as follows:")
kcoeff = (-2./((pi^2).*(k.^2)));
disp([i;kcoeff])
disp("The ratios $k(i):k_1$ are as follows:")
rkcoeff = kcoeff./kcoeff(1);
disp([i;rkcoeff])