fa = @(x, y) x*y^2;
ca = @(x) 1.2;
da = @(x) 1.4;
simpsondouble(fa, ca, da, 2.1, 2.5, 4, 4)
fb = @(x, y) exp(y-x);
cb = @(x) 0;
db = @(x) 0.5;
simpsondouble(fb, cb, db, 0, 0.5, 4, 4)
