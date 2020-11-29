function filter = gauss(sigma,n)
%GAUSS
filter = zeros(1,n);
Normalization = 1/(exp(-(1-(n+1)/2)^2/(2*sigma^2))/(sigma*sqrt(2*pi)));
count = 0;
for i=1 : n
    filter(i) = exp(-(i-(n+1)/2)^2/(2*sigma^2))/(sigma*sqrt(2*pi))*Normalization;
    count = count + filter(i);
end

for i=1 : n
    filter(i) = filter(i)/count;% πÈ“ªªØ
end

end

