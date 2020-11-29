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
img = uint8(img);
imshow(img) % show image

filter = fspecial('log',3,1.2);
img2 = conv2(img2,filter,'valid');
img2 = uint8(img2);
img2 = img2 * 100;
imshow(img2);


sta = fclose(fid);