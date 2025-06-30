function p = bisection_n(f, a, b, n)

for i = 1:n
    p = (a+b) / 2;
    if f(a)*f(p) > 0
        a = p;
    else
        b = p;
    end
end
