h = 0.1;
t_series = 1:h:2;
w = zeros(size(t_series));
f = @(t, y) 2/t*y + t^2*exp(t);
for i = 1:10
    w(i+1) = w(i) + h*f(t_series(i), w(i));
end
w
