g1 = @(x) (2-exp(x)+x^2)/3;
g2 = @(x) 5/x^2 + 2;
g3 = @(x) 0.5*(sin(x)+cos(x));

p = 0.5;
for i = 1:14
    p = g1(p);
end

p = (0.5+sqrt(5));
for i = 1:97
    p = g2(p);
end

p = 2;
for i = 1:18
    p = g3(p)
end