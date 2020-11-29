function img=gaussConv(image, sigma, n)
% gaussConv
    filter = gauss2d(sigma,n);
    img = conv2(image,filter,'valid');
end