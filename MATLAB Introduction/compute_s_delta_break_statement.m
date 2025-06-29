function sn = compute_s_delta_break_statement(delta)
% Compute sn = 1/1 + 1/2 + ... + 1/n, stopping when a term is smaller than
% delta.
    sn = 0;
    i = 0;
    while 1
        i = i + 1;
        term = 1/i;
        if term < delta
            break
        end
        sn = sn + term;
    end
end