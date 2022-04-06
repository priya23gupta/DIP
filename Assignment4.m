% Assignment4
% Task - read a color image and display its reddish,greenisg and bluish image

% reading orignal image
org = imread('img1.png');
subplot(221);
imshow(org);title('Org Image');

r = org;
g = org;
b = org;

% R
r(:,:,2) = 0;
r(:,:,3) = 0;
subplot(222);
imshow(r);title('R');

% G
g(:,:,1) = 0;
g(:,:,3) = 0;
subplot(223);
imshow(g);title('G');

% B
b(:,:,1) = 0;
b(:,:,2) = 0;
subplot(224);
imshow(b);title('B');