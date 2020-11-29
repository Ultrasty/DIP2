fid = fopen('p2d2','r');
[A,count]=fread(fid);
img = zeros(600,900);
for i = 1:600
    for j =1:900
        img(i,j) = A(600*(j-1)+i);
    end
end

[img,message] = maxFilter(img,7);
if isequal(message,'ÇëÊäÈëÆæÊı')
    message
else
img = uint8(img);
imshow(img) % show image
imwrite(img,'pic2_2_7.jpg')
end



sta = fclose(fid);