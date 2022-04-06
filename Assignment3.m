% Assignment3
% Task - Create two images one with a white circle at center and another with a white rectangle at center and 
% performe all logical gate operations on both images and display the output images.

% creating image with rectangle in center
rec = zeros(1001);
s = size(rec);

for i = int16(3*s(1)/10):int16(7*s(1)/10)
    for j = int16(2*s(2)/10):int16(8*s(2)/10)
        rec(i,j) = 1;        
    end
end

subplot(241);
imshow(rec);title('Rec');

% creating image with circle in center
% define radius and center coordinates
r=250;x_c=0;y_c=0;

[y,x]=ndgrid(-500:500,-500:500);

cir = (x-x_c).^2+(y-y_c).^2 <= r^2;

subplot(242);
imshow(cir);title('Cir');

% AND 
and = rec & cir;
subplot(243);
imshow(and);title('Rec AND Cir');

% OR 
or = rec | cir;
subplot(244);
imshow(or);title('Rec OR Cir');

% XOR 
x_o_r =  xor(rec, cir);
subplot(245);
imshow(x_o_r);title('Rec XOR Cir');

% NAND 
nand = ~(rec & cir);
subplot(246);
imshow(nand);title('Rec NAND Cir');

% NOR 
nor = ~(rec | cir);
subplot(247);
imshow(nor);title('Rec NOR Cir');

% NXOR 
nx_o_r =  ~xor(rec, cir);
subplot(248);
imshow(nx_o_r);title('Rec NXOR Cir');