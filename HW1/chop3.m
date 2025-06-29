function chopped = chop3(x)
    exponent = 0;
    if x >= 1000
        while x >= 1000
            x = x / 10;
            exponent = exponent + 1;
        end
        chopped = fix(x) * (10^exponent);
    elseif x <= 100
        while x <= 100
            x = x * 10;
            exponent = exponent - 1;
        end
        chopped = fix(x) * (10^exponent);
    else
        chopped = fix(x);
    end
end