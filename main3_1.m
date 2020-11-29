img = imread('pic1_2.jpg');

Laplacian = [0 -1 0;-1 5 -1;0 -1 0];
img = conv2(img,Laplacian,'valid');
img =uint8(img);
imshow(img);
imwrite(img,'pic3_1.jpg');