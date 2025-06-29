function sn = compute_s(n)
% Compute sn = 1/1 + 1/2 + ... + 1/n
    sn = 0;
    for i = 1:n
        sn = sn + (1/i);
    end
end