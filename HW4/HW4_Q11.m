fp = @(x) (1/sqrt(2*pi))*exp(-x^2/2);
f = @(x) composite_simpson(fp,0,x,100) - 0.45;

pn = 0.5;
tolerance = 10^-6;
while 1
    pn1 = pn - (f(pn)/fp(pn));
    if (abs(pn1 - pn) < tolerance)
        pn=pn1
        break
    end
    pn = pn1
end