f = @(x,y) sqrt(x*y + y^2);
c1 = @(x) x/3+2/3;
d1 = @(x) 3*x-2;
c2 = @(x) x/3+2/3;
d2 = @(x) 6-x;
a = simpsondouble(f,c1,d1,1,2,6,6)+simpsondouble(f,c2,d2,2,4,6,6)

