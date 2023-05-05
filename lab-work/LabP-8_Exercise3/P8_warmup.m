close all;clear;clc
%% Inputs
xmin = 0;
xmax = 100;
%x = load('lighthouse.mat')
x = load('/Users/u1303306/MyMatlab/spfirst/lenna.mat');
%%
mu = 255.999/(xmax-xmin);
b = -(255.999*xmin)/(xmax-xmin);
xs = floor(mu*x.xx + b);

whos xs
%show_img(img, figno, scaled, map)
A = show_img(xs,1,1,colormap(gray(256)));
pause(2)
B = show_img(xs,2,1,colormap(gray(140)));


xs200 = xs(200,:);
plot(xs200)

%% *2 --- WARMUP* 
%% 2.1 Synthesize a test image
% (a)
xpix = ones(256).*cos(2*pi*(0:255)/16);
show_img(xpix,3,1)

%%
% 
% The resulting grayscale pattern will be vertical bands. The bands' width 
% can be calculated by finding the period of the cosine function used to 
% generate the matrix. In this case, the period is given by 2pi(0:255)/16. 
% The period of the cosine function is 2pi, so the width of the bands will 
% be 2pi divided by (2*pi/16), which equals 16 pixels. Thus, the bands are 
% 16 pixels wide.
% 
% (b) In the xpix matrix, the data value that represents white corresponds 
% to the highest value (1), while the lowest value (-1) represents black. 
% In the cosine function, these values occur at the peaks and troughs of 
% the waveform, respectively.
% 
% (c) To produce an image with horizontal bands, you can generate a similar
% matrix but transpose the dimensions. For a 400x400 image with 5 
% horizontal black bands separated by white bands, you can use the 
% following code:\

ypix = cos(2*pi*(0:399)/80)'*ones(1,400);
show_img(ypix,4,1)

%% 
% 
% In this code, we use a cosine function with a period of 80 (400/5) to 
% produce 5 horizontal bands. The transpose operator (') ensures that the 
% bands are horizontal instead of vertical. The ones(1,400) matrix is used 
% to create identical rows for the resulting matrix, which will form the 
% horizontal bands in the image.
%% 2.2 Printing Multiple Images on One Page
% To include in MATLAB html report, we load the produced image by an
% external application (we used Adobe Photoshop) into the MATLAB code

filename = 'vert_horiz.tif';
vert_horiz = imread(filename);
imshow(vert_horiz)
truesize


%% 2.3 Sampling of Images
% (a) To load the lighthouse.mat file, down-sample the image by a factor of
% 2, and display both the original and down-sampled images, you can use the
% following MATLAB code:


% Load the lighthouse image
w = load('/Users/u1303306/MyMatlab/spfirst/lighthouse.mat');
ww = w.xx; 
% Display the original image
figure;
b = show_img(ww, 5, 1);
title('Original Image');

% Down-sample the image by a factor of 2
p = 2;
wp = ww(1:p:end, 1:p:end);

% Display the down-sampled image
wp_resized = imresize(wp, size(ww));

a= show_img(wp_resized, 6, 1);
title('Down-sampled Image by a factor of 2');

% Get the size of the original and down-sampled images
original_size = size(ww);
downsampled_size = size(wp);

fprintf('Original image size: %d x %d\n', original_size(1), original_size(2));
fprintf('Down-sampled image size: %d x %d\n', downsampled_size(1), downsampled_size(2));

