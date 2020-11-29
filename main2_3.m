fid = fopen('p2d3','r');
[A,count]=fread(fid);
img = zeros(600,900);
for i = 1:600
    for j =1:900
        img(i,j) = A(600*(j-1)+i);
    end
end

ordfilt2
img = uint8(img);
imshow(img) % show image



sta = fclose(fid);