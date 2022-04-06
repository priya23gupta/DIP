% Assignment 7
% Task - Read a color image and perform Contrast Manipulation on it.

% reading orignal image
org = imread('img1.png');
subplot(221);
imshow(org);title('Org Image');


% original to grayscale
% gr1 = rgb2gray(org);
% imshow(gr1);
% pause(3);
gr1 = (org(:,:,1)/3 + org(:,:,2)/3 + org(:,:,3)/3);
subplot(222);
imshow(gr1);title('Gray Image');

% Increase contrast
gr2 = gr1*2;
subplot(223);
imshow(gr2);title('Increase contrast Image');

% Decrease contrast
gr3 = gr1/2;
subplot(224);
imshow(gr3);title('Decrease contrast Image');