function filter = gauss2d(sigma,n)
%GAUSS2D
filter = gauss(sigma,n);
filter = filter'*filter;
end

