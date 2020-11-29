fid = fopen('p3','r');
[A,count]=fread(fid);
img = zeros(600,900);
for i = 1:600
    for j =1:900
        img(i,j) = A(600*(j-1)+i);
    end
end
img2 = img;

Laplacian = [-1 -1 -1;-1 8 -1;-1 -1 -1];
img = conv2(img,Laplacian,'valid');
img = uint8(img)*3;%为了让显示效果更清晰，这幅图的灰度值被乘以3
imshow(img) % show image
imwrite(img,'pic3_2_1.jpg')

filter = fspecial('log',3,0.27);
img2 = conv2(img2,filter,'valid');
img2 = uint8(img2);

imshow(img2);
imwrite(img2,'pic3_2_2.jpg')


sta = fclose(fid);