clear

% Configure
im_file = './images/cat.jpg';
N = 3;
sigma_d = 2;
sigma_r = 30;

% Add search path
addpath('../matlab');

% Read image
im = double(imread(im_file)) / 255;

% Add some noise
im = im + 0.1 * randn(size(im));

% Apply the filter
filtered_im = bilateral_filter(im, N, sigma_d, sigma_r);

% Display
imshowpair(im, filtered_im, 'montage')
