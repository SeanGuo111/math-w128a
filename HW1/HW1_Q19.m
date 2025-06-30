pb = @(p) p - (p^3-21)/(3*p^2);
pd = @(p) sqrt(21/p);
pbn = 1
pdn = 1
for i = 1:10
    pbn = pb(pbn)
end

for i = 1:10
    pdn = pd(pdn)
end