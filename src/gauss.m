function filter = gauss(sigma,n)
%GAUSS 因为matlab对矩阵运算做了优化，因此不需要用for循环
filter = 1-(n+1)/2:n-(n+1)/2;
filter= exp(-filter.^2/(2*sigma^2));
filter= filter/sum(filter);% 归一化
end

