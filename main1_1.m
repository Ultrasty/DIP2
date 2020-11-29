fid = fopen('p1','r');
[A,count]=fread(fid);
img = zeros(600,900);
for i = 1:600
    for j =1:900
        img(i,j) = A(600*(j-1)+i);
    end
end
img = uint8(img);
imshow(img) % show image

C1 = fspecial('average', [3,3]); 
imgModified1=filter2(C1,img,'valid');
imgModified1=uint8(imgModified1);
imshow(imgModified1);
imwrite(imgModified1,'pic1_1_3.jpg');

img = double(img);
C1 = fspecial('average', [5,5]); 
imgModified1=conv2(img,C1,'valid');
imgModified1=uint8(imgModified1);
imshow(imgModified1)
imwrite(imgModified1,'pic1_1_5_conv.jpg');

sta = fclose(fid);