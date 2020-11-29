function filter = gauss2d(sigma,n)
%GAUSS2D
filter = zeros(n);
% [X,Y] = meshgrid(1-(n+1)/2:n-(n+1)/2);
% filter =arrayfun(@(X,Y) exp(-(X^2+Y^2)/(2*sigma^2))/(2*pi*sigma^2),X,Y);

for i=1 : n
    for j = 1:n
    	filter(i,j) = exp(-((i-(n+1)/2)^2+(j-(n+1)/2)^2)/(2*sigma^2))/(2*pi*sigma^2);
    end
end
end

