
f = @(x) 0.5 + 0.25*x.^2 - x.*sin(x) - 0.5*cos(2*x);
fp = @(x) 0.5*x - sin(x) - x.*cos(x) + sin(2*x);
f = @(x) 1 - 4.*x.*cos(x) + 2*x.^2 + cos(2*x);
fp = @(x) -4*cos(x) + 4*x.*sin(x) + 4*x - 2*sin(2*x);
fpp = @(x) 8*sin(x) + 4*x*cos(x) - 4*cos(2*x) + 4;


x=0:0.001:10;
plot(x,f(x),x,fp(x));
legend("f(x)","f'(x)");
grid on;

p = 1.5
while 1
    new_p = p - f(p)/fp(p);
    new_p = p - (f(p)*fp(p))/((fp(p))^2-f(p)*fpp(p));
    if abs(new_p - p) < (10^-5)
        p = new_p
        break;
    end
    p = new_p
end
a = fp(p)