function filter = gauss(sigma,n)
%GAUSS
filter = zeros(1,n);
% filter = 1-(n+1)/2:n-(n+1)/2;
% filter = arrayfun(@(x) exp(-x^2/(2*sigma^2))/(sigma*sqrt(2*pi)),filter);

for i=1 : n
    filter(i) = exp(-(i-(n+1)/2)^2/(2*sigma^2))/(sigma*sqrt(2*pi));
end
end

