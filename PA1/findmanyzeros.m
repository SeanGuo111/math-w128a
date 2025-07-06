function p = findmanyzeros(f, a, b, n, tol)
diff = (b-a)/n;
points = a:diff:b;
p = [];
for k = 1:n
    left_bound = points(k);
    right_bound = points(k+1);
    if f(right_bound)*f(left_bound) < 0
        p(end+1) = findzero(f, left_bound, right_bound, tol)
    end
end