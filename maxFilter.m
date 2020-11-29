function [image,message] = maxFilter(img,n)
    [x,y]=size(img);
    image = zeros(x,y);
    if (mod(n,2) == 0)
        message = '«Î ‰»Î∆Ê ˝';
    else
        message = 'ok';
        for i = 1+(n-1)/2:x-(n-1)/2
            for j = 1+(n-1)/2:y-(n-1)/2
                image(i,j) = max(max(img(i-(n-1)/2:i+(n-1)/2,j-(n-1)/2:j+(n-1)/2)));
            end
        end
    end
end

