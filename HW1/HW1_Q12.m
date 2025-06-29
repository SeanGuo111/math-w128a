sum = 0
for i = 1:10
    term = 1/(i^2);
    sum = sum + term;
end
sum

suminc = 0;
for i = 1:10
    term = chop3(1/chop3(i^2));
    suminc = chop3(suminc + term);
end
suminc

sumdec = 0;
% bugged for d = 10 (?)
for i = 1:10
    d = 11-i;
    term = chop3(1/chop3(d^2));
    sumdec = chop3(sumdec + term);
end
sumdec

errorinc = abs(sum - suminc)/abs(sum)
errordec = abs(sum - sumdec)/abs(sum)