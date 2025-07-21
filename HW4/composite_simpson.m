function integral = composite_simpson(f, a, b, n)
    integral = 0;
    h = (b-a)/n;
    xs = a:h:b;
    for i = 1:n+1
        xi = xs(i);
        if i == 1 || i == n+1
            integral = integral + f(xi);
        elseif mod(i, 2) == 0
            integral = integral + 4 * f(xi);
        else
            integral = integral + 2 * f(xi);
        end
    end
    integral = integral*h/3;
end