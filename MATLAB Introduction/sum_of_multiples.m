function s = sum_of_multiples(n)
% Find the sum of all the multiples of 3 or 5 below n

    s = 0;
    for i = 1:n-1
        if (mod(i, 3) == 0 || mod(i, 5) == 0)
            s = s + i;
        end
    end
end