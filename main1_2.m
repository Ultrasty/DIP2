
sigma = 3;
n=20;
fid = fopen('p1','r');
[A,count]=fread(fid);


img = zeros(600,900);
for i = 1:600
    for j =1:900
        img(i,j) = A(600*(j-1)+i);
    end
end
img = uint8(img);
% use gaussConv
img = gaussConv(img,sigma,n);

% use imfilter
filterByMatlab = fspecial('gaussian',[n n],sigma);
img2 = imfilter(img,filterByMatlab,'conv');

img = uint8(img);
img2 = uint8(img2);
subplot(2,1,1)
imshow(img) % show image
subplot(2,1,2)
imshow(img2)
str = ['pic1_2','.jpg'];
imwrite(img,str)

sta = fclose(fid);
