function filter = gauss(sigma,n)
%GAUSS ��Ϊmatlab�Ծ������������Ż�����˲���Ҫ��forѭ��
filter = 1-(n+1)/2:n-(n+1)/2;
filter= exp(-filter.^2/(2*sigma^2));
filter= filter/sum(filter);% ��һ��
end

