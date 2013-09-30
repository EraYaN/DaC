function derivative = derive(x, y)
derivative = zeros(length(x), 1);
for i=1:length(x)-1
    derivative(i) = (y(i+1)-y(i))/x(i);
end
end