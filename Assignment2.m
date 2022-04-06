% Assignment2
% Task - Read a color image,convert the color image to gray scale and dispaly both images.
% Make some part of that gray scale image total black and display it.
% Now subtract this to gray image and display output image.

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
imshow(gr1);title('G1 Gray Image');

% making center of image black

gr2 = gr1;
s = size(gr2);

for i = int16(3*s(1)/10):int16(7*s(1)/10)
    for j = int16(3*s(2)/10):int16(7*s(2)/10)
        gr2(i,j) = 0;        
    end
end

subplot(223);
imshow(gr2);title('G2 Gray Image with black center');

% gr1 - gr2
gr3 = gr1 - gr2;
subplot(224);
imshow(gr3);title('G1 - G2');
