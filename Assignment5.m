% Assignment5
% Task - Read a color image and perform bitplane slicing on it.

% read an image
org = imread('img1.png');

% converting color to grayscale 
a = rgb2gray(org);

% Read grayscale image size
[m,n] = size(a);

% convert the image class from "uint8" to double
b = double(a);

% convert each pixel into binary using matlab command "de2bi"
c = de2bi(b);

% calling the LSB Bit of each pixel 
c1 = c(:,1);
% Converting 1d to 2d matrix.
r1 = reshape(c1,m,n);

% similarly calling every bit and converting into an arry of size m*n as
% was of org image
% 2nd Bit plane
c2 = c(:,2);
r2 = reshape(c2,m,n);

% 3rd Bit Plane
c3 = c(:,3);
r3 = reshape(c3,m,n);

% 4th Bit Plane
c4 = c(:,4);
r4 = reshape(c4,m,n);

% 5th Bit Plane
c5 = c(:,5);
r5 = reshape(c5,m,n);

% 6th Bit Plane
c6 = c(:,6);
r6 = reshape(c6,m,n);

% 7th Bit Plane
c7 = c(:,7);
r7 = reshape(c7,m,n);

% 8th Bit Plane
c8 = c(:,8);
r8 = reshape(c8,m,n);

% Displaying all the Bit Planes
subplot(241);
imshow(r1);title('LSB Bit Plane');
subplot(242);
imshow(r2);title('2nd Bit Plane');
subplot(243);
imshow(r3);title('3rd Bit Plane');
subplot(244);
imshow(r4);title('4th Bit Plane');
subplot(245);
imshow(r5);title('5th Bit Plane');
subplot(246);
imshow(r6);title('6th Bit Plane');
subplot(247);
imshow(r7);title('7th Bit Plane');
subplot(248);
imshow(r8);title('MSB Bit Plane');