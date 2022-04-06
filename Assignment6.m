% Assignment6
% Task - Read a color image and perform Histogram equalisation on it.

% read an image
a=imread('img1.png');

% Convert to grayscale incase it is color
a = rgb2gray(a);
b=size(a);
a=double(a);

% Loop for Getting the Histogram of the image
hist1 = zeros(1,256);
for i=1:b(1)
    for j=1:b(2)
        for k=0:255
            if a(i,j)==k
                hist1(k+1)=hist1(k+1)+1;
            end
        end
    end
end

% Generating PDF out of histogram by diving by total no. of pixels
pdf=(1/(b(1)*b(2)))*hist1;

% Generating CDF out of PDF
cdf = zeros(1,256);
cdf(1)=pdf(1);
for i=2:256
    
    cdf(i)=cdf(i-1)+pdf(i);
end
cdf = round(255*cdf);

ep = zeros(b);
for i=1:b(1)
    for j=1:b(2)
        t=(a(i,j)+1);
        ep(i,j)=cdf(t);
    end                                             
end

% Loop for Getting the Histogram of the image
hist2 = zeros(1,256);
for i=1:b(1)
    for j=1:b(2)
        for k=0:255
            if ep(i,j)==k
                hist2(k+1)=hist2(k+1)+1;
            end
        end
    end
end

subplot(2,2,1);
imshow(uint8(a));title('Org Image');
subplot(2,2,3);
imshow(uint8(ep));title('Equalized Image');
subplot(2,2,2);
stem(hist1);title('Org Image Histogram');
subplot(2,2,4);
stem(hist2);title('Equalized Image Histogram');