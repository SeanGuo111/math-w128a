f = @(x) exp(x)./(1+x.^2);
[x2, c2] = laguerrequad(2)
i2 = 2*dot(f(x2), c2)
[x3, c3] = laguerrequad(3)
i3 = 2*dot(f(x3), c3)
